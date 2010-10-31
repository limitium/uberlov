<?php

/**
 * FishEvent form base class.
 *
 * @method FishEvent getObject() Returns the current form's model object
 *
 * @package    FISHERY
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormGeneratedTemplate.php 24171 2009-11-19 16:37:50Z Kris.Wallsmith $
 */
abstract class BaseFishEventForm extends BaseFormDoctrine
{
  public function setup()
  {
    $this->setWidgets(array(
      'id'          => new sfWidgetFormInputHidden(),
      'date'        => new sfWidgetFormDate(),
      'name'        => new sfWidgetFormInputText(),
      'description' => new sfWidgetFormTextarea(),
      'location_id' => new sfWidgetFormDoctrineChoice(array('model' => $this->getRelatedModelName('Location'), 'add_empty' => false)),
      'created_by'  => new sfWidgetFormInputText(),
      'updated_by'  => new sfWidgetFormInputText(),
    ));

    $this->setValidators(array(
      'id'          => new sfValidatorDoctrineChoice(array('model' => $this->getModelName(), 'column' => 'id', 'required' => false)),
      'date'        => new sfValidatorDate(),
      'name'        => new sfValidatorString(array('max_length' => 50)),
      'description' => new sfValidatorString(),
      'location_id' => new sfValidatorDoctrineChoice(array('model' => $this->getRelatedModelName('Location'))),
      'created_by'  => new sfValidatorInteger(),
      'updated_by'  => new sfValidatorInteger(),
    ));

    $this->widgetSchema->setNameFormat('fish_event[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    $this->setupInheritance();

    parent::setup();
  }

  public function getModelName()
  {
    return 'FishEvent';
  }

}
