<?php

/**
 * location actions.
 *
 * @package    HT
 * @subpackage location
 * @author     Your name here
 * @version    SVN: $Id: actions.class.php 12474 2008-10-31 10:41:27Z fabien $
 */
class locationActions extends sfActions {

    public function executeMap(sfWebRequest $request) {
        $this->location = Doctrine::getTable('Location')->find($request->getParameter('id'));
        $this->forward404Unless($this->location);
        $this->location->showed();
    }

    public function executeShow(sfWebRequest $request) {
        $this->location = Doctrine::getTable('Location')->find($request->getParameter('id'));
        $this->forward404Unless($this->location);

        $this->location->showed();

        $this->comments = Comment::getFor($this->location);

        $this->profits = Doctrine_Query::create()->select()->from('Profit pf')
                ->leftJoin('pf.ProfitDetail d')
                ->leftJoin('pf.CreatedBy p')
                ->leftJoin('pf.VoteProfit v')
                ->where('pf.location_id = ?', $this->location->getId())
                ->execute();

        $this->events = Doctrine_Query::create()->select()->from('FishEvent e')
                ->leftJoin('e.CreatedBy p')
                ->leftJoin('e.VoteFishEvent v')
                ->where('e.location_id = ?', $this->location->getId())
                ->execute();

        $this->csrf = CSRF::getToken();

        $this->fishes = $this->location->getFishes();

        $this->form = new CommentLocationForm();
        $this->form->setCommented($this->location);
    }

    public function executeMy(sfWebRequest $request) {
        $this->csrf = CSRF::getToken();
        $this->locations = $this->getUser()->getProfile()->getLocation();
    }

    public function executeNew(sfWebRequest $request) {
        $this->form = new LocationForm();
    }

    public function executeCreate(sfWebRequest $request) {
        $this->forward404Unless($request->isMethod(sfRequest::POST));

        $this->form = new LocationForm();

        $this->setTemplate('new');

        if ($this->location = $this->processForm($request, $this->form)) {
            $this->setTemplate('created');
        }
    }

    public function executeEdit(sfWebRequest $request) {
        $this->forward404Unless($location = Doctrine::getTable('Location')->find($request->getParameter('id')), sprintf('Object location does not exist (%s).', $request->getParameter('id')));

        if (!$this->getUser()->isAnonymous() && $this->getUser()->getProfile()->id == $location->created_by) {
            $this->form = new LocationForm($location);
        } else {
            $this->form = new LocationEnemyForm($location);
        }

        $this->form->packAddress();
    }

    public function executeUpdate(sfWebRequest $request) {
        $this->forward404Unless($request->isMethod(sfRequest::POST) || $request->isMethod(sfRequest::PUT));
        $this->forward404Unless($location = Doctrine::getTable('Location')->find($request->getParameter('id')), sprintf('Object location does not exist (%s).', $request->getParameter('id')));

        if (!$this->getUser()->isAnonymous() && $this->getUser()->getProfile()->id == $location->created_by) {
            $this->form = new LocationForm($location);
        } else {
            $this->form = new LocationEnemyForm($location);
        }

        $this->setTemplate('edit');
        if ($this->location = $this->processForm($request, $this->form)) {
            $this->redirect('location/show?id=' . $this->location->getId());
        }
    }

    public function executeDelete(sfWebRequest $request) {
        $request->checkCSRFProtection();

        $this->forward404Unless($location = Doctrine::getTable('Location')->find($request->getParameter('id')), sprintf('Object location does not exist (%s).', $request->getParameter('id')));
        $location->delete();

        $this->redirect('location/index');
    }

    protected function processForm(sfWebRequest $request, sfForm $form) {
        $form->bind($request->getParameter($form->getName()));
        if ($form->isValid()) {
            $addressData = (array) json_decode($form->getValue('address'));
            $photos = (array) json_decode($form->getValue('photos'));
            return $form->save()->updateAddress($addressData)->updatePhotos($photos);
        }
        return null;
    }

    public function executeExport(sfWebRequest $request) {
        $this->forward404Unless($location = Doctrine::getTable('Location')->find($request->getParameter('id')), sprintf('Object location does not exist (%s).', $request->getParameter('id')));
        $this->location = $location;
        $this->getResponse()->setContentType('text/wpt');
        $this->getResponse()->addHttpMeta('content-disposition: ', 'attachment; filename="location.wpt"', true);
        $this->setLayout(false);
    }

    public function executeTomy(sfWebRequest $request) {
        $request->checkCSRFProtection();
        $this->forward404Unless($location = Doctrine::getTable('Location')->find(array($request->getParameter('id'))), sprintf('Object location does not exist (%s).', $request->getParameter('id')));


        if (!$location->isOwner()) {
            $whish = new WishList();
            $whish->profile_id = $this->getUser()->getProfile()->getId();
            $whish->location_id = $location->getId();
            $whish->save();
        }
    }

    public function executeFrommy(sfWebRequest $request) {
        $request->checkCSRFProtection();
        $this->forward404Unless($location = Doctrine::getTable('Location')->find(array($request->getParameter('id'))), sprintf('Object location does not exist (%s).', $request->getParameter('id')));

        Doctrine_Query::create()->delete('WishList')->Where('location_id = ? and profile_id = ?', array($location->getId(), $this->getUser()->getProfile()->getId()))
                ->execute();
    }

    public function executeSearch(sfWebRequest $request) {
        $this->form = new LocationSearchForm(array(), array(), false);
//        foreach (Doctrine_Query::create()
//                ->select()
//                ->from('Location')
//                ->limit(150)
//                ->offset(749)
//                ->execute() as $l) {
//            $l->updateLuceneIndex();
//        }
        
        if ($request->hasParameter('query')) {
            $this->form->bind(array('query' => $request->getParameter('query')));
            if ($this->form->isValid()) {
                $this->locations = Doctrine_Core::getTable('Location')->getForLuceneQuery($this->form->getValue("query"));
            }
        }
    }

}
