<?php

/**
 * Profit form base class.
 *
 * @method Profit getObject() Returns the current form's model object
 *
 * @package    FISHERY
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormGeneratedTemplate.php 24171 2009-11-19 16:37:50Z Kris.Wallsmith $
 */
abstract class BaseProfitForm extends BaseFormDoctrine
{
  public function setup()
  {
    $this->setWidgets(array(
      'id'          => new sfWidgetFormInputHidden(),
      'location_id' => new sfWidgetFormDoctrineChoice(array('model' => $this->getRelatedModelName('Location'), 'add_empty' => true)),
      'begin'       => new sfWidgetFormDateTime(),
      'water_state' => new sfWidgetFormTextarea(),
      'lure'        => new sfWidgetFormTextarea(),
      'bait'        => new sfWidgetFormTextarea(),
      'additive'    => new sfWidgetFormTextarea(),
      'weather'     => new sfWidgetFormTextarea(),
      'cordage'     => new sfWidgetFormTextarea(),
      'description' => new sfWidgetFormTextarea(),
      'created_at'  => new sfWidgetFormDateTime(),
      'updated_at'  => new sfWidgetFormDateTime(),
      'created_by'  => new sfWidgetFormDoctrineChoice(array('model' => $this->getRelatedModelName('CreatedBy'), 'add_empty' => false)),
      'updated_by'  => new sfWidgetFormDoctrineChoice(array('model' => $this->getRelatedModelName('UpdatedBy'), 'add_empty' => false)),
    ));

    $this->setValidators(array(
      'id'          => new sfValidatorDoctrineChoice(array('model' => $this->getModelName(), 'column' => 'id', 'required' => false)),
      'location_id' => new sfValidatorDoctrineChoice(array('model' => $this->getRelatedModelName('Location'), 'required' => false)),
      'begin'       => new sfValidatorDateTime(),
      'water_state' => new sfValidatorString(array('required' => false)),
      'lure'        => new sfValidatorString(array('required' => false)),
      'bait'        => new sfValidatorString(array('required' => false)),
      'additive'    => new sfValidatorString(array('required' => false)),
      'weather'     => new sfValidatorString(array('required' => false)),
      'cordage'     => new sfValidatorString(array('required' => false)),
      'description' => new sfValidatorString(),
      'created_at'  => new sfValidatorDateTime(),
      'updated_at'  => new sfValidatorDateTime(),
      'created_by'  => new sfValidatorDoctrineChoice(array('model' => $this->getRelatedModelName('CreatedBy'))),
      'updated_by'  => new sfValidatorDoctrineChoice(array('model' => $this->getRelatedModelName('UpdatedBy'))),
    ));

    $this->widgetSchema->setNameFormat('profit[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    $this->setupInheritance();

    parent::setup();
  }

  public function getModelName()
  {
    return 'Profit';
  }

}
