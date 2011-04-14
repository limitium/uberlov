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
        $result = 'All broken :(';
        try {
            //@todo: added CSRF check;

            $fileData = array_pop($request->getFiles());

            $validator = new sfValidatorFile(array(
                        'max_size' => 1024 * 1024,
                        'mime_types' => array(
                            'image/jpeg',
                            'image/pjpeg',
                            'image/png',
                            'image/x-png',
                            'image/gif',
                            'application/octet-stream'
                        )
                    ));

            $file = $validator->clean($fileData);
            $file instanceof sfValidatedFile;

            $uploader = new ImageUploader();

            $uploaded = $uploader->login()->upload($file->getTempName());

            $photo = new Photo();
            $photo->name = $uploaded->image;
            $photo->thumb = $uploaded->thumb;
            $photo->save();
            $result = array(
                'id' => $photo->getId(),
                'image' => $uploaded->image,
                'thumb' => $uploaded->thumb
            );
        } catch (Exception $e) {
            $result = $e->getMessage();
        }
        return $this->renderText(json_encode($result));
    }

}
