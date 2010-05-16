<?php

/**
 * Address form base class.
 *
 * @method Address getObject() Returns the current form's model object
 *
 * @package    FISHERY
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormGeneratedTemplate.php 24171 2009-11-19 16:37:50Z Kris.Wallsmith $
 */
abstract class BaseAddressForm extends BaseFormDoctrine
{
  public function setup()
  {
    $this->setWidgets(array(
      'id'                          => new sfWidgetFormInputHidden(),
      'country'                     => new sfWidgetFormTextarea(),
      'administrative_area_level_1' => new sfWidgetFormTextarea(),
      'administrative_area_level_2' => new sfWidgetFormTextarea(),
      'administrative_area_level_3' => new sfWidgetFormTextarea(),
      'locality'                    => new sfWidgetFormTextarea(),
    ));

    $this->setValidators(array(
      'id'                          => new sfValidatorDoctrineChoice(array('model' => $this->getModelName(), 'column' => 'id', 'required' => false)),
      'country'                     => new sfValidatorString(array('required' => false)),
      'administrative_area_level_1' => new sfValidatorString(array('required' => false)),
      'administrative_area_level_2' => new sfValidatorString(array('required' => false)),
      'administrative_area_level_3' => new sfValidatorString(array('required' => false)),
      'locality'                    => new sfValidatorString(array('required' => false)),
    ));

    $this->widgetSchema->setNameFormat('address[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    $this->setupInheritance();

    parent::setup();
  }

  public function getModelName()
  {
    return 'Address';
  }

}
