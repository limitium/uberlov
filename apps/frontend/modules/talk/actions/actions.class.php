<?php

/**
 * talk actions.
 *
 * @package    FISHERY
 * @subpackage talk
 * @author     Your name here
 * @version    SVN: $Id: actions.class.php 23810 2009-11-12 11:07:44Z Kris.Wallsmith $
 */
class talkActions extends sfActions
{
  public function executeIndex(sfWebRequest $request)
  {
    $this->talks = Doctrine::getTable('Talk')
      ->createQuery('a')
      ->execute();
  }

  public function executeShow(sfWebRequest $request)
  {
    $this->talk = Doctrine::getTable('Talk')->find(array($request->getParameter('id')));
    $this->forward404Unless($this->talk);
  }

  public function executeNew(sfWebRequest $request)
  {
    $this->form = new TalkForm();
  }

  public function executeCreate(sfWebRequest $request)
  {
    $this->forward404Unless($request->isMethod(sfRequest::POST));

    $this->form = new TalkForm();

    $this->processForm($request, $this->form);

    $this->setTemplate('new');
  }

  public function executeEdit(sfWebRequest $request)
  {
    $this->forward404Unless($talk = Doctrine::getTable('Talk')->find(array($request->getParameter('id'))), sprintf('Object talk does not exist (%s).', $request->getParameter('id')));
    $this->form = new TalkForm($talk);
  }

  public function executeUpdate(sfWebRequest $request)
  {
    $this->forward404Unless($request->isMethod(sfRequest::POST) || $request->isMethod(sfRequest::PUT));
    $this->forward404Unless($talk = Doctrine::getTable('Talk')->find(array($request->getParameter('id'))), sprintf('Object talk does not exist (%s).', $request->getParameter('id')));
    $this->form = new TalkForm($talk);

    $this->processForm($request, $this->form);

    $this->setTemplate('edit');
  }

  public function executeDelete(sfWebRequest $request)
  {
    $request->checkCSRFProtection();

    $this->forward404Unless($talk = Doctrine::getTable('Talk')->find(array($request->getParameter('id'))), sprintf('Object talk does not exist (%s).', $request->getParameter('id')));
    $talk->delete();

    $this->redirect('talk/index');
  }

  protected function processForm(sfWebRequest $request, sfForm $form)
  {
    $form->bind($request->getParameter($form->getName()), $request->getFiles($form->getName()));
    if ($form->isValid())
    {
      $talk = $form->save();

      $this->redirect('talk/edit?id='.$talk->getId());
    }
  }
}
