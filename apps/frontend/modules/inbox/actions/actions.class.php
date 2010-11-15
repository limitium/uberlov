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
        $this->inboxes = $this->getUser()->getProfile()->getInbox();
        $this->csrf = $this->getCSRFToken();
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

    public function executeShow(sfWebRequest $request) {
        $this->forward404Unless($this->inbox = Doctrine::getTable('Inbox')->find(array($request->getParameter('id'))), sprintf('Object inbox does not exist (%s).', $request->getParameter('id')));

        $this->comments = Comment::getFor($this->inbox);

        $this->form = new CommentInboxForm();
        $this->form->setDefault('inbox_id', $this->inbox->getId());

        $this->inboxed = Doctrine_Query::create()
                        ->select()
                        ->from('Profile p')
                        ->leftJoin('p.Inboxed i')
                        ->where('i.inbox_id = ?', $this->inbox->getId())
                        ->execute();

        $this->csrf = $this->getCSRFToken();
    }

    public function executeUpdate(sfWebRequest $request) {
        $this->forward404Unless($request->isMethod(sfRequest::POST) || $request->isMethod(sfRequest::PUT));
        $this->forward404Unless($inbox = Doctrine::getTable('Inbox')->find(array($request->getParameter('id'))), sprintf('Object inbox does not exist (%s).', $request->getParameter('id')));
        $this->form = new InboxForm($inbox);

        $this->processForm($request, $this->form);

        $this->setTemplate('show');
    }

    public function executeDelete(sfWebRequest $request) {

        $request->checkCSRFProtection();

        $this->forward404Unless($inbox = Doctrine::getTable('Inbox')->find(array($request->getParameter('id'))), sprintf('Object inbox does not exist (%s).', $request->getParameter('id')));

        if ($inbox->getCreatedBy() == $this->getUser()->getProfile()) {

            Doctrine_Query::create()
                    ->delete('CommentInbox')
                    ->where('inbox_id = ?', $inbox->getId())
                    ->execute();

            Doctrine_Query::create()
                    ->delete('Inboxed')
                    ->where('inbox_id = ?', $inbox->getId())
                    ->execute();

            $inbox->delete();
        } else {
            Doctrine_Query::create()
                    ->delete('Inboxed')
                    ->where('profile_id = ?', $this->getUser()->getProfile()->getId())
                    ->execute();
        }

        return sfView::NONE;
    }

    public function executeRemove(sfWebRequest $request) {

        $request->checkCSRFProtection();

        $this->forward404Unless($inbox = Doctrine::getTable('Inbox')->find(array($request->getParameter('id'))), sprintf('Object inbox does not exist (%s).', $request->getParameter('id')));
        $this->forward404Unless($profile = Doctrine::getTable('Profile')->find(array($request->getParameter('profile'))), sprintf('Object inbox does not exist (%s).', $request->getParameter('profile')));

        if ($inbox->isOwner()) {

            Doctrine_Query::create()
                    ->delete('Inboxed')
                    ->where('inbox_id = ?', $inbox->getId())
                    ->andWhere('profile_id = ?', $profile->getId())
                    ->execute();
        }

        return sfView::NONE;
    }

    public function executeAdd(sfWebRequest $request) {

        $request->checkCSRFProtection();

        $this->forward404Unless($inbox = Doctrine::getTable('Inbox')->find(array($request->getParameter('id'))), sprintf('Object inbox does not exist (%s).', $request->getParameter('id')));

        if ($inbox->isOwner()) {
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
                    $inboxed->inbox_id = $inbox->getId();
                    $inboxed->save();
                }
            }
        }
    }

    protected function processForm(sfWebRequest $request, sfForm $form) {
        $params = $request->getParameter($form->getName());
        $inboxed = $params['inboxed_list'];


        $params['inboxed_list'] = $this->getProfiles($inboxed);

        $form->bind($params, $request->getFiles($form->getName()));
        if ($form->isValid()) {
            $inbox = $form->save();

            $this->redirect('inbox/show?id=' . $inbox->getId());
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
                $names[] = $name;
            } else {
                $names[] = $name;
            }
        }

        $pids = array();
        foreach (Doctrine_Query::create()->select()->from('Profile p')
                ->select('p.id')
                ->whereIn('p.id', $ids)
                ->orWhereIn('p.nick_name', $names)
                ->andWhere('p.id != ?', $this->getUser()->getProfile()->getId())
                ->groupBy('p.id')
                ->fetchArray() as $p) {
            $pids[] = $p['id'];
        }
        return $pids;
    }

    public function getCSRFToken() {
        $form = new BaseForm();

        if ($form->isCSRFProtected()) {
            $formData = $form->getCSRFToken();
        }
        return $formData;
    }

}
