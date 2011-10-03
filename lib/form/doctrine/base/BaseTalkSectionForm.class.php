<?php

/**
 * TalkSection form base class.
 *
 * @method TalkSection getObject() Returns the current form's model object
 *
 * @package    FISHERY
 * @subpackage form
 * @author     Sergei Belov <limitium@gmail.com>
 * @version    SVN: $Id: sfDoctrineFormGeneratedTemplate.php 29553 2010-05-20 14:33:00Z Kris.Wallsmith $
 */
abstract class BaseTalkSectionForm extends BaseFormDoctrine
{
  public function setup()
  {
    $this->setWidgets(array(
      'id'     => new sfWidgetFormInputHidden(),
      'parent' => new sfWidgetFormInputText(),
      'name'   => new sfWidgetFormInputText(),
      'lft'    => new sfWidgetFormInputText(),
      'rgt'    => new sfWidgetFormInputText(),
      'level'  => new sfWidgetFormInputText(),
    ));

    $this->setValidators(array(
      'id'     => new sfValidatorChoice(array('choices' => array($this->getObject()->get('id')), 'empty_value' => $this->getObject()->get('id'), 'required' => false)),
      'parent' => new sfValidatorInteger(array('required' => false)),
      'name'   => new sfValidatorString(array('max_length' => 255)),
      'lft'    => new sfValidatorInteger(array('required' => false)),
      'rgt'    => new sfValidatorInteger(array('required' => false)),
      'level'  => new sfValidatorInteger(array('required' => false)),
    ));

    $this->widgetSchema->setNameFormat('talk_section[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    $this->setupInheritance();

    parent::setup();
  }

  public function getModelName()
  {
    return 'TalkSection';
  }

}
