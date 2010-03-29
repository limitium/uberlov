<?php

/**
 * ProfitSyle filter form base class.
 *
 * @package    HT
 * @subpackage filter
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormFilterGeneratedTemplate.php 24171 2009-11-19 16:37:50Z Kris.Wallsmith $
 */
abstract class BaseProfitSyleFormFilter extends BaseFormFilterDoctrine
{
  public function setup()
  {
    $this->setWidgets(array(
      'Style_id'  => new sfWidgetFormDoctrineChoice(array('model' => $this->getRelatedModelName('Style'), 'add_empty' => true)),
      'Profit_id' => new sfWidgetFormDoctrineChoice(array('model' => $this->getRelatedModelName('Profit'), 'add_empty' => true)),
    ));

    $this->setValidators(array(
      'Style_id'  => new sfValidatorDoctrineChoice(array('required' => false, 'model' => $this->getRelatedModelName('Style'), 'column' => 'id')),
      'Profit_id' => new sfValidatorDoctrineChoice(array('required' => false, 'model' => $this->getRelatedModelName('Profit'), 'column' => 'id')),
    ));

    $this->widgetSchema->setNameFormat('profit_syle_filters[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    $this->setupInheritance();

    parent::setup();
  }

  public function getModelName()
  {
    return 'ProfitSyle';
  }

  public function getFields()
  {
    return array(
      'ID'        => 'Number',
      'Style_id'  => 'ForeignKey',
      'Profit_id' => 'ForeignKey',
    );
  }
}
