<?php

class sfJqueryFormValRouting
{
  static public function addRoute(sfEvent $event)
  {
    $event->getSubject()->prependRoute('sf_jquery_form_validation',
                                       new sfRoute('/sfJqueryFormVal/:form.:sf_format',
                                                   array('module' => 'sfJqueryFormVal', 'action' => 'index','sf_format'=>'js')));
    $event->getSubject()->prependRoute('sf_jquery_form_remote',
                                       new sfRoute('/sfJqueryFormVal/remote/:form/:validator',
                                                   array('module' => 'sfJqueryFormVal', 'action' => 'remote')));
  }
}
