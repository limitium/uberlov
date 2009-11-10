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
    $this->location_list = Doctrine::getTable('Location')
        ->createQuery('a')
        ->execute();
  }

  public function executeShow(sfWebRequest $request) {
    $this->location = Doctrine::getTable('Location')->find($request->getParameter('id'));
    $this->forward404Unless($this->location);
  }

  public function executeNew(sfWebRequest $request) {
    $this->form = new LocationForm();
  }

  public function executeCreate(sfWebRequest $request) {
    $this->forward404Unless($request->isMethod(sfRequest::POST));

    $this->form = new LocationForm();

    $this->setTemplate('new');

    if($this->location = $this->processForm($request, $this->form)) {
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
      return $form->save();
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
