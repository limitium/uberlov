<?php
// auto-generated by sfViewConfigHandler
// date: 2010/03/29 18:47:31
$response = $this->context->getResponse();


  $templateName = sfConfig::get('symfony.view.'.$this->moduleName.'_'.$this->actionName.'_template', $this->actionName);
  $this->setTemplate($templateName.$this->viewName.$this->getExtension());



  if (null !== $layout = sfConfig::get('symfony.view.'.$this->moduleName.'_'.$this->actionName.'_layout'))
  {
    $this->setDecoratorTemplate(false === $layout ? false : $layout.$this->getExtension());
  }
  else if (null === $this->getDecoratorTemplate() && !$this->context->getRequest()->isXmlHttpRequest())
  {
    $this->setDecoratorTemplate('' == 'layout' ? false : 'layout'.$this->getExtension());
  }
  $response->addHttpMeta('content-type', 'text/html', false);
  $response->addMeta('title', 'symfony project', false, false);
  $response->addMeta('description', 'symfony project', false, false);
  $response->addMeta('keywords', 'symfony, project', false, false);
  $response->addMeta('language', 'en', false, false);
  $response->addMeta('robots', 'index, follow', false, false);

  $response->addStylesheet('main', '', array ());
  $response->addJavascript('lib/jquery-1.4.2.js', '', array ());
  $response->addJavascript('lib/jqueryBlockUI', '', array ());
  $response->addJavascript('moduleManager', '', array ());


