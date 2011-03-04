<?php

/**
 * Friend form base class.
 *
 * @method Friend getObject() Returns the current form's model object
 *
 * @package    FISHERY
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormGeneratedTemplate.php 24171 2009-11-19 16:37:50Z Kris.Wallsmith $
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
      'requester_id' => new sfValidatorDoctrineChoice(array('model' => $this->getModelName(), 'column' => 'requester_id', 'required' => false)),
      'accepter_id'  => new sfValidatorDoctrineChoice(array('model' => $this->getModelName(), 'column' => 'accepter_id', 'required' => false)),
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
