<?php

/**
 * Friend form base class.
 *
 * @method Friend getObject() Returns the current form's model object
 *
 * @package    FISHERY
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormGeneratedTemplate.php 29553 2010-05-20 14:33:00Z Kris.Wallsmith $
 */
abstract class BaseFriendForm extends BaseFormDoctrine
{
  public function setup()
  {
    $this->setWidgets(array(
      'source_profile_id'  => new sfWidgetFormInputHidden(),
      'related_profile_id' => new sfWidgetFormInputHidden(),
    ));

    $this->setValidators(array(
      'source_profile_id'  => new sfValidatorChoice(array('choices' => array($this->getObject()->get('source_profile_id')), 'empty_value' => $this->getObject()->get('source_profile_id'), 'required' => false)),
      'related_profile_id' => new sfValidatorChoice(array('choices' => array($this->getObject()->get('related_profile_id')), 'empty_value' => $this->getObject()->get('related_profile_id'), 'required' => false)),
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
