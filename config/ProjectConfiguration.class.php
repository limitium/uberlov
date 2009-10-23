<?php

require_once 'D:\\WebServers\\symfony-1.3.0ALPHA2\\lib/autoload/sfCoreAutoload.class.php';
sfCoreAutoload::register();

class ProjectConfiguration extends sfProjectConfiguration {
    public function setup() {
        require_once sfConfig::get('sf_lib_dir').'/FirePHP/fb.php';
        $this->enablePlugins('sfDoctrinePlugin');
    }
}
