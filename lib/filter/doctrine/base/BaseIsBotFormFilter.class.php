<?php

/**
 * IsBot filter form base class.
 *
 * @package    FISHERY
 * @subpackage filter
 * @author     Sergei Belov <limitium@gmail.com>
 * @version    SVN: $Id: sfDoctrineFormFilterGeneratedTemplate.php 29570 2010-05-21 14:49:47Z Kris.Wallsmith $
 */
abstract class BaseIsBotFormFilter extends BaseFormFilterDoctrine
{
  public function setup()
  {
    $this->setWidgets(array(
      'bot_nick_id' => new sfWidgetFormDoctrineChoice(array('model' => $this->getRelatedModelName('BotNick'), 'add_empty' => true)),
      'bot_data_id' => new sfWidgetFormDoctrineChoice(array('model' => $this->getRelatedModelName('BotData'), 'add_empty' => true)),
    ));

    $this->setValidators(array(
      'bot_nick_id' => new sfValidatorDoctrineChoice(array('required' => false, 'model' => $this->getRelatedModelName('BotNick'), 'column' => 'id')),
      'bot_data_id' => new sfValidatorDoctrineChoice(array('required' => false, 'model' => $this->getRelatedModelName('BotData'), 'column' => 'id')),
    ));

    $this->widgetSchema->setNameFormat('is_bot_filters[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    $this->setupInheritance();

    parent::setup();
  }

  public function getModelName()
  {
    return 'IsBot';
  }

  public function getFields()
  {
    return array(
      'profile_id'  => 'Number',
      'bot_nick_id' => 'ForeignKey',
      'bot_data_id' => 'ForeignKey',
    );
  }
}
