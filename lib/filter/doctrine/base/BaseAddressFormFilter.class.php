<?php

/**
 * Address filter form base class.
 *
 * @package    FISHERY
 * @subpackage filter
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormFilterGeneratedTemplate.php 24171 2009-11-19 16:37:50Z Kris.Wallsmith $
 */
abstract class BaseAddressFormFilter extends BaseFormFilterDoctrine
{
  public function setup()
  {
    $this->setWidgets(array(
      'country_id'   => new sfWidgetFormDoctrineChoice(array('model' => $this->getRelatedModelName('Country'), 'add_empty' => true)),
      'area_low_id'  => new sfWidgetFormDoctrineChoice(array('model' => $this->getRelatedModelName('AreaLow'), 'add_empty' => true)),
      'area_high_id' => new sfWidgetFormDoctrineChoice(array('model' => $this->getRelatedModelName('AreaHigh'), 'add_empty' => true)),
      'locality_id'  => new sfWidgetFormDoctrineChoice(array('model' => $this->getRelatedModelName('Locality'), 'add_empty' => true)),
    ));

    $this->setValidators(array(
      'country_id'   => new sfValidatorDoctrineChoice(array('required' => false, 'model' => $this->getRelatedModelName('Country'), 'column' => 'id')),
      'area_low_id'  => new sfValidatorDoctrineChoice(array('required' => false, 'model' => $this->getRelatedModelName('AreaLow'), 'column' => 'id')),
      'area_high_id' => new sfValidatorDoctrineChoice(array('required' => false, 'model' => $this->getRelatedModelName('AreaHigh'), 'column' => 'id')),
      'locality_id'  => new sfValidatorDoctrineChoice(array('required' => false, 'model' => $this->getRelatedModelName('Locality'), 'column' => 'id')),
    ));

    $this->widgetSchema->setNameFormat('address_filters[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    $this->setupInheritance();

    parent::setup();
  }

  public function getModelName()
  {
    return 'Address';
  }

  public function getFields()
  {
    return array(
      'id'           => 'Number',
      'country_id'   => 'ForeignKey',
      'area_low_id'  => 'ForeignKey',
      'area_high_id' => 'ForeignKey',
      'locality_id'  => 'ForeignKey',
    );
  }
}
