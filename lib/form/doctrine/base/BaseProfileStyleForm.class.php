<?php

/**
 * ProfileStyle form base class.
 *
 * @method ProfileStyle getObject() Returns the current form's model object
 *
 * @package    FISHERY
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormGeneratedTemplate.php 24171 2009-11-19 16:37:50Z Kris.Wallsmith $
 */
abstract class BaseProfileStyleForm extends BaseFormDoctrine
{
  public function setup()
  {
    $this->setWidgets(array(
      'ID'         => new sfWidgetFormInputHidden(),
      'style_id'   => new sfWidgetFormDoctrineChoice(array('model' => $this->getRelatedModelName('Style'), 'add_empty' => false)),
      'profile_id' => new sfWidgetFormDoctrineChoice(array('model' => $this->getRelatedModelName('Profile'), 'add_empty' => false)),
    ));

    $this->setValidators(array(
      'ID'         => new sfValidatorDoctrineChoice(array('model' => $this->getModelName(), 'column' => 'ID', 'required' => false)),
      'style_id'   => new sfValidatorDoctrineChoice(array('model' => $this->getRelatedModelName('Style'))),
      'profile_id' => new sfValidatorDoctrineChoice(array('model' => $this->getRelatedModelName('Profile'))),
    ));

    $this->validatorSchema->setPostValidator(
      new sfValidatorDoctrineUnique(array('model' => 'ProfileStyle', 'column' => array('ID')))
    );

    $this->widgetSchema->setNameFormat('profile_style[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    $this->setupInheritance();

    parent::setup();
  }

  public function getModelName()
  {
    return 'ProfileStyle';
  }

}
