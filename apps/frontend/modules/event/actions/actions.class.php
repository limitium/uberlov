<?php

/**
 * event actions.
 *
 * @package    FISHERY
 * @subpackage event
 * @author     Your name here
 * @version    SVN: $Id: actions.class.php 23810 2009-11-12 11:07:44Z Kris.Wallsmith $
 */
class eventActions extends sfActions {

    public function executeList(sfWebRequest $request) {
        $this->events = Doctrine::getTable('FishEvent')
                        ->createQuery('f')
                        ->where('f.date > ?', array(date('Y-m-d', time())))
                        ->orderBy('f.date ASC')
                        ->execute();
    }

    public function executeShow(sfWebRequest $request) {
        $this->fish_event = Doctrine::getTable('FishEvent')->find(array($request->getParameter('id')));
        $this->forward404Unless($this->fish_event);
    }

    public function executeNew(sfWebRequest $request) {
        $this->form = new FishEventForm();
    }

    public function executeCreate(sfWebRequest $request) {
        $this->forward404Unless($request->isMethod(sfRequest::POST));

        $this->form = new FishEventForm();

        $this->processForm($request, $this->form);

        $this->setTemplate('new');
    }

    public function executeEdit(sfWebRequest $request) {
        $this->forward404Unless($fish_event = Doctrine::getTable('FishEvent')->find(array($request->getParameter('id'))), sprintf('Object fish_event does not exist (%s).', $request->getParameter('id')));
        $this->form = new FishEventForm($fish_event);
    }

    public function executeUpdate(sfWebRequest $request) {
        $this->forward404Unless($request->isMethod(sfRequest::POST) || $request->isMethod(sfRequest::PUT));
        $this->forward404Unless($fish_event = Doctrine::getTable('FishEvent')->find(array($request->getParameter('id'))), sprintf('Object fish_event does not exist (%s).', $request->getParameter('id')));
        $this->form = new FishEventForm($fish_event);

        $this->processForm($request, $this->form);

        $this->setTemplate('edit');
    }

    public function executeDelete(sfWebRequest $request) {
        $request->checkCSRFProtection();

        $this->forward404Unless($fish_event = Doctrine::getTable('FishEvent')->find(array($request->getParameter('id'))), sprintf('Object fish_event does not exist (%s).', $request->getParameter('id')));
        $fish_event->delete();

        $this->redirect('event/index');
    }

    protected function processForm(sfWebRequest $request, sfForm $form) {
        $form->bind($request->getParameter($form->getName()), $request->getFiles($form->getName()));
        if ($form->isValid()) {
            $fish_event = $form->save();

            $this->redirect('event/edit?id=' . $fish_event->getId());
        }
    }

}
