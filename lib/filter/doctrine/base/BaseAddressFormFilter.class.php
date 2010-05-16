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
      'country'                     => new sfWidgetFormFilterInput(),
      'administrative_area_level_1' => new sfWidgetFormFilterInput(),
      'administrative_area_level_2' => new sfWidgetFormFilterInput(),
      'administrative_area_level_3' => new sfWidgetFormFilterInput(),
      'locality'                    => new sfWidgetFormFilterInput(),
    ));

    $this->setValidators(array(
      'country'                     => new sfValidatorPass(array('required' => false)),
      'administrative_area_level_1' => new sfValidatorPass(array('required' => false)),
      'administrative_area_level_2' => new sfValidatorPass(array('required' => false)),
      'administrative_area_level_3' => new sfValidatorPass(array('required' => false)),
      'locality'                    => new sfValidatorPass(array('required' => false)),
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
      'id'                          => 'Number',
      'country'                     => 'Text',
      'administrative_area_level_1' => 'Text',
      'administrative_area_level_2' => 'Text',
      'administrative_area_level_3' => 'Text',
      'locality'                    => 'Text',
    );
  }
}
