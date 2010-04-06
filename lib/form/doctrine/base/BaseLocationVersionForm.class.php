<?php

/**
 * LocationVersion form base class.
 *
 * @method LocationVersion getObject() Returns the current form's model object
 *
 * @package    FISHERY
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormGeneratedTemplate.php 24171 2009-11-19 16:37:50Z Kris.Wallsmith $
 */
abstract class BaseLocationVersionForm extends BaseFormDoctrine
{
  public function setup()
  {
    $this->setWidgets(array(
      'id'                 => new sfWidgetFormInputHidden(),
      'name'               => new sfWidgetFormInputText(),
      'description'        => new sfWidgetFormTextarea(),
      'depth'              => new sfWidgetFormInputText(),
      'location_flow_id'   => new sfWidgetFormInputText(),
      'location_fundus_id' => new sfWidgetFormInputText(),
      'location_relief_id' => new sfWidgetFormInputText(),
      'location_type_id'   => new sfWidgetFormInputText(),
      'location_scope_id'  => new sfWidgetFormInputText(),
      'created_by'         => new sfWidgetFormInputText(),
      'updated_by'         => new sfWidgetFormInputText(),
      'latitude'           => new sfWidgetFormInputText(),
      'longitude'          => new sfWidgetFormInputText(),
      'slug'               => new sfWidgetFormInputText(),
      'created_at'         => new sfWidgetFormDateTime(),
      'updated_at'         => new sfWidgetFormDateTime(),
      'version'            => new sfWidgetFormInputHidden(),
    ));

    $this->setValidators(array(
      'id'                 => new sfValidatorDoctrineChoice(array('model' => $this->getModelName(), 'column' => 'id', 'required' => false)),
      'name'               => new sfValidatorString(array('max_length' => 50, 'required' => false)),
      'description'        => new sfValidatorString(array('required' => false)),
      'depth'              => new sfValidatorNumber(array('required' => false)),
      'location_flow_id'   => new sfValidatorInteger(array('required' => false)),
      'location_fundus_id' => new sfValidatorInteger(array('required' => false)),
      'location_relief_id' => new sfValidatorInteger(array('required' => false)),
      'location_type_id'   => new sfValidatorInteger(array('required' => false)),
      'location_scope_id'  => new sfValidatorInteger(array('required' => false)),
      'created_by'         => new sfValidatorPass(),
      'updated_by'         => new sfValidatorPass(),
      'latitude'           => new sfValidatorPass(array('required' => false)),
      'longitude'          => new sfValidatorPass(array('required' => false)),
      'slug'               => new sfValidatorString(array('max_length' => 255, 'required' => false)),
      'created_at'         => new sfValidatorDateTime(),
      'updated_at'         => new sfValidatorDateTime(),
      'version'            => new sfValidatorDoctrineChoice(array('model' => $this->getModelName(), 'column' => 'version', 'required' => false)),
    ));

    $this->widgetSchema->setNameFormat('location_version[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    $this->setupInheritance();

    parent::setup();
  }

  public function getModelName()
  {
    return 'LocationVersion';
  }

}
