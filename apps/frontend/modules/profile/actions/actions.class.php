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

    public function executeAdd(sfWebRequest $request) {
        $request->checkCSRFProtection();

        $this->profile = Doctrine::getTable('sfGuardUserProfile')->find(array($request->getParameter('id')));
        $this->forward404Unless($this->profile);

        $this->getUser()->getProfile()->addFriend($this->profile);
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

        $this->comments = Doctrine_Query::create()
                        ->from('Comment c')
                        ->where('c.created_by = ? and c.parent > 0', $this->profile->getId())
                        ->andWhere('c.inbox_id is null')
                        ->execute();

        $this->profits = Doctrine_Query::create()
                        ->from('Profit p')
                        ->leftJoin('p.ProfitDetail d')
                        ->leftJoin('d.Fish f')
                        ->leftJoin('d.Style s')
                        ->where('p.created_by = ?', $this->profile->getId())
                        ->execute();
        $this->locations = Doctrine_Query::create()
                        ->from('Location l')
                        ->where('l.created_by = ?', $this->profile->getId())
                        ->execute();

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

    public function executeNew(sfWebRequest $request) {
        $this->form = new sfGuardUserProfileForm();
    }

    public function executeCreate(sfWebRequest $request) {
        $this->forward404Unless($request->isMethod(sfRequest::POST));

        $this->form = new sfGuardUserProfileForm();

        $this->processForm($request, $this->form);

        $this->setTemplate('new');
    }

    public function executeEdit(sfWebRequest $request) {
        $this->forward404Unless($profile = Doctrine::getTable('sfGuardUserProfile')->find(array($request->getParameter('id'))), sprintf('Object profile does not exist (%s).', $request->getParameter('id')));
        $this->form = new sfGuardUserProfileForm($profile);
        $this->form->setDefault('first_name', $profile->getFirstName());
        $this->form->setDefault('last_name', $profile->getLastName());
    }

    public function executeUpdate(sfWebRequest $request) {
        $this->forward404Unless($request->isMethod(sfRequest::POST) || $request->isMethod(sfRequest::PUT));
        $this->forward404Unless($profile = Doctrine::getTable('sfGuardUserProfile')->find(array($request->getParameter('id'))), sprintf('Object profile does not exist (%s).', $request->getParameter('id')));
        $this->form = new sfGuardUserProfileForm($profile);

        $this->processForm($request, $this->form);

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
                $userpic = new sfThumbnail(32, 32);
                $userpic->loadFile($files['userpic']['tmp_name']);
                $name = md5($profile->id . 'userpic fuck yea') . '.gif';
                $userpic->save(sfConfig::get('sf_user_pic_dir') . $name, 'image/gif');
                $profile->userpic = $name;
                $profile->save();
            }

            $this->redirect('profile/show?id=' . $profile->getId());
        }
    }

}
