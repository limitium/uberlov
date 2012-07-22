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

    public function executeTag($request) {
        $this->tag = Doctrine::getTable('Tag')->findBy('name', array($request->getParameter('tag')))->getFirst();
        $this->forward404Unless($this->tag);

        $url = 'talk/tag?&tag=' . $this->tag->getName() . 'page={%page_number}';

        $query = Doctrine::getTable('Talk')->getTagQuery()
                        ->leftJoin('t.Tagging t1')
                        ->leftJoin('t1.Tag t2')
                        ->addWhere('t2.name =?', $this->tag->getName());

        $this->pager = htPagerLayout::create($query, $url, $request->getParameter("page", 1));

        $this->tags = TagTable::getAllTagNameWithCount();
    }

    public function executeList(sfWebRequest $request) {
        $url = 'talk/list?page={%page_number}';

        $query = Doctrine::getTable('Talk')->getTagQuery();

        $this->curSection = Doctrine::getTable('TalkSection')->find(array($request->getParameter('section')));

        if ($this->curSection) {
            $this->curSection->modifyQuery($query);
            $url .= '&section=' . $this->curSection->getId();

            if ($this->curSection->getNode()->isLeaf() && !$this->getUser()->isAnonymous()) {
                $this->form = new TalkForm();
                $this->form->setDefault('talk_section_id', $this->curSection->getId());
            }
        }

        $this->pager = htPagerLayout::create($query, $url, $request->getParameter("page", 1));
    }

    public function executeShow(sfWebRequest $request) {
        $this->talk =Doctrine::getTable('Talk')->createQuery("t")
            ->leftJoin('t.VoteTalk')
            ->leftJoin('t.CreatedBy p')
            ->leftJoin('t.TalkSection')
            ->leftJoin('p.User')
            ->where('t.id = ?', $request->getParameter('id'))
            ->execute()
            ->getFirst();
        $this->forward404Unless($this->talk);

        $this->comments = Comment::getFor($this->talk);

        $this->form = new CommentTalkForm();
        $this->form->setCommented($this->talk);

        $this->related = TagTable::getObjectTaggedWith(array_keys($this->talk->getTags()), array('nb_common_tags' => 2, 'leftJoin' => 't.CreatedBy p,p.User'));
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

    public function executeDelete(sfWebRequest $request) {
        $request->checkCSRFProtection();

        $this->forward404Unless($talk = Doctrine::getTable('Talk')->find(array($request->getParameter('id'))), sprintf('Object talk does not exist (%s).', $request->getParameter('id')));
        $talk->delete();

        $this->redirect('talk/list');
    }

    protected function processForm(sfWebRequest $request, sfForm $form) {
        $form->bind($request->getParameter($form->getName()), $request->getFiles($form->getName()));
        if ($form->isValid()) {
            $talk = $form->save();
            BotNet::create()->spammed($talk, 'message');
            $this->redirect('talk/show?id=' . $talk->getId());
        }
    }

    public function executeSection(sfWebRequest $request) {
        $this->curSection = Doctrine::getTable('TalkSection')->find(array($request->getParameter('parent')));

        $this->form = new TalkSectionForm();
        if ($this->curSection) {
            $this->form->setDefault('parent', $this->curSection->getId());
        }

        if ($request->isMethod(sfRequest::POST)) {
            $tree = Doctrine::getTable('TalkSection')->getTree();
            $root = $tree->fetchRoots()->getFirst();
            if (!$root) {
                $root = new TalkSection();
                $root->name = 'root';
                $root->parent = null;
                $root->save();
                $tree->createRoot($root);
            }

            $data = $request->getParameter($this->form->getName());
            if (!$data['parent']) {
                $data['parent'] = $root->getId();
            }
            $this->form->bind($data, $request->getFiles($this->form->getName()));

            if ($this->form->isValid()) {
                $section = $this->form->save();
                $parent = Doctrine_Core::getTable('TalkSection')->find($section->parent);
                $section->getNode()->insertAsLastChildOf($parent);
                $this->redirect('talk/list?section=' . $section->getId());
            }
        }
    }

}
