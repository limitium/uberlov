<?php

/**
 * AreaLow form base class.
 *
 * @method AreaLow getObject() Returns the current form's model object
 *
 * @package    FISHERY
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormGeneratedTemplate.php 24171 2009-11-19 16:37:50Z Kris.Wallsmith $
 */
abstract class BaseAreaLowForm extends BaseFormDoctrine
{
  public function setup()
  {
    $this->setWidgets(array(
      'id'         => new sfWidgetFormInputHidden(),
      'name'       => new sfWidgetFormInputText(),
      'country_id' => new sfWidgetFormDoctrineChoice(array('model' => $this->getRelatedModelName('Country'), 'add_empty' => true)),
    ));

    $this->setValidators(array(
      'id'         => new sfValidatorDoctrineChoice(array('model' => $this->getModelName(), 'column' => 'id', 'required' => false)),
      'name'       => new sfValidatorString(array('max_length' => 255)),
      'country_id' => new sfValidatorDoctrineChoice(array('model' => $this->getRelatedModelName('Country'), 'required' => false)),
    ));

    $this->validatorSchema->setPostValidator(
      new sfValidatorDoctrineUnique(array('model' => 'AreaLow', 'column' => array('name')))
    );

    $this->widgetSchema->setNameFormat('area_low[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    $this->setupInheritance();

    parent::setup();
  }

  public function getModelName()
  {
    return 'AreaLow';
  }

}
