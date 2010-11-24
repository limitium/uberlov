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

    public function executeIndex(sfWebRequest $request) {
        var_dump($this->getUser()->getProfile()->getForce());
        $this->location_list = Doctrine::getTable('Location')
                        ->createQuery('a')
                        ->execute();
    }

    public function executeMap(sfWebRequest $request) {
        $this->location = Doctrine::getTable('Location')->find($request->getParameter('id'));
        $this->forward404Unless($this->location);
        $this->comments = Doctrine_Query::create()
                        ->from('CommentLocation c')
                        ->where('c.location_id = ? and c.parent > 0', $this->location->getId())
                        ->count();
    }

    public function executeShow(sfWebRequest $request) {
        $this->location = Doctrine::getTable('Location')->find($request->getParameter('id'));
        $this->forward404Unless($this->location);

        $this->comments = Comment::getFor($this->location);

        $this->profits = Doctrine_Query::create()->select()->from('Profit pf')
                        ->leftJoin('pf.ProfitDetail d')
                        ->leftJoin('pf.CreatedBy p')
                        ->leftJoin('pf.VoteProfit v')
                        ->where('pf.location_id = ?', $this->location->getId())
                        ->execute();

        $this->events = Doctrine_Query::create()->select()->from('FishEvent e')
//                        ->leftJoin('e.created_by p')
                        ->leftJoin('e.VoteFishEvent v')
                        ->where('e.location_id = ?', $this->location->getId())
                        ->execute();

        $this->csrf = CSRF::getToken();
        
        $this->form = new CommentLocationForm();
        
        $this->form->setDefault('location_id', $this->location->getId());
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
        $this->form = new LocationForm($location);
    }

    public function executeUpdate(sfWebRequest $request) {
        $this->forward404Unless($request->isMethod(sfRequest::POST) || $request->isMethod(sfRequest::PUT));
        $this->forward404Unless($location = Doctrine::getTable('Location')->find($request->getParameter('id')), sprintf('Object location does not exist (%s).', $request->getParameter('id')));
        $this->form = new LocationForm($location);

        $this->processForm($request, $this->form);

        $this->setTemplate('edit');
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

            return $form->save()->updateAddress($addressData);
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

        $this->getUser()->getProfile();
        
        if ($location->isOwner()) {
            $this->added = array();
            $pids = $this->getProfiles($request->getParameter('data'));

            if ($pids) {
                $this->added = Doctrine_Query::create()
                                ->select()
                                ->from('Profile p')
                                ->whereIn('p.id', $pids)
                                ->execute();
                foreach ($this->added as $profile) {

                    $inboxed = new Inboxed();
                    $inboxed->profile_id = $profile->getId();
                    $inboxed->inbox_id = $location->getId();
                    $inboxed->save();
                }
            }
        }
    }

    public function executeFrommy(sfWebRequest $request) {

    }

}
