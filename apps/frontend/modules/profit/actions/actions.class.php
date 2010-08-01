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

        $this->comments = Comment::getFor($this->profit);

        $this->commentForm = new CommentProfitForm();
        $this->commentForm->setDefault('profit_id', $this->profit->getId());
    }

    public function executeNew(sfWebRequest $request) {
        $this->forward404Unless($this->location = Doctrine::getTable('Location')->find(array($request->getParameter('location'))), sprintf('Object profit does not exist (%s).', $request->getParameter('id')));
        $this->form = new ProfitForm();
    }

    public function executeNewMap(sfWebRequest $request) {
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
        }
        return null;
    }

}
