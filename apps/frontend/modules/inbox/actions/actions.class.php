<?php

/**
 * inbox actions.
 *
 * @package    FISHERY
 * @subpackage inbox
 * @author     Your name here
 * @version    SVN: $Id: actions.class.php 23810 2009-11-12 11:07:44Z Kris.Wallsmith $
 */
class inboxActions extends sfActions {

    public function executeList(sfWebRequest $request) {
        $this->inboxes = Doctrine::getTable('Inbox')
                        ->createQuery('i')
                        ->leftJoin('i.Inboxed id')
                        ->leftJoin('i.CommentInbox с')
                        ->where('i.created_by = ?', sfContext::getInstance()->getUser()->getProfile()->getId())
                        ->andWhere('id.id = ?', sfContext::getInstance()->getUser()->getProfile()->getId())
                        ->execute();
    }

    public function executeNew(sfWebRequest $request) {
        $this->form = new InboxForm();
        if (($whom = $request->getParameter('whom')) != null) {
            $this->form->setDefault('inboxed_list', $whom);
        }
    }

    public function executeCreate(sfWebRequest $request) {
        $this->forward404Unless($request->isMethod(sfRequest::POST));

        $this->form = new InboxForm();

        $this->processForm($request, $this->form);

        $this->setTemplate('new');
    }

    public function executeEdit(sfWebRequest $request) {
        $this->forward404Unless($inbox = Doctrine::getTable('Inbox')->find(array($request->getParameter('id'))), sprintf('Object inbox does not exist (%s).', $request->getParameter('id')));
        $this->form = new InboxForm($inbox);
    }

    public function executeUpdate(sfWebRequest $request) {
        $this->forward404Unless($request->isMethod(sfRequest::POST) || $request->isMethod(sfRequest::PUT));
        $this->forward404Unless($inbox = Doctrine::getTable('Inbox')->find(array($request->getParameter('id'))), sprintf('Object inbox does not exist (%s).', $request->getParameter('id')));
        $this->form = new InboxForm($inbox);

        $this->processForm($request, $this->form);

        $this->setTemplate('edit');
    }

    public function executeDelete(sfWebRequest $request) {
        $request->checkCSRFProtection();

        $this->forward404Unless($inbox = Doctrine::getTable('Inbox')->find(array($request->getParameter('id'))), sprintf('Object inbox does not exist (%s).', $request->getParameter('id')));
        $inbox->delete();

        $this->redirect('inbox/index');
    }

    protected function processForm(sfWebRequest $request, sfForm $form) {
        $form->bind($request->getParameter($form->getName()), $request->getFiles($form->getName()));
        if ($form->isValid()) {
            $inbox = $form->save();

            $this->redirect('inbox/edit?id=' . $inbox->getId());
        }
    }

}
