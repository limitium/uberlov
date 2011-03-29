<?php

/**
 * AreaHigh filter form base class.
 *
 * @package    FISHERY
 * @subpackage filter
 * @author     Sergei Belov <limitium@gmail.com>
 * @version    SVN: $Id: sfDoctrineFormFilterGeneratedTemplate.php 29570 2010-05-21 14:49:47Z Kris.Wallsmith $
 */
abstract class BaseAreaHighFormFilter extends BaseFormFilterDoctrine
{
  public function setup()
  {
    $this->setWidgets(array(
      'name'        => new sfWidgetFormFilterInput(array('with_empty' => false)),
      'area_low_id' => new sfWidgetFormDoctrineChoice(array('model' => $this->getRelatedModelName('AreaLow'), 'add_empty' => true)),
    ));

    $this->setValidators(array(
      'name'        => new sfValidatorPass(array('required' => false)),
      'area_low_id' => new sfValidatorDoctrineChoice(array('required' => false, 'model' => $this->getRelatedModelName('AreaLow'), 'column' => 'id')),
    ));

    $this->widgetSchema->setNameFormat('area_high_filters[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    $this->setupInheritance();

    parent::setup();
  }

  public function getModelName()
  {
    return 'AreaHigh';
  }

  public function getFields()
  {
    return array(
      'id'          => 'Number',
      'name'        => 'Text',
      'area_low_id' => 'ForeignKey',
    );
  }
}
