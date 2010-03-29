<?php

/**
 * ProfitFish filter form base class.
 *
 * @package    HT
 * @subpackage filter
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormFilterGeneratedTemplate.php 24171 2009-11-19 16:37:50Z Kris.Wallsmith $
 */
abstract class BaseProfitFishFormFilter extends BaseFormFilterDoctrine
{
  public function setup()
  {
    $this->setWidgets(array(
      'Fish_id'   => new sfWidgetFormDoctrineChoice(array('model' => $this->getRelatedModelName('Fish'), 'add_empty' => true)),
      'Profit_id' => new sfWidgetFormDoctrineChoice(array('model' => $this->getRelatedModelName('Profit'), 'add_empty' => true)),
      'qty'       => new sfWidgetFormFilterInput(array('with_empty' => false)),
    ));

    $this->setValidators(array(
      'Fish_id'   => new sfValidatorDoctrineChoice(array('required' => false, 'model' => $this->getRelatedModelName('Fish'), 'column' => 'id')),
      'Profit_id' => new sfValidatorDoctrineChoice(array('required' => false, 'model' => $this->getRelatedModelName('Profit'), 'column' => 'id')),
      'qty'       => new sfValidatorSchemaFilter('text', new sfValidatorNumber(array('required' => false))),
    ));

    $this->widgetSchema->setNameFormat('profit_fish_filters[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    $this->setupInheritance();

    parent::setup();
  }

  public function getModelName()
  {
    return 'ProfitFish';
  }

  public function getFields()
  {
    return array(
      'ID'        => 'Number',
      'Fish_id'   => 'ForeignKey',
      'Profit_id' => 'ForeignKey',
      'qty'       => 'Number',
    );
  }
}
