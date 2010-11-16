<?php

/**
 * photo actions.
 *
 * @package    FISHERY
 * @subpackage photo
 * @author     Your name here
 * @version    SVN: $Id: actions.class.php 23810 2009-11-12 11:07:44Z Kris.Wallsmith $
 */
class photoActions extends sfActions {

    public function executeUpload(sfWebRequest $request) {

        $fileData = array_pop($request->getFiles());

        move_uploaded_file($fileData["tmp_name"], sfConfig::get('sf_upload_dir') . DIRECTORY_SEPARATOR . $fileData['name']);

        die("FILEID:" . $fileData['name']);
    }

}
