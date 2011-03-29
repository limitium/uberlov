<?php

/**
 * ReadComment form base class.
 *
 * @method ReadComment getObject() Returns the current form's model object
 *
 * @package    FISHERY
 * @subpackage form
 * @author     Sergei Belov <limitium@gmail.com>
 * @version    SVN: $Id: sfDoctrineFormGeneratedTemplate.php 29553 2010-05-20 14:33:00Z Kris.Wallsmith $
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
      'profile_id' => new sfValidatorChoice(array('choices' => array($this->getObject()->get('profile_id')), 'empty_value' => $this->getObject()->get('profile_id'), 'required' => false)),
      'comment_id' => new sfValidatorChoice(array('choices' => array($this->getObject()->get('comment_id')), 'empty_value' => $this->getObject()->get('comment_id'), 'required' => false)),
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
