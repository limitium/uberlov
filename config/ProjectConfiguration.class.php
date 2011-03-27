<?php

require_once 'g:\\WebServers\\symfony-1.4.3\\lib/autoload/sfCoreAutoload.class.php';
sfCoreAutoload::register();

class ProjectConfiguration extends sfProjectConfiguration {

    public function setup() {
        require_once sfConfig::get('sf_lib_dir') . DIRECTORY_SEPARATOR . 'FirePHP' . DIRECTORY_SEPARATOR . 'fb.php';

        $this->enablePlugins('sfDoctrinePlugin');
        $this->enablePlugins('sfDoctrineGuardPlugin');
        $this->enablePlugins('sfDoctrineActAsTaggablePlugin');
        $this->enablePlugins('sfJqueryReloadedPlugin');
        $this->enablePlugins('sfThumbnailPlugin');
        $this->enablePlugins('sfForkedDoctrineApplyPlugin');
    }

    public function setWebDir($webDir) {
        sfConfig::add(array(
                    'sf_web_dir' => $this->getRootDir() . DIRECTORY_SEPARATOR . 'www',
                    'sf_upload_dir' => $this->getRootDir() . DIRECTORY_SEPARATOR . 'www' . DIRECTORY_SEPARATOR . 'uploads',
                    'sf_user_pic_dir' => $this->getRootDir() . DIRECTORY_SEPARATOR . 'www' . DIRECTORY_SEPARATOR . 'images' . DIRECTORY_SEPARATOR . 'userpic' . DIRECTORY_SEPARATOR,
                ));
    }

}
