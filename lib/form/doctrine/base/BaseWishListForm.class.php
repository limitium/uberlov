<?php

/**
 * WishList form base class.
 *
 * @method WishList getObject() Returns the current form's model object
 *
 * @package    FISHERY
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormGeneratedTemplate.php 24171 2009-11-19 16:37:50Z Kris.Wallsmith $
 */
abstract class BaseWishListForm extends BaseFormDoctrine
{
  public function setup()
  {
    $this->setWidgets(array(
      'profile_id'  => new sfWidgetFormInputHidden(),
      'location_id' => new sfWidgetFormInputHidden(),
    ));

    $this->setValidators(array(
      'profile_id'  => new sfValidatorDoctrineChoice(array('model' => $this->getModelName(), 'column' => 'profile_id', 'required' => false)),
      'location_id' => new sfValidatorDoctrineChoice(array('model' => $this->getModelName(), 'column' => 'location_id', 'required' => false)),
    ));

    $this->widgetSchema->setNameFormat('wish_list[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    $this->setupInheritance();

    parent::setup();
  }

  public function getModelName()
  {
    return 'WishList';
  }

}
