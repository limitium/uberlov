<?php

/**
 * ReadComment form base class.
 *
 * @method ReadComment getObject() Returns the current form's model object
 *
 * @package    FISHERY
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormGeneratedTemplate.php 24171 2009-11-19 16:37:50Z Kris.Wallsmith $
 */
abstract class BaseReadCommentForm extends BaseFormDoctrine
{
  public function setup()
  {
    $this->setWidgets(array(
      'profile_id' => new sfWidgetFormInputHidden(),
      'comment_id' => new sfWidgetFormInputHidden(),
    ));

    $this->setValidators(array(
      'profile_id' => new sfValidatorDoctrineChoice(array('model' => $this->getModelName(), 'column' => 'profile_id', 'required' => false)),
      'comment_id' => new sfValidatorDoctrineChoice(array('model' => $this->getModelName(), 'column' => 'comment_id', 'required' => false)),
    ));

    $this->widgetSchema->setNameFormat('read_comment[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    $this->setupInheritance();

    parent::setup();
  }

  public function getModelName()
  {
    return 'ReadComment';
  }

}
