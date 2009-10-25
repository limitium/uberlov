<?php

/**
 * Point form base class.
 *
 * @package    HT
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id$
 */
class BasePointForm extends BaseFormDoctrine
{
  public function setup()
  {
    $this->setWidgets(array(
      'id'        => new sfWidgetFormInputHidden(),
      'route_id'  => new sfWidgetFormDoctrineChoice(array('model' => 'Route', 'add_empty' => true)),
      'latitude'  => new sfWidgetFormInputText(),
      'longitude' => new sfWidgetFormInputText(),
    ));

    $this->setValidators(array(
      'id'        => new sfValidatorDoctrineChoice(array('model' => $this->getModelName(), 'column' => 'id', 'required' => false)),
      'route_id'  => new sfValidatorDoctrineChoice(array('model' => 'Route', 'required' => false)),
      'latitude'  => new sfValidatorNumber(array('required' => false)),
      'longitude' => new sfValidatorNumber(array('required' => false)),
    ));

    $this->widgetSchema->setNameFormat('point[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    $this->setupInheritance();

    parent::setup();
  }

  public function getModelName()
  {
    return 'Point';
  }

}
