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

    public function executeFor(sfWebRequest $request) {

        $this->forward404Unless($request->isMethod(sfRequest::POST));

        //@todo: check component name input
        $componentName = $request->getParameter('component');
        $commentName = 'Comment' . $componentName;
        $formName = $commentName . 'Form';
        $form = new $formName();
        $toward = $form->getToward();

        $data = $request->getParameter($form->getName());

        $tree = Doctrine::getTable($commentName)->getTree();
        $tree->setBaseQuery(Doctrine_Query::create()->from($commentName . ' c')
                        ->where('c.' . $toward . '_id = ?', $data[$toward . '_id']));


        $form->bind($data, $request->getFiles($form->getName()));

        if ($form->isValid()) {
            $root = $tree->fetchRoots()->getFirst();
            if (!$root) {
                $root = new $commentName();
                $root->message = 'root';
                $root[$toward . '_id'] = $data[$toward . '_id'];
                $root->parent = null;
                $root->save();
                $tree->createRoot($root);

                $getterCommented = "get$componentName";
                BotNet::create()->attachTo($root, BotNet::create()->getRandomBot(), $root->$getterCommented()->getDateTimeObject('created_at')->format('U'));
            }

            $parent = $root;
            if ($data['parent']) {
                $parent = Doctrine_Core::getTable('Comment')->find($data['parent']);
            }

            $data['parent'] = $parent->getId();
            $form->bind($data, $request->getFiles($form->getName()));

            $this->comment = $form->save();
            $this->comment->getNode()->insertAsLastChildOf($parent);

            $prevCom = $parent;
            if ($parent->message == 'root') {
                $sibling = $this->comment->getNode()->getPrevSibling();
                if($sibling){
                    $prevCom = $sibling;
                }
            }

            BotNet::create()->spammed($this->comment, 'message', $prevCom->getDateTimeObject('created_at')->format('U'));

            $this->noVote = $form->getValue('noVote', false);
            $this->setTemplate('created');
        } else {
            foreach ($form->getFormFieldSchema() as $name => $formField) {
                if ($formField->getError() != "") {
                    echo "ActionClassName::methodName( ): Field Error for :" . $name . " : " . $formField->getError();
                }
            }
        }
    }

}
