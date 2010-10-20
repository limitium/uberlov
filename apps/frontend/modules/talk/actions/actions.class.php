<?php

/**
 * talk actions.
 *
 * @package    FISHERY
 * @subpackage talk
 * @author     Your name here
 * @version    SVN: $Id: actions.class.php 23810 2009-11-12 11:07:44Z Kris.Wallsmith $
 */
class talkActions extends sfActions {

    public function executeSuggest(sfWebRequest $request) {
        $this->forward('taggableComplete', 'complete');
    }

    public function executeList(sfWebRequest $request) {
        $url = 'talk/list?page={%page_number}';

        $query = Doctrine::getTable('Talk')
                        ->createQuery('a')
                        ->leftJoin('a.CommentTalk')
                        ->leftJoin('a.CreatedBy')
                        ->leftJoin('a.Tagging t')
                        ->leftJoin('t.Tag')
                        ->orderBy('a.created_at desc');

        $this->curSection = Doctrine::getTable('TalkSection')->find(array($request->getParameter('section')));

        if ($this->curSection) {
            $this->curSection->modifyQuery($query);
            $url .= '&section={%section}';

            if ($this->curSection->getNode()->isLeaf()) {
                $this->form = new TalkForm();
                $this->form->setDefault('talk_section_id', $this->curSection->getId());
            }
        }

        $this->pagerLayout = new htPagerLayout(
                        new Doctrine_Pager(
                                $query,
                                $request->getParameter("page", 1),
                                5
                        ),
                        new Doctrine_Pager_Range_Sliding(array(
                            'chunk' => 10
                        )),
                        $url
        );
        $this->talks = $this->pagerLayout->execute();

        $this->pagerLayout->setTemplate('{link_to}{%page}{/link_to}');
        $this->pagerLayout->setSelectedTemplate('<span>{%page}</span>');
    }

    public function executeShow(sfWebRequest $request) {
        $this->talk = Doctrine::getTable('Talk')->find(array($request->getParameter('id')));
        $this->forward404Unless($this->talk);



        $this->sections = array($this->talk->getTalkSection());
        foreach ($this->talk->getTalkSection()->getNode()->getAncestors() as $section) {
            $this->sections[] = $section;
        }
        $this->sections = array_reverse($this->sections);

        $this->comments = Comment::getFor($this->talk);

        $this->form = new CommentTalkForm();
        $this->form->setDefault('talk_id', $this->talk->getId());
    }

    public function executeNew(sfWebRequest $request) {
        $this->form = new TalkForm();
    }

    public function executeCreate(sfWebRequest $request) {
        $this->forward404Unless($request->isMethod(sfRequest::POST));

        $this->form = new TalkForm();

        $this->processForm($request, $this->form);

        $this->setTemplate('new');
    }

    public function executeEdit(sfWebRequest $request) {
        $this->forward404Unless($talk = Doctrine::getTable('Talk')->find(array($request->getParameter('id'))), sprintf('Object talk does not exist (%s).', $request->getParameter('id')));
        $this->form = new TalkForm($talk);
    }

    public function executeUpdate(sfWebRequest $request) {
        $this->forward404Unless($request->isMethod(sfRequest::POST) || $request->isMethod(sfRequest::PUT));
        $this->forward404Unless($talk = Doctrine::getTable('Talk')->find(array($request->getParameter('id'))), sprintf('Object talk does not exist (%s).', $request->getParameter('id')));
        $this->form = new TalkForm($talk);

        $this->processForm($request, $this->form);

        $this->setTemplate('edit');
    }

    public function executeDelete(sfWebRequest $request) {
        $request->checkCSRFProtection();

        $this->forward404Unless($talk = Doctrine::getTable('Talk')->find(array($request->getParameter('id'))), sprintf('Object talk does not exist (%s).', $request->getParameter('id')));
        $talk->delete();

        $this->redirect('talk/index');
    }

    protected function processForm(sfWebRequest $request, sfForm $form) {
        $form->bind($request->getParameter($form->getName()), $request->getFiles($form->getName()));
        if ($form->isValid()) {
            $talk = $form->save();

            $this->redirect('talk/show?id=' . $talk->getId());
        }
    }

}
