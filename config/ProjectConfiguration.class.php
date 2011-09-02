<?php

require_once 'c:/webservers/symfony-1.4.10/lib/autoload/sfCoreAutoload.class.php';
sfCoreAutoload::register();

class ProjectConfiguration extends sfProjectConfiguration {

    static protected $zendLoaded = false;

    static public function registerZend() {
        if (self::$zendLoaded) {
            return;
        }

        set_include_path(sfConfig::get('sf_lib_dir') . '/vendor' . PATH_SEPARATOR . get_include_path());
        require_once sfConfig::get('sf_lib_dir') . '/vendor/Zend/Loader/Autoloader.php';
        Zend_Loader_Autoloader::getInstance();
        self::$zendLoaded = true;
    }

    public function setup() {
        require_once sfConfig::get('sf_lib_dir') . DIRECTORY_SEPARATOR . 'FirePHP' . DIRECTORY_SEPARATOR . 'fb.php';

        $this->enablePlugins('sfDoctrinePlugin');
        $this->enablePlugins('sfDoctrineGuardPlugin');
        $this->enablePlugins('sfDoctrineActAsTaggablePlugin');
        $this->enablePlugins('sfJqueryReloadedPlugin');
        $this->enablePlugins('sfThumbnailPlugin');
        $this->enablePlugins('sfForkedDoctrineApplyPlugin');
        $this->enablePlugins('sfXssSafePlugin');
    }

    public function setWebDir($webDir) {
        sfConfig::add(array(
            'sf_web_dir' => $this->getRootDir() . DIRECTORY_SEPARATOR . 'www',
            'sf_upload_dir' => $this->getRootDir() . DIRECTORY_SEPARATOR . 'www' . DIRECTORY_SEPARATOR . 'uploads',
            'sf_user_pic_dir' => $this->getRootDir() . DIRECTORY_SEPARATOR . 'www' . DIRECTORY_SEPARATOR . 'images' . DIRECTORY_SEPARATOR . 'userpic' . DIRECTORY_SEPARATOR,
        ));
    }

}
