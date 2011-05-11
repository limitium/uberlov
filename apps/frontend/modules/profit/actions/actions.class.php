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

    public function executeList(sfWebRequest $request) {
        $url = 'profit/list?page={%page_number}';

        $query = Doctrine::getTable('Profit')->createQuery('p')
                        ->leftJoin('p.CommentProfit')
                        ->leftJoin('p.CreatedBy')
                        ->leftJoin('p.Location ')
                        ->orderBy('p.created_at desc');


        $this->pager = htPagerLayout::create($query, $url, $request->getParameter('page', 1));
    }

    public function executeShow(sfWebRequest $request) {
        $this->profit = Doctrine::getTable('Profit')->find(array($request->getParameter('id')));
        $this->forward404Unless($this->profit);

        $this->comments = Comment::getFor($this->profit);

        $this->form = new CommentProfitForm();
        $this->form->setCommented($this->profit);
    }

    public function executeNew(sfWebRequest $request) {
        $this->forward404Unless($this->location = Doctrine::getTable('Location')->find(array($request->getParameter('location'))), sprintf('Location does not exist (%s).', $request->getParameter('id')));
        $this->form = new ProfitForm();
        $this->form->setDefault('location_id', $this->location->getId());
    }

    public function executeCreate(sfWebRequest $request) {
        $this->forward404Unless($request->isMethod(sfRequest::POST));

        $this->form = new ProfitForm();

        $this->setTemplate('new');

        if ($this->profit = $this->processForm($request, $this->form)) {
            $this->redirect('profit/show?id=' . $this->profit->getId());
        }
    }

    public function executeEdit(sfWebRequest $request) {
        $this->forward404Unless($profit = Doctrine::getTable('Profit')->find(array($request->getParameter('id'))), sprintf('Object profit does not exist (%s).', $request->getParameter('id')));

        $this->form = new ProfitForm($profit);
        $this->form->packDetails();
    }

    public function executeUpdate(sfWebRequest $request) {
        $this->forward404Unless($request->isMethod(sfRequest::POST) || $request->isMethod(sfRequest::PUT));
        $this->forward404Unless($profit = Doctrine::getTable('Profit')->find(array($request->getParameter('id'))), sprintf('Object profit does not exist (%s).', $request->getParameter('id')));
        $this->form = new ProfitForm($profit);

        $this->processForm($request, $this->form);

        $this->setTemplate('edit');
    }

    protected function processForm(sfWebRequest $request, sfForm $form) {
        $params = $request->getParameter($form->getName());

        $this->forward404Unless($this->location = Doctrine::getTable('Location')->find(array($params['location_id'])), sprintf('Location does not exist (%s).', $params['location_id']));

        $form->bind($params);

        if ($form->isValid()) {
            $detailsData = (array) json_decode($form->getValue('details'));
            return $form->save()->updateDetails($detailsData);
        } else {
//            foreach ($form->getFormFieldSchema() as $name => $formField) {
//                if ($formField->getError() != "") {
//                    echo "ActionClassName::methodName( ): Field Error for :" . $name . " : " . $formField->getError();
//                }
//            }
        }
        return null;
    }

}
