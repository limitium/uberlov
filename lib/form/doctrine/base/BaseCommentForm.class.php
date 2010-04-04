<?php

/**
 * Comment form base class.
 *
 * @method Comment getObject() Returns the current form's model object
 *
 * @package    FISHERY
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormGeneratedTemplate.php 24171 2009-11-19 16:37:50Z Kris.Wallsmith $
 */
abstract class BaseCommentForm extends BaseFormDoctrine
{
  public function setup()
  {
    $this->setWidgets(array(
      'id'          => new sfWidgetFormInputHidden(),
      'parent'      => new sfWidgetFormInputText(),
      'message'     => new sfWidgetFormTextarea(),
      'toward'      => new sfWidgetFormInputText(),
      'location_id' => new sfWidgetFormInputText(),
      'profit_id'   => new sfWidgetFormInputText(),
      'created_by'  => new sfWidgetFormInputText(),
      'updated_by'  => new sfWidgetFormInputText(),
      'created_at'  => new sfWidgetFormDateTime(),
      'updated_at'  => new sfWidgetFormDateTime(),
      'root_id'     => new sfWidgetFormInputText(),
      'lft'         => new sfWidgetFormInputText(),
      'rgt'         => new sfWidgetFormInputText(),
      'level'       => new sfWidgetFormInputText(),
    ));

    $this->setValidators(array(
      'id'          => new sfValidatorDoctrineChoice(array('model' => $this->getModelName(), 'column' => 'id', 'required' => false)),
      'parent'      => new sfValidatorInteger(array('required' => false)),
      'message'     => new sfValidatorString(array('max_length' => 1000)),
      'toward'      => new sfValidatorString(array('max_length' => 255, 'required' => false)),
      'location_id' => new sfValidatorInteger(array('required' => false)),
      'profit_id'   => new sfValidatorInteger(array('required' => false)),
      'created_by'  => new sfValidatorInteger(),
      'updated_by'  => new sfValidatorInteger(),
      'created_at'  => new sfValidatorDateTime(),
      'updated_at'  => new sfValidatorDateTime(),
      'root_id'     => new sfValidatorInteger(array('required' => false)),
      'lft'         => new sfValidatorInteger(array('required' => false)),
      'rgt'         => new sfValidatorInteger(array('required' => false)),
      'level'       => new sfValidatorInteger(array('required' => false)),
    ));

    $this->widgetSchema->setNameFormat('comment[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    $this->setupInheritance();

    parent::setup();
  }

  public function getModelName()
  {
    return 'Comment';
  }

}
