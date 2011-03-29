<?php

/**
 * Friend form base class.
 *
 * @method Friend getObject() Returns the current form's model object
 *
 * @package    FISHERY
 * @subpackage form
 * @author     Sergei Belov <limitium@gmail.com>
 * @version    SVN: $Id: sfDoctrineFormGeneratedTemplate.php 29553 2010-05-20 14:33:00Z Kris.Wallsmith $
 */
abstract class BaseFriendForm extends BaseFormDoctrine
{
  public function setup()
  {
    $this->setWidgets(array(
      'requester_id' => new sfWidgetFormInputHidden(),
      'accepter_id'  => new sfWidgetFormInputHidden(),
      'accepted'     => new sfWidgetFormInputCheckbox(),
    ));

    $this->setValidators(array(
      'requester_id' => new sfValidatorChoice(array('choices' => array($this->getObject()->get('requester_id')), 'empty_value' => $this->getObject()->get('requester_id'), 'required' => false)),
      'accepter_id'  => new sfValidatorChoice(array('choices' => array($this->getObject()->get('accepter_id')), 'empty_value' => $this->getObject()->get('accepter_id'), 'required' => false)),
      'accepted'     => new sfValidatorBoolean(array('required' => false)),
    ));

    $this->widgetSchema->setNameFormat('friend[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    $this->setupInheritance();

    parent::setup();
  }

  public function getModelName()
  {
    return 'Friend';
  }

}
