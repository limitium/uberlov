<?php

/**
 * tag actions.
 *
 * @package    FISHERY
 * @subpackage tag
 * @author     Your name here
 * @version    SVN: $Id: actions.class.php 23810 2009-11-12 11:07:44Z Kris.Wallsmith $
 */
class tagActions extends sfActions {

    public function executeSuggest(sfWebRequest $request) {
        $this->forward('taggableComplete', 'complete');
    }

    public function executeWord($request) {
        $this->tag = Doctrine::getTable('Tag')->findBy('name', array($request->getParameter('word')))->getFirst();
        $this->forward404Unless($this->tag);

        $url = 'tag/word?page={%page_number}&tag=' . $this->tag->getName();

        $query = Doctrine::getTable('Talk')->getTagQuery()
                        ->leftJoin('t.Tagging t1')
                        ->leftJoin('t1.Tag t2')
                        ->addWhere('t2.name =?', $this->tag->getName());

        $this->pagerLayout = Talk::getPager($query, $url, $request->getParameter("page", 1));
        
        $this->tags = TagTable::getAllTagNameWithCount();
    }

}
