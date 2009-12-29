<?php

require_once 'D:\\WebServers\\symfony-1.3.0ALPHA2\\lib/autoload/sfCoreAutoload.class.php';
sfCoreAutoload::register();

class ProjectConfiguration extends sfProjectConfiguration {
  public function setup() {
    require_once sfConfig::get('sf_lib_dir').'/FirePHP/fb.php';
    $this->enablePlugins('sfDoctrinePlugin');
  }
  public function setWebDir($webDir) {
    sfConfig::add(array(
        'sf_web_dir'    => $this->getRootDir().DIRECTORY_SEPARATOR.'www',
        'sf_upload_dir' => $this->getRootDir().DIRECTORY_SEPARATOR.'www'.DIRECTORY_SEPARATOR.'uploads',
    ));
  }
}
