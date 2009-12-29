<?php

/**
 * IMport from.
 *
 * @package    HT
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id$
 */
class ImportForm extends BaseForm {
  static public $types = array('locations' => 'Locations','points' => 'Points');
  static public $importers = array('ozi' => 'OZI');
  public function setup() {
    $this->setWidgets(array(
        'importer'    => new sfWidgetFormChoice(array(
          'choices'  => self::$importers,
          'expanded' => false,
          )),
        'file'        => new sfWidgetFormInputFile(),
    ));

    $this->setValidators(array(
        'importer'  => new sfValidatorChoice(array(
          'choices' => array_keys(self::$importers),
          )),
        'file'  => new sfValidatorFile(array(
          'required'        => true,
          'max_size'        => 100000,
          'path'            => sfConfig::get('sf_upload_dir').'/imports',
          'mime_types'      => 'gps_files',
          'mime_categories' => array(
            'gps_files' => array(
              'application/octet-stream',
          ))
        )),
    ));

    $this->widgetSchema->setNameFormat('import[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);


    parent::setup();
  }
}