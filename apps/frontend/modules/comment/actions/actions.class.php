<?php

/**
 * comment actions.
 *
 * @package    FISHERY
 * @subpackage comment
 * @author     Your name here
 * @version    SVN: $Id: actions.class.php 23810 2009-11-12 11:07:44Z Kris.Wallsmith $
 */
class commentActions extends sfActions {
    public function executeLocation(sfWebRequest $request) {
        $this->createComment($request, new CommentLocationForm());
    }

    private function createComment(sfWebRequest $request, sfForm $form) {
        $this->forward404Unless($request->isMethod(sfRequest::POST));
        if($this->comment = $this->processForm($request, $form)) {
            $this->setTemplate('created');
        }
    }

    protected function processForm(sfWebRequest $request, sfForm $form) {
        $data = $request->getParameter($form->getName());
        $parent = $data['parent'];

        $form->bind($data, $request->getFiles($form->getName()));

        if ($form->isValid()) {
            unset($data['parent']);
            $comment = $form->save();
            if($parent) {
                $parentNode = Doctrine_Core::getTable('Comment')->find($parent);
                $this->forward404Unless($parentNode);
                $comment->getNode()->insertAsLastChildOf($parentNode);
            }else {
                Doctrine_Core::getTable('Comment')->getTree()->createRoot($comment);
            }
            return $comment;
        }
        return null;
    }
}
