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
        $this->vote($request, 'location');
    }

    public function executeComment(sfWebRequest $request) {
        $this->vote($request, 'comment');
    }

    private function vote(sfWebRequest $request, $type) {
        //@todo csrf check add!!!!
        $uType = ucfirst($type);
        $profile = sfContext::getInstance()->getUser()->getProfile();
        $object = Doctrine::getTable($uType)->find($request->getParameter('id'));

        $this->forward404Unless($profile);
        $this->forward404Unless($object);

        Doctrine_Query::create()
            ->delete('Vote v')
            ->where('v.voter = ? and '.$type.'_id=?',array($profile->getId(),$object->getId()))
            ->execute();

        $voteType  = 'Vote'.$uType;
        $vl = new $voteType();
        $vl->$uType = $object;
        $vl->Voter = $profile;
        $vl->value = ($request->getParameter('up')?1:-1) * $profile->getForce();
        $vl->save();

        $this->rating = $object->getRating();
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
