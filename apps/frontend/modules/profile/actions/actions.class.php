<?php

/**
 * profile actions.
 *
 * @package    FISHERY
 * @subpackage profile
 * @author     Your name here
 * @version    SVN: $Id: actions.class.php 23810 2009-11-12 11:07:44Z Kris.Wallsmith $
 */
class profileActions extends sfActions {

    public function executeCity(sfWebRequest $request) {
        $this->cities = Doctrine_Query::create()
                ->from('City c')
                ->where('c.name LIKE ?', $request->getParameter('q') . '%')
                ->leftJoin('c.Region')
                ->limit($request->getParameter('limit', 10))
                ->orderBy('c.weight desc, c.name desc')
                ->execute();
    }

    public function executeList(sfWebRequest $request) {
        $this->pager = htPagerLayout::create(Doctrine::getTable('sfGuardUser')
                                ->createQuery('f')
                                ->leftJoin('f.Profile')
                                ->orderBy('f.created_at ASC'), '@people?page={%page_number}', $request->getParameter('page', 1));

        $this->csrf = CSRF::getToken();

        $this->friends = !$this->getUser()->isAnonymous() ? $this->getUser()->getProfile()->getFriends() : null;
    }

    public function executeTopProfit(sfWebRequest $request) {
        $peopleOrdered = array();
        foreach (Doctrine_Query::create()
                ->select('sum(pd.qty) as weight,p.created_by as id')
                ->from('ProfitDetail pd')
                ->leftJoin('pd.Profit p')
                ->groupBy('p.created_by')
                ->orderBy('weight desc')
                ->limit(10)
                ->execute() as $loc) {
            $peopleOrdered[$loc->id] = $loc->weight;
        }

        foreach (Doctrine_Query::create()
                ->from('sfGuardUserProfile p')
                ->leftJoin('p.User u')
                ->whereIn("u.id", array_keys($peopleOrdered))
                ->execute() as $profile) {
            $peopleOrdered[$profile->id] = (object) array('profile' => $profile, 'weight' => $peopleOrdered[$profile->id]);
        }

        $this->people = $peopleOrdered;

        $this->csrf = CSRF::getToken();

        $this->friends = !$this->getUser()->isAnonymous() ? $this->getUser()->getProfile()->getFriends() : null;
    }

    public function executeMy(sfWebRequest $request) {
        $request->setParameter('id', $this->getUser()->getProfile()->getId());
        $this->forward('profile', 'show');
    }
    public function executeEditMy(sfWebRequest $request) {
        $request->setParameter('id', $this->getUser()->getProfile()->getId());
        $this->forward('profile', 'edit');
    }

    public function executeFriends(sfWebRequest $request) {
        $this->csrf = CSRF::getToken();
        $this->friends = $this->getUser()->getProfile()->getFriends();
        $this->profile = $this->getUser()->getProfile();
    }

    public function executeAdd(sfWebRequest $request) {
        $request->checkCSRFProtection();

        $this->profile = Doctrine::getTable('sfGuardUserProfile')->find(array($request->getParameter('id')));
        $this->forward404Unless($this->profile);

        $this->getUser()->getProfile()->addFriend($this->profile);
        if ($request->hasParameter('self')) {
            $this->profile = $this->getUser()->getProfile();
        }
    }

    public function executeRemove(sfWebRequest $request) {
        $request->checkCSRFProtection();

        $this->profile = Doctrine::getTable('sfGuardUserProfile')->find(array($request->getParameter('id')));
        $this->forward404Unless($this->profile);

        $this->getUser()->getProfile()->removeFriend($this->profile);
    }

    public function executeShow(sfWebRequest $request) {
        $this->profile = Doctrine::getTable('sfGuardUserProfile')->find(array($request->getParameter('id')));
        $this->forward404Unless($this->profile);

        $this->view = $request->getParameter('view');
        if (!in_array($this->view, array('comments', 'profits', 'locations'))) {
            $this->view = 'profile';
        }
        
        
        //@todo: join commmented objects
        $this->comments = Doctrine_Query::create()
                ->from('Comment c')
                ->leftJoin('c.CreatedBy')                
                ->where('c.created_by = ? and c.parent > 0', $this->profile->getId())
                ->andWhere('c.inbox_id is null')
                ->orderBy('c.created_at desc');

        $this->comments = Doctrine::getTable('Comment')->filterScope($this->comments, $this->getUser())->execute();
        $this->profits = Doctrine_Query::create()
                ->from('Profit p')
                ->leftJoin('p.ProfitDetail d')
                ->leftJoin('p.Location l')
                ->leftJoin('d.Fish f')
                ->leftJoin('d.Style s')
                ->leftJoin('p.CommentProfit')
                ->leftJoin('p.VoteProfit')
                ->leftJoin('p.CreatedBy')
                ->andWhere('p.created_by = ?', $this->profile->getId())
                ->orderBy('p.created_at desc');

        $this->profits = Doctrine::getTable('Location')
                ->filterScope($this->profits, $this->getUser())->execute();

        $this->locations = Doctrine::getTable('Location')
                ->getVisibleLocationsQuery($this->getUser())
                ->leftJoin('l.VoteLocation v')
                ->leftJoin('l.CreatedBy p')
                ->leftJoin('l.CommentLocation c')
                ->leftJoin('l.Profit pr')
                ->andWhere('l.created_by = ?', $this->profile->getId())
                ->orderBy('l.created_at desc')
                ->execute();
//@todo: add events
        $this->total = 0;
        $this->best = array(
            'name' => 'фигавль',
            'qty' => 0,
            'location' => null);

        foreach ($this->profits as $profit) {
            if ($this->best['qty'] < $profit->getWeight()) {
                $this->best['qty'] = $profit->getWeight();
                $this->best['name'] = $profit->getFish();
                $this->best['location'] = $profit->getLocation();
            }
            foreach ($profit->getProfitDetail() as $pd) {
                $this->total+=$pd->getQty();
            }
        }

        $this->csrf = CSRF::getToken();
    }

