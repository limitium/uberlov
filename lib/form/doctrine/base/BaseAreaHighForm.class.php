<?php

/**
 * AreaHigh form base class.
 *
 * @method AreaHigh getObject() Returns the current form's model object
 *
 * @package    FISHERY
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormGeneratedTemplate.php 24171 2009-11-19 16:37:50Z Kris.Wallsmith $
 */
abstract class BaseAreaHighForm extends BaseFormDoctrine
{
  public function setup()
  {
    $this->setWidgets(array(
      'id'          => new sfWidgetFormInputHidden(),
      'name'        => new sfWidgetFormInputText(),
      'area_low_id' => new sfWidgetFormDoctrineChoice(array('model' => $this->getRelatedModelName('AreaLow'), 'add_empty' => true)),
    ));

    $this->setValidators(array(
      'id'          => new sfValidatorDoctrineChoice(array('model' => $this->getModelName(), 'column' => 'id', 'required' => false)),
      'name'        => new sfValidatorString(array('max_length' => 255)),
      'area_low_id' => new sfValidatorDoctrineChoice(array('model' => $this->getRelatedModelName('AreaLow'), 'required' => false)),
    ));

    $this->validatorSchema->setPostValidator(
      new sfValidatorDoctrineUnique(array('model' => 'AreaHigh', 'column' => array('name')))
    );

    $this->widgetSchema->setNameFormat('area_high[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    $this->setupInheritance();

    parent::setup();
  }

  public function getModelName()
  {
    return 'AreaHigh';
  }

}
