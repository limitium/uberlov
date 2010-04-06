<?php

/**
 * vote actions.
 *
 * @package    FISHERY
 * @subpackage vote
 * @author     Your name here
 * @version    SVN: $Id: actions.class.php 23810 2009-11-12 11:07:44Z Kris.Wallsmith $
 */
class voteActions extends sfActions {

    public function executeLocation(sfWebRequest $request) {
        $profile = sfContext::getInstance()->getUser()->getProfile();
        $location = Doctrine::getTable('Location')->find($request->getParameter('id'));

        Doctrine_Query::create()
            ->delete('Vote v')
            ->where('v.voter = ? and location_id=?',array($profile->getId(),$location->getId()))
            ->execute();

        $vl = new VoteLocation();
        $vl->Location = $location;
        $vl->Voter = $profile;
        $vl->value = ($request->getParameter('up')?1:-1) * $profile->getForce();
        $vl->save();

        $this->rating = $location->getRating();
        $this->setTemplate('vote');
    }

    public function executeNew(sfWebRequest $request) {
        $this->form = new VoteForm();
    }

    public function executeCreate(sfWebRequest $request) {
        $this->forward404Unless($request->isMethod(sfRequest::POST));

        $this->form = new VoteForm();

        $this->processForm($request, $this->form);

        $this->setTemplate('new');
    }

    public function executeEdit(sfWebRequest $request) {
        $this->forward404Unless($vote = Doctrine::getTable('Vote')->find(array($request->getParameter('id'))), sprintf('Object vote does not exist (%s).', $request->getParameter('id')));
        $this->form = new VoteForm($vote);
    }

    public function executeUpdate(sfWebRequest $request) {
        $this->forward404Unless($request->isMethod(sfRequest::POST) || $request->isMethod(sfRequest::PUT));
        $this->forward404Unless($vote = Doctrine::getTable('Vote')->find(array($request->getParameter('id'))), sprintf('Object vote does not exist (%s).', $request->getParameter('id')));
        $this->form = new VoteForm($vote);

        $this->processForm($request, $this->form);

        $this->setTemplate('edit');
    }

    public function executeDelete(sfWebRequest $request) {
        $request->checkCSRFProtection();

        $this->forward404Unless($vote = Doctrine::getTable('Vote')->find(array($request->getParameter('id'))), sprintf('Object vote does not exist (%s).', $request->getParameter('id')));
        $vote->delete();

        $this->redirect('vote/index');
    }

    protected function processForm(sfWebRequest $request, sfForm $form) {
        $form->bind($request->getParameter($form->getName()), $request->getFiles($form->getName()));
        if ($form->isValid()) {
            $vote = $form->save();

            $this->redirect('vote/edit?id='.$vote->getId());
        }
    }
}
