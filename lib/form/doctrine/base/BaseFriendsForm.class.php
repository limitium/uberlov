<?php

/**
 * Friends form base class.
 *
 * @method Friends getObject() Returns the current form's model object
 *
 * @package    FISHERY
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormGeneratedTemplate.php 24171 2009-11-19 16:37:50Z Kris.Wallsmith $
 */
abstract class BaseFriendsForm extends BaseFormDoctrine
{
  public function setup()
  {
    $this->setWidgets(array(
      'source_profile_id'  => new sfWidgetFormInputHidden(),
      'related_profile_id' => new sfWidgetFormInputHidden(),
    ));

    $this->setValidators(array(
      'source_profile_id'  => new sfValidatorDoctrineChoice(array('model' => $this->getModelName(), 'column' => 'source_profile_id', 'required' => false)),
      'related_profile_id' => new sfValidatorDoctrineChoice(array('model' => $this->getModelName(), 'column' => 'related_profile_id', 'required' => false)),
    ));

    $this->widgetSchema->setNameFormat('friends[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    $this->setupInheritance();

    parent::setup();
  }

  public function getModelName()
  {
    return 'Friends';
  }

}
