<?php

/**
 * Inboxed form base class.
 *
 * @method Inboxed getObject() Returns the current form's model object
 *
 * @package    FISHERY
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormGeneratedTemplate.php 24171 2009-11-19 16:37:50Z Kris.Wallsmith $
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
      'inbox_id'   => new sfValidatorDoctrineChoice(array('model' => $this->getModelName(), 'column' => 'inbox_id', 'required' => false)),
      'profile_id' => new sfValidatorDoctrineChoice(array('model' => $this->getModelName(), 'column' => 'profile_id', 'required' => false)),
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
