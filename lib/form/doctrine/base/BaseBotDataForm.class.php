<?php

/**
 * BotData form base class.
 *
 * @method BotData getObject() Returns the current form's model object
 *
 * @package    FISHERY
 * @subpackage form
 * @author     Sergei Belov <limitium@gmail.com>
 * @version    SVN: $Id: sfDoctrineFormGeneratedTemplate.php 29553 2010-05-20 14:33:00Z Kris.Wallsmith $
 */
abstract class BaseBotDataForm extends BaseFormDoctrine
{
  public function setup()
  {
    $this->setWidgets(array(
      'id'      => new sfWidgetFormInputHidden(),
      'uid'     => new sfWidgetFormInputText(),
      'name'    => new sfWidgetFormInputText(),
      'ava'     => new sfWidgetFormInputText(),
      'userpic' => new sfWidgetFormInputText(),
    ));

    $this->setValidators(array(
      'id'      => new sfValidatorChoice(array('choices' => array($this->getObject()->get('id')), 'empty_value' => $this->getObject()->get('id'), 'required' => false)),
      'uid'     => new sfValidatorInteger(),
      'name'    => new sfValidatorString(array('max_length' => 255, 'required' => false)),
      'ava'     => new sfValidatorString(array('max_length' => 255, 'required' => false)),
      'userpic' => new sfValidatorString(array('max_length' => 255, 'required' => false)),
    ));

    $this->validatorSchema->setPostValidator(
      new sfValidatorDoctrineUnique(array('model' => 'BotData', 'column' => array('uid')))
    );

    $this->widgetSchema->setNameFormat('bot_data[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    $this->setupInheritance();

    parent::setup();
  }

  public function getModelName()
  {
    return 'BotData';
  }

}