    public function executeEdit(sfWebRequest $request) {
        $this->forward404Unless($profile = Doctrine::getTable('sfGuardUserProfile')->find(array($request->getParameter('id'))), sprintf('Object profile does not exist (%s).', $request->getParameter('id')));
        $this->form = new sfGuardUserProfileForm($profile);
        $this->form->setDefault('first_name', $profile->getFirstName());
        $this->form->setDefault('last_name', $profile->getLastName());


        $this->forward404Unless(sfConfig::get('app_sfForkedApply_mail_editable'));
        $formClass = sfConfig::get('app_sfForkedApply_editEmailForm');
        if (!( ($this->mailForm = new $formClass() ) instanceof sfApplyEditEmailForm)) {
            // if the form isn't instance of sfApplySettingsForm, we don't accept it
            throw new InvalidArgumentException(sfContext::getInstance()->
                            getI18N()->
                            __('The custom %action% form should be instance of %form%', array('%action%' => 'editEmail',
                                '%form%' => 'sfApplyEditEmailForm'), 'sfForkedApply')
            );
        }

        //won't present this page to users that are not authenticated or haven't got confirmation code
        if (!$this->getUser()->isAuthenticated() && !$this->getUser()->getAttribute('sfApplyReset', false)) {
            $this->redirect('@sf_guard_signin');
        }
        // we're getting default or customized resetForm for the task
        if (!( ($this->resetform = new sfApplyResetForm() ) instanceof sfApplyResetForm)) {
            // if the form isn't instance of sfApplyResetForm, we don't accept it
            throw new InvalidArgumentException(
                    'The custom reset form should be instance of sfApplyResetForm'
            );
        }
    }

    public function executeUpdate(sfWebRequest $request) {
        $this->forward404Unless($request->isMethod(sfRequest::POST) || $request->isMethod(sfRequest::PUT));
        $this->forward404Unless($profile = Doctrine::getTable('sfGuardUserProfile')->find(array($request->getParameter('id'))), sprintf('Object profile does not exist (%s).', $request->getParameter('id')));
        $this->form = new sfGuardUserProfileForm($profile);

        $this->processForm($request, $this->form);
        $formClass = sfConfig::get('app_sfForkedApply_editEmailForm');
        if (!( ($this->mailForm = new $formClass() ) instanceof sfApplyEditEmailForm)) {
            // if the form isn't instance of sfApplySettingsForm, we don't accept it
            throw new InvalidArgumentException(sfContext::getInstance()->
                            getI18N()->
                            __('The custom %action% form should be instance of %form%', array('%action%' => 'editEmail',
                                '%form%' => 'sfApplyEditEmailForm'), 'sfForkedApply')
            );
        }


        //won't present this page to users that are not authenticated or haven't got confirmation code
        if (!$this->getUser()->isAuthenticated() && !$this->getUser()->getAttribute('sfApplyReset', false)) {
            $this->redirect('@sf_guard_signin');
        }
        // we're getting default or customized resetForm for the task
        if (!( ($this->resetform = new sfApplyResetForm() ) instanceof sfApplyResetForm)) {
            // if the form isn't instance of sfApplyResetForm, we don't accept it
            throw new InvalidArgumentException(
                    'The custom reset form should be instance of sfApplyResetForm'
            );
        }

        $this->setTemplate('edit');
    }

    protected function processForm(sfWebRequest $request, sfForm $form) {
        $files = $request->getFiles($form->getName());
        $form->bind($request->getParameter($form->getName()), $files);
        if ($form->isValid()) {
            $profile = $form->save();

            $profile->getUser()->first_name = $form->getValue('first_name');
            $profile->getUser()->last_name = $form->getValue('last_name');
            $profile->getUser()->save();

            if ($files['userpic']['name']) {
                $userpic = new sfThumbnail(48, 48, false);
                $userpic->loadFile($files['userpic']['tmp_name']);
                $name = md5($profile->id . 'userpic fuck yea') . '.png';
                $userpic->save(sfConfig::get('sf_user_pic_dir') . $name, 'image/png');
                $profile->userpic = $name;
                $profile->save();
            }

            $this->redirect('profile/show?id=' . $profile->getId());
        } else {
//            foreach ($form->getFormFieldSchema() as $name => $formField) {
//                if ($formField->getError() != "") {
//                    echo "ActionClassName::methodName( ): Field Error for :" . $name . " : " . $formField->getError();
//                }
//            }
        }
    }

    public function executeEditEmail() {
        $this->forward('sfApply', 'editEmail');
    }

}
