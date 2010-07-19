<?php

/**
 * profit actions.
 *
 * @package    FISHERY
 * @subpackage profit
 * @author     Your name here
 * @version    SVN: $Id: actions.class.php 23810 2009-11-12 11:07:44Z Kris.Wallsmith $
 */
class profitActions extends sfActions {

    public function executeIndex(sfWebRequest $request) {
        $this->profits = Doctrine::getTable('Profit')
                        ->createQuery('a')
                        ->execute();
    }

    public function executeShow(sfWebRequest $request) {
        $this->profit = Doctrine::getTable('Profit')->find(array($request->getParameter('id')));
        $this->forward404Unless($this->profit);

        $q = Doctrine_Query::create()->select('c.message, c.parent, c.created_at, c.updated_at, c.created_by, c.updated_by, p.*, v.*')->from('CommentProfit c')
                        ->leftJoin('c.CommentBy p')
                        ->leftJoin('c.VoteComment v')
                        ->where('c.profit_id = ?', $this->profit->getId());

        $treeObject = Doctrine::getTable('CommentProfit')->getTree();
        $treeObject->setBaseQuery($q);

        $comments = array();
        $rootComment = $treeObject->fetchRoots()->getFirst();
        if ($rootComment) {
            foreach ($treeObject->fetchTree(array('root_id' => $rootComment->root_id)) as $comment) {
                $comments[] = $comment;
            }
        }

        array_shift($comments);
        $this->comments = $comments;
    }

    public function executeNew(sfWebRequest $request) {
        $this->form = new ProfitForm();
    }

    public function executeCreate(sfWebRequest $request) {

        $this->forward404Unless($request->isMethod(sfRequest::POST));

        $this->form = new ProfitForm();

        $this->setTemplate('new');

        if ($this->profit = $this->processForm($request, $this->form)) {
            $this->setTemplate('created');
        }
    }

    public function executeEdit(sfWebRequest $request) {
        $this->forward404Unless($profit = Doctrine::getTable('Profit')->find(array($request->getParameter('id'))), sprintf('Object profit does not exist (%s).', $request->getParameter('id')));
        $this->form = new ProfitForm($profit);
    }

    public function executeUpdate(sfWebRequest $request) {
        $this->forward404Unless($request->isMethod(sfRequest::POST) || $request->isMethod(sfRequest::PUT));
        $this->forward404Unless($profit = Doctrine::getTable('Profit')->find(array($request->getParameter('id'))), sprintf('Object profit does not exist (%s).', $request->getParameter('id')));
        $this->form = new ProfitForm($profit);

        $this->processForm($request, $this->form);

        $this->setTemplate('edit');
    }

    public function executeDelete(sfWebRequest $request) {
        $request->checkCSRFProtection();

        $this->forward404Unless($profit = Doctrine::getTable('Profit')->find(array($request->getParameter('id'))), sprintf('Object profit does not exist (%s).', $request->getParameter('id')));
        $profit->delete();

        $this->redirect('profit/index');
    }

    protected function processForm(sfWebRequest $request, sfForm $form) {
        $form->bind($request->getParameter($form->getName()));
        if ($form->isValid()) {
            $detailsData = (array) json_decode($form->getValue('details'));
            return $form->save()->updateDetails($detailsData);
        } else {
            $log = sfContext::getInstance( )->getLogger();

// Having determined the form object is Invalid
            foreach ($this->form->getFormFieldSchema() as $name => $formField) {
                if ($formField->getError() != "") {
                    echo "ActionClassName::methodName( ): Field Error for :" . $name . " : " . $formField->getError();
                }
            }
        }
        return null;
    }

}
