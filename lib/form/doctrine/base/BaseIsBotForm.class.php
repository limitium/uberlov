<?php

/**
 * IsBot form base class.
 *
 * @method IsBot getObject() Returns the current form's model object
 *
 * @package    FISHERY
 * @subpackage form
 * @author     Sergei Belov <limitium@gmail.com>
 * @version    SVN: $Id: sfDoctrineFormGeneratedTemplate.php 29553 2010-05-20 14:33:00Z Kris.Wallsmith $
 */
abstract class BaseIsBotForm extends BaseFormDoctrine
{
  public function setup()
  {
    $this->setWidgets(array(
      'profile_id'  => new sfWidgetFormInputHidden(),
      'bot_nick_id' => new sfWidgetFormDoctrineChoice(array('model' => $this->getRelatedModelName('BotNick'), 'add_empty' => true)),
      'bot_data_id' => new sfWidgetFormDoctrineChoice(array('model' => $this->getRelatedModelName('BotData'), 'add_empty' => true)),
    ));

    $this->setValidators(array(
      'profile_id'  => new sfValidatorChoice(array('choices' => array($this->getObject()->get('profile_id')), 'empty_value' => $this->getObject()->get('profile_id'), 'required' => false)),
      'bot_nick_id' => new sfValidatorDoctrineChoice(array('model' => $this->getRelatedModelName('BotNick'), 'required' => false)),
      'bot_data_id' => new sfValidatorDoctrineChoice(array('model' => $this->getRelatedModelName('BotData'), 'required' => false)),
    ));

    $this->widgetSchema->setNameFormat('is_bot[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    $this->setupInheritance();

    parent::setup();
  }

  public function getModelName()
  {
    return 'IsBot';
  }

}
