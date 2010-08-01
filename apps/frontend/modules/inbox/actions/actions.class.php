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
        $this->form->setDefault('inboxed_list', $request->getParameter('whom'));
    }

    public function executeCreate(sfWebRequest $request) {
        $this->forward404Unless($request->isMethod(sfRequest::POST));

        $this->form = new InboxForm();

        $this->processForm($request, $this->form);

        $this->setTemplate('new');
    }

    public function executShow(sfWebRequest $request) {
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
        $params = $request->getParameter($form->getName());
        $inboxed = $params['inboxed_list'];


        $params['inboxed_list'] = $this->getProfiles($inboxed);

        $form->bind($params, $request->getFiles($form->getName()));
        if ($form->isValid()) {
            $inbox = $form->save();

            $this->redirect('inbox/edit?id=' . $inbox->getId());
        } else {
            $params['inboxed_list'] = $inboxed;
            $form->bind($params, $request->getFiles($form->getName()));
        }
    }

    private function getProfiles($inboxed) {
        $ids = array();
        $names = array();
        foreach (explode(',', $inboxed) as $name) {
            $name = trim($name);
            if (is_int($name)) {
                $ids[] = $name;
            } else {
                $names[] = $name;
            }
        }

        $pids = array();
        foreach (Doctrine_Query::create()->select()->from('Profile p')
                ->select('p.id')
                ->whereIn('p.id', $ids)
                ->orWhereIn('p.nick_name', $names)
                ->groupBy('p.id')
                ->fetchArray() as $p) {
            $pids[] = $p['id'];
        }
        return $pids;
    }

}
