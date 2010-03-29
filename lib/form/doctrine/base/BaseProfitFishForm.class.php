<?php

/**
 * ProfitFish form base class.
 *
 * @method ProfitFish getObject() Returns the current form's model object
 *
 * @package    HT
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormGeneratedTemplate.php 24171 2009-11-19 16:37:50Z Kris.Wallsmith $
 */
abstract class BaseProfitFishForm extends BaseFormDoctrine
{
  public function setup()
  {
    $this->setWidgets(array(
      'ID'        => new sfWidgetFormInputHidden(),
      'Fish_id'   => new sfWidgetFormDoctrineChoice(array('model' => $this->getRelatedModelName('Fish'), 'add_empty' => false)),
      'Profit_id' => new sfWidgetFormDoctrineChoice(array('model' => $this->getRelatedModelName('Profit'), 'add_empty' => false)),
      'qty'       => new sfWidgetFormInputText(),
    ));

    $this->setValidators(array(
      'ID'        => new sfValidatorDoctrineChoice(array('model' => $this->getModelName(), 'column' => 'ID', 'required' => false)),
      'Fish_id'   => new sfValidatorDoctrineChoice(array('model' => $this->getRelatedModelName('Fish'))),
      'Profit_id' => new sfValidatorDoctrineChoice(array('model' => $this->getRelatedModelName('Profit'))),
      'qty'       => new sfValidatorNumber(),
    ));

    $this->validatorSchema->setPostValidator(
      new sfValidatorDoctrineUnique(array('model' => 'ProfitFish', 'column' => array('ID')))
    );

    $this->widgetSchema->setNameFormat('profit_fish[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    $this->setupInheritance();

    parent::setup();
  }

  public function getModelName()
  {
    return 'ProfitFish';
  }

}
