<?php

/**
 * Location form base class.
 *
 * @package    HT
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id$
 */
class BaseLocationForm extends BaseFormDoctrine
{
  public function setup()
  {
    $this->setWidgets(array(
      'id'               => new sfWidgetFormInputHidden(),
      'name'             => new sfWidgetFormInputText(),
      'description'      => new sfWidgetFormTextarea(),
      'location_type_id' => new sfWidgetFormDoctrineChoice(array('model' => 'LocationType', 'add_empty' => true)),
      'latitude'         => new sfWidgetFormInputText(),
      'longitude'        => new sfWidgetFormInputText(),
      'created_at'       => new sfWidgetFormDateTime(),
      'updated_at'       => new sfWidgetFormDateTime(),
    ));

    $this->setValidators(array(
      'id'               => new sfValidatorDoctrineChoice(array('model' => $this->getModelName(), 'column' => 'id', 'required' => false)),
      'name'             => new sfValidatorString(array('max_length' => 50, 'required' => false)),
      'description'      => new sfValidatorString(array('required' => false)),
      'location_type_id' => new sfValidatorDoctrineChoice(array('model' => 'LocationType', 'required' => false)),
      'latitude'         => new sfValidatorNumber(array('required' => false)),
      'longitude'        => new sfValidatorNumber(array('required' => false)),
      'created_at'       => new sfValidatorDateTime(),
      'updated_at'       => new sfValidatorDateTime(),
    ));

    $this->widgetSchema->setNameFormat('location[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    $this->setupInheritance();

    parent::setup();
  }

  public function getModelName()
  {
    return 'Location';
  }

}
