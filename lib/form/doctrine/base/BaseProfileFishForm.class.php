<?php

/**
 * ProfileFish form base class.
 *
 * @method ProfileFish getObject() Returns the current form's model object
 *
 * @package    FISHERY
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormGeneratedTemplate.php 29553 2010-05-20 14:33:00Z Kris.Wallsmith $
 */
abstract class BaseProfileFishForm extends BaseFormDoctrine
{
  public function setup()
  {
    $this->setWidgets(array(
      'id'         => new sfWidgetFormInputHidden(),
      'fish_id'    => new sfWidgetFormDoctrineChoice(array('model' => $this->getRelatedModelName('Fish'), 'add_empty' => false)),
      'profile_id' => new sfWidgetFormDoctrineChoice(array('model' => $this->getRelatedModelName('Profile'), 'add_empty' => false)),
    ));

    $this->setValidators(array(
      'id'         => new sfValidatorChoice(array('choices' => array($this->getObject()->get('id')), 'empty_value' => $this->getObject()->get('id'), 'required' => false)),
      'fish_id'    => new sfValidatorDoctrineChoice(array('model' => $this->getRelatedModelName('Fish'))),
      'profile_id' => new sfValidatorDoctrineChoice(array('model' => $this->getRelatedModelName('Profile'))),
    ));

    $this->widgetSchema->setNameFormat('profile_fish[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    $this->setupInheritance();

    parent::setup();
  }

  public function getModelName()
  {
    return 'ProfileFish';
  }

}
