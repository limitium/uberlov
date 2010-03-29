<?php

/**
 * ProfitSyle form base class.
 *
 * @method ProfitSyle getObject() Returns the current form's model object
 *
 * @package    HT
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormGeneratedTemplate.php 24171 2009-11-19 16:37:50Z Kris.Wallsmith $
 */
abstract class BaseProfitSyleForm extends BaseFormDoctrine
{
  public function setup()
  {
    $this->setWidgets(array(
      'ID'        => new sfWidgetFormInputHidden(),
      'Style_id'  => new sfWidgetFormDoctrineChoice(array('model' => $this->getRelatedModelName('Style'), 'add_empty' => false)),
      'Profit_id' => new sfWidgetFormDoctrineChoice(array('model' => $this->getRelatedModelName('Profit'), 'add_empty' => false)),
    ));

    $this->setValidators(array(
      'ID'        => new sfValidatorDoctrineChoice(array('model' => $this->getModelName(), 'column' => 'ID', 'required' => false)),
      'Style_id'  => new sfValidatorDoctrineChoice(array('model' => $this->getRelatedModelName('Style'))),
      'Profit_id' => new sfValidatorDoctrineChoice(array('model' => $this->getRelatedModelName('Profit'))),
    ));

    $this->validatorSchema->setPostValidator(
      new sfValidatorDoctrineUnique(array('model' => 'ProfitSyle', 'column' => array('ID')))
    );

    $this->widgetSchema->setNameFormat('profit_syle[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    $this->setupInheritance();

    parent::setup();
  }

  public function getModelName()
  {
    return 'ProfitSyle';
  }

}
