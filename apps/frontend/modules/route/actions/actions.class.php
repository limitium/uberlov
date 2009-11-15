<?php

/**
 * route actions.
 *
 * @package    HT
 * @subpackage route
 * @author     Your name here
 * @version    SVN: $Id: actions.class.php 12474 2008-10-31 10:41:27Z fabien $
 */
class routeActions extends sfActions {
  public function executeIndex(sfWebRequest $request) {
    $this->route_list = Doctrine::getTable('Route')
        ->createQuery('a')
        ->execute();
  }

  public function executeShow(sfWebRequest $request) {
    $this->route = Doctrine::getTable('Route')->find($request->getParameter('id'));
    $this->forward404Unless($this->route);
  }

  public function executeNew(sfWebRequest $request) {
    $this->form = new RouteForm();
  }

  public function executeCreate(sfWebRequest $request) {
    $this->forward404Unless($request->isMethod(sfRequest::POST));

    $this->form = new RouteForm();

    $this->setTemplate('new');

    if($this->route = $this->processForm($request, $this->form)) {
      $this->setTemplate('created');
    }
  }

  public function executeEdit(sfWebRequest $request) {
    $this->forward404Unless($route = Doctrine::getTable('Route')->find($request->getParameter('id')), sprintf('Object route does not exist (%s).', $request->getParameter('id')));
    $this->form = new RouteForm($route);
  }

  public function executeUpdate(sfWebRequest $request) {
    $this->forward404Unless($request->isMethod(sfRequest::POST) || $request->isMethod(sfRequest::PUT));
    $this->forward404Unless($route = Doctrine::getTable('Route')->find($request->getParameter('id')), sprintf('Object route does not exist (%s).', $request->getParameter('id')));
    $this->form = new RouteForm($route);

    $this->processForm($request, $this->form);

    $this->setTemplate('edit');
  }

  public function executeDelete(sfWebRequest $request) {
    $request->checkCSRFProtection();

    $this->forward404Unless($route = Doctrine::getTable('Route')->find($request->getParameter('id')), sprintf('Object route does not exist (%s).', $request->getParameter('id')));
    $route->delete();

    $this->redirect('route/index');
  }

  protected function processForm(sfWebRequest $request, sfForm $form) {
    $form->bind($request->getParameter($form->getName()));
    if ($form->isValid()) {
      foreach($form->getValue('points') as $point) {
        $form->getObject()->Points->add($point);
      }
      return $form->save();
    }
    return null;
  }

  public function executeExport(sfWebRequest $request) {
    $this->forward404Unless($route = Doctrine::getTable('Route')->find($request->getParameter('id')), sprintf('Object location does not exist (%s).', $request->getParameter('id')));
    $this->route = $route;
    $this->getResponse()->setContentType('text/plt');
    $this->getResponse()->addHttpMeta('content-disposition: ', 'attachment; filename="route.plt"', true);
    $this->setLayout(false);
  }
}
