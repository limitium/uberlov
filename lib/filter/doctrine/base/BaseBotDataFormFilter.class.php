<?php

/**
 * BotData filter form base class.
 *
 * @package    FISHERY
 * @subpackage filter
 * @author     Sergei Belov <limitium@gmail.com>
 * @version    SVN: $Id: sfDoctrineFormFilterGeneratedTemplate.php 29570 2010-05-21 14:49:47Z Kris.Wallsmith $
 */
abstract class BaseBotDataFormFilter extends BaseFormFilterDoctrine
{
  public function setup()
  {
    $this->setWidgets(array(
      'uid'     => new sfWidgetFormFilterInput(array('with_empty' => false)),
      'name'    => new sfWidgetFormFilterInput(),
      'ava'     => new sfWidgetFormFilterInput(),
      'userpic' => new sfWidgetFormFilterInput(),
    ));

    $this->setValidators(array(
      'uid'     => new sfValidatorSchemaFilter('text', new sfValidatorInteger(array('required' => false))),
      'name'    => new sfValidatorPass(array('required' => false)),
      'ava'     => new sfValidatorPass(array('required' => false)),
      'userpic' => new sfValidatorPass(array('required' => false)),
    ));

    $this->widgetSchema->setNameFormat('bot_data_filters[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    $this->setupInheritance();

    parent::setup();
  }

  public function getModelName()
  {
    return 'BotData';
  }

  public function getFields()
  {
    return array(
      'id'      => 'Number',
      'uid'     => 'Number',
      'name'    => 'Text',
      'ava'     => 'Text',
      'userpic' => 'Text',
    );
  }
}
