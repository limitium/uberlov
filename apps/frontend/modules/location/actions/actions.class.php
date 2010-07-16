<?php

/**
 * location actions.
 *
 * @package    HT
 * @subpackage location
 * @author     Your name here
 * @version    SVN: $Id: actions.class.php 12474 2008-10-31 10:41:27Z fabien $
 */
class locationActions extends sfActions {

    public function executeIndex(sfWebRequest $request) {
        var_dump(sfContext::getInstance()->getUser()->getProfile()->getForce());
        $this->location_list = Doctrine::getTable('Location')
                        ->createQuery('a')
                        ->execute();
    }

    public function executeShow(sfWebRequest $request) {
        $this->location = Doctrine::getTable('Location')->find($request->getParameter('id'));
        $this->forward404Unless($this->location);
        $this->comments = Doctrine_Query::create()
                        ->from('CommentLocation c')
                        ->where('c.location_id = ? and c.parent > 0', $this->location->getId())
                        ->count();
    }

    public function executeDetails(sfWebRequest $request) {
        $this->location = Doctrine::getTable('Location')->find($request->getParameter('id'));
        $this->forward404Unless($this->location);

        $q = Doctrine_Query::create()->select('c.message, c.parent, c.created_at, c.updated_at, c.created_by, c.updated_by, p.*, v.*')->from('CommentLocation c')
                        ->leftJoin('c.CommentBy p')
                        ->leftJoin('c.VoteComment v')
                        ->where('c.location_id = ?', $this->location->getId());

        $treeObject = Doctrine::getTable('CommentLocation')->getTree();
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

        $this->profits = Doctrine_Query::create()->select()->from('Profit pf')
                        ->leftJoin('pf.ProfitDetail d')
                        ->leftJoin('pf.CreatedBy p')
                        ->leftJoin('pf.VoteProfit v')
                        ->where('pf.location_id = ?', $this->location->getId())
                        ->execute();
    }

    public function executeNew(sfWebRequest $request) {
        $this->form = new LocationForm();
    }

    public function executeCreate(sfWebRequest $request) {
        $this->forward404Unless($request->isMethod(sfRequest::POST));

        $this->form = new LocationForm();

        $this->setTemplate('new');

        if ($this->location = $this->processForm($request, $this->form)) {
            $this->setTemplate('created');
        }
    }

    public function executeEdit(sfWebRequest $request) {
        $this->forward404Unless($location = Doctrine::getTable('Location')->find($request->getParameter('id')), sprintf('Object location does not exist (%s).', $request->getParameter('id')));
        $this->form = new LocationForm($location);
    }

    public function executeUpdate(sfWebRequest $request) {
        $this->forward404Unless($request->isMethod(sfRequest::POST) || $request->isMethod(sfRequest::PUT));
        $this->forward404Unless($location = Doctrine::getTable('Location')->find($request->getParameter('id')), sprintf('Object location does not exist (%s).', $request->getParameter('id')));
        $this->form = new LocationForm($location);

        $this->processForm($request, $this->form);

        $this->setTemplate('edit');
    }

    public function executeDelete(sfWebRequest $request) {
        $request->checkCSRFProtection();

        $this->forward404Unless($location = Doctrine::getTable('Location')->find($request->getParameter('id')), sprintf('Object location does not exist (%s).', $request->getParameter('id')));
        $location->delete();

        $this->redirect('location/index');
    }

    protected function processForm(sfWebRequest $request, sfForm $form) {
        $form->bind($request->getParameter($form->getName()));
        if ($form->isValid()) {
            $addressData = (array) json_decode($form->getValue('address'));

            return $form->save()->updateAddress($addressData);
        }
        return null;
    }

    public function executeExport(sfWebRequest $request) {
        $this->forward404Unless($location = Doctrine::getTable('Location')->find($request->getParameter('id')), sprintf('Object location does not exist (%s).', $request->getParameter('id')));
        $this->location = $location;
        $this->getResponse()->setContentType('text/wpt');
        $this->getResponse()->addHttpMeta('content-disposition: ', 'attachment; filename="location.wpt"', true);
        $this->setLayout(false);
    }

}
