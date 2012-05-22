<?php

require_once 'c:/WebServers/symfony-1.4.17/lib/autoload/sfCoreAutoload.class.php';
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
        Zend_Search_Lucene_Search_QueryParser::setDefaultEncoding('utf-8');
        Zend_Search_Lucene_Analysis_Analyzer::setDefault(
                new Zend_Search_Lucene_Analysis_Analyzer_Common_Utf8_CaseInsensitive()
        );


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
        $this->enablePlugins('sfJqueryFormValidationPlugin');
        $this->enablePlugins('swFunctionalTestGenerationPlugin');
        $this->enablePlugins('sfCombinePlugin');
    }

    public function setWebDir($webDir) {
        sfConfig::add(array(
            'sf_web_dir' => $this->getRootDir() . DIRECTORY_SEPARATOR . 'www',
            'sf_upload_dir' => $this->getRootDir() . DIRECTORY_SEPARATOR . 'www' . DIRECTORY_SEPARATOR . 'uploads',
            'sf_user_pic_dir' => $this->getRootDir() . DIRECTORY_SEPARATOR . 'www' . DIRECTORY_SEPARATOR . 'images' . DIRECTORY_SEPARATOR . 'userpic' . DIRECTORY_SEPARATOR,
        ));
    }

}
