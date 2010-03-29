<?php

/**
 * Style filter form base class.
 *
 * @package    HT
 * @subpackage filter
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormFilterGeneratedTemplate.php 24171 2009-11-19 16:37:50Z Kris.Wallsmith $
 */
abstract class BaseStyleFormFilter extends BaseFormFilterDoctrine
{
  public function setup()
  {
    $this->setWidgets(array(
      'name'         => new sfWidgetFormFilterInput(array('with_empty' => false)),
      'profits_list' => new sfWidgetFormDoctrineChoice(array('multiple' => true, 'model' => 'Profit')),
    ));

    $this->setValidators(array(
      'name'         => new sfValidatorPass(array('required' => false)),
      'profits_list' => new sfValidatorDoctrineChoice(array('multiple' => true, 'model' => 'Profit', 'required' => false)),
    ));

    $this->widgetSchema->setNameFormat('style_filters[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    $this->setupInheritance();

    parent::setup();
  }

  public function addProfitsListColumnQuery(Doctrine_Query $query, $field, $values)
  {
    if (!is_array($values))
    {
      $values = array($values);
    }

    if (!count($values))
    {
      return;
    }

    $query->leftJoin('r.ProfitSyle ProfitSyle')
          ->andWhereIn('ProfitSyle.Profit_id', $values);
  }

  public function getModelName()
  {
    return 'Style';
  }

  public function getFields()
  {
    return array(
      'id'           => 'Number',
      'name'         => 'Text',
      'profits_list' => 'ManyKey',
    );
  }
}
