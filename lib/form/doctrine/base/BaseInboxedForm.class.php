<?php

/**
 * Inboxed form base class.
 *
 * @method Inboxed getObject() Returns the current form's model object
 *
 * @package    FISHERY
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormGeneratedTemplate.php 29553 2010-05-20 14:33:00Z Kris.Wallsmith $
 */
abstract class BaseInboxedForm extends BaseFormDoctrine
{
  public function setup()
  {
    $this->setWidgets(array(
      'inbox_id'   => new sfWidgetFormInputHidden(),
      'profile_id' => new sfWidgetFormInputHidden(),
    ));

    $this->setValidators(array(
      'inbox_id'   => new sfValidatorChoice(array('choices' => array($this->getObject()->get('inbox_id')), 'empty_value' => $this->getObject()->get('inbox_id'), 'required' => false)),
      'profile_id' => new sfValidatorChoice(array('choices' => array($this->getObject()->get('profile_id')), 'empty_value' => $this->getObject()->get('profile_id'), 'required' => false)),
    ));

    $this->widgetSchema->setNameFormat('inboxed[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    $this->setupInheritance();

    parent::setup();
  }

  public function getModelName()
  {
    return 'Inboxed';
  }

}
