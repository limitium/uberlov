<?php

/**
 * WishList form base class.
 *
 * @method WishList getObject() Returns the current form's model object
 *
 * @package    FISHERY
 * @subpackage form
 * @author     Sergei Belov <limitium@gmail.com>
 * @version    SVN: $Id: sfDoctrineFormGeneratedTemplate.php 29553 2010-05-20 14:33:00Z Kris.Wallsmith $
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
      'profile_id'  => new sfValidatorChoice(array('choices' => array($this->getObject()->get('profile_id')), 'empty_value' => $this->getObject()->get('profile_id'), 'required' => false)),
      'location_id' => new sfValidatorChoice(array('choices' => array($this->getObject()->get('location_id')), 'empty_value' => $this->getObject()->get('location_id'), 'required' => false)),
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
