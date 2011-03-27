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
      'is_free'            => new sfWidgetFormInputCheckbox(),
      'price'              => new sfWidgetFormTextarea(),
      'location_flow_id'   => new sfWidgetFormInputText(),
      'location_fundus_id' => new sfWidgetFormInputText(),
      'location_relief_id' => new sfWidgetFormInputText(),
      'location_type_id'   => new sfWidgetFormInputText(),
      'location_scope_id'  => new sfWidgetFormInputText(),
      'address_id'         => new sfWidgetFormInputText(),
      'version'            => new sfWidgetFormInputHidden(),
    ));

    $this->setValidators(array(
      'id'                 => new sfValidatorDoctrineChoice(array('model' => $this->getModelName(), 'column' => 'id', 'required' => false)),
      'name'               => new sfValidatorString(array('max_length' => 50, 'required' => false)),
      'description'        => new sfValidatorString(array('required' => false)),
      'depth'              => new sfValidatorNumber(array('required' => false)),
      'is_free'            => new sfValidatorBoolean(array('required' => false)),
      'price'              => new sfValidatorString(array('required' => false)),
      'location_flow_id'   => new sfValidatorInteger(array('required' => false)),
      'location_fundus_id' => new sfValidatorInteger(array('required' => false)),
      'location_relief_id' => new sfValidatorInteger(array('required' => false)),
      'location_type_id'   => new sfValidatorInteger(array('required' => false)),
      'location_scope_id'  => new sfValidatorInteger(array('required' => false)),
      'address_id'         => new sfValidatorInteger(array('required' => false)),
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
