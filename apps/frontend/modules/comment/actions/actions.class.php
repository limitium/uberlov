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
        $this->createComment($request, 'location');
    }

    public function executeInbox(sfWebRequest $request) {
        $this->createComment($request, 'inbox');
    }

    public function executeProfit(sfWebRequest $request) {
        $this->createComment($request, 'profit');
    }

    private function createComment(sfWebRequest $request, $toward) {
        $this->forward404Unless($request->isMethod(sfRequest::POST));

        if ($this->comment = $this->processForm($request, $toward)) {
            
        }
        $this->setTemplate('created');
    }

    protected function processForm(sfWebRequest $request, $toward) {
        $modelName = 'Comment' . ucfirst($toward);
        $formName = $modelName . 'Form';
        $form = new $formName();

        $data = $request->getParameter($form->getName());

        $tree = Doctrine::getTable($modelName)->getTree();
        $tree->setBaseQuery(Doctrine_Query::create()->from($modelName . ' c')
                        ->where('c.' . $toward . '_id = ?', $data[$toward . '_id']));


        $form->bind($data, $request->getFiles($form->getName()));

        if ($form->isValid()) {
            $root = $tree->fetchRoots()->getFirst();
            if (!$root) {
                $root = new $modelName();
                $root->message = 'root';
                $root[$toward . '_id'] = $data[$toward . '_id'];
                $root->parent = null;
                $root->save();
                $tree->createRoot($root);
            }

            $parent = $root;
            if ($data['parent']) {
                $parent = Doctrine_Core::getTable('Comment')->find($data['parent']);
                $this->forward404Unless($parent);
            }

            $data['parent'] = $parent->getId();
            $form->bind($data, $request->getFiles($form->getName()));

            $comment = $form->save();
            $comment->getNode()->insertAsLastChildOf($parent);
            return $comment;
        } else {
            foreach ($form->getFormFieldSchema() as $name => $formField) {
                if ($formField->getError() != "") {
                    echo "ActionClassName::methodName( ): Field Error for :" . $name . " : " . $formField->getError();
                }
            }
        }

        return null;
    }

}
