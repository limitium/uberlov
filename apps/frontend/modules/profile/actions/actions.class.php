<?php

/**
 * profile actions.
 *
 * @package    FISHERY
 * @subpackage profile
 * @author     Your name here
 * @version    SVN: $Id: actions.class.php 23810 2009-11-12 11:07:44Z Kris.Wallsmith $
 */
class profileActions extends sfActions {

    public function executeIndex(sfWebRequest $request) {
        $this->profiles = Doctrine::getTable('Profile')
                        ->createQuery('a')
                        ->execute();
    }

    public function executeShow(sfWebRequest $request) {
        $this->profile = Doctrine::getTable('Profile')->find(array($request->getParameter('id')));
        $this->forward404Unless($this->profile);

        $this->view = $request->getParameter('view');
        if (!in_array($this->view, array('comments', 'profits','locations'))) {
            $this->view = 'profile';
        }

        $this->comments = Doctrine_Query::create()
                        ->from('Comment c')
                        ->where('c.created_by = ? and c.parent > 0', $this->profile->getId())
                        ->execute();
        $this->profits = Doctrine_Query::create()
                        ->from('Profit p')
                        ->leftJoin('p.ProfitDetail d')
                        ->leftJoin('d.Fish f')
                        ->leftJoin('d.Style s')
                        ->where('p.created_by = ?', $this->profile->getId())
                        ->execute();
        $this->locations = Doctrine_Query::create()
                        ->from('Location l')
                        ->where('l.created_by = ?', $this->profile->getId())
                        ->execute();

        $this->total = 0;
        $this->best = array(
            'name' => 'фигавль',
            'qty' => 0,
            'location' => null);
        foreach ($this->profits as $profit) {
            if ($this->best['qty'] < $profit->getBestWeight()) {
                $this->best['qty'] = $profit->getBestWeight();
                $this->best['name'] = $profit->getFish();
                $this->best['location'] = $profit->getLocation();
            }
            foreach ($profit->getProfitDetail() as $pd) {
                $this->total+=$pd->getQty();
            }
        }
    }

    public function executeNew(sfWebRequest $request) {
        $this->form = new ProfileForm();
    }

    public function executeCreate(sfWebRequest $request) {
        $this->forward404Unless($request->isMethod(sfRequest::POST));

        $this->form = new ProfileForm();

        $this->processForm($request, $this->form);

        $this->setTemplate('new');
    }

    public function executeEdit(sfWebRequest $request) {
        $this->forward404Unless($profile = Doctrine::getTable('Profile')->find(array($request->getParameter('id'))), sprintf('Object profile does not exist (%s).', $request->getParameter('id')));
        $this->form = new ProfileForm($profile);
    }

    public function executeUpdate(sfWebRequest $request) {
        $this->forward404Unless($request->isMethod(sfRequest::POST) || $request->isMethod(sfRequest::PUT));
        $this->forward404Unless($profile = Doctrine::getTable('Profile')->find(array($request->getParameter('id'))), sprintf('Object profile does not exist (%s).', $request->getParameter('id')));
        $this->form = new ProfileForm($profile);

        $this->processForm($request, $this->form);

        $this->setTemplate('edit');
    }

    public function executeDelete(sfWebRequest $request) {
        $request->checkCSRFProtection();

        $this->forward404Unless($profile = Doctrine::getTable('Profile')->find(array($request->getParameter('id'))), sprintf('Object profile does not exist (%s).', $request->getParameter('id')));
        $profile->delete();

        $this->redirect('profile/index');
    }

    protected function processForm(sfWebRequest $request, sfForm $form) {
        $form->bind($request->getParameter($form->getName()), $request->getFiles($form->getName()));
        if ($form->isValid()) {
            $profile = $form->save();

            $this->redirect('profile/edit?id=' . $profile->getId());
        }
    }

}
