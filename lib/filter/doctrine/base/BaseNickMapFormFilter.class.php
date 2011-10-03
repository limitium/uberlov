<?php

/**
 * NickMap filter form base class.
 *
 * @package    FISHERY
 * @subpackage filter
 * @author     Sergei Belov <limitium@gmail.com>
 * @version    SVN: $Id: sfDoctrineFormFilterGeneratedTemplate.php 29570 2010-05-21 14:49:47Z Kris.Wallsmith $
 */
abstract class BaseNickMapFormFilter extends BaseFormFilterDoctrine
{
  public function setup()
  {
    $this->setWidgets(array(
      'profile_id' => new sfWidgetFormDoctrineChoice(array('model' => $this->getRelatedModelName('Bot'), 'add_empty' => true)),
      'nick'       => new sfWidgetFormFilterInput(),
    ));

    $this->setValidators(array(
      'profile_id' => new sfValidatorDoctrineChoice(array('required' => false, 'model' => $this->getRelatedModelName('Bot'), 'column' => 'profile_id')),
      'nick'       => new sfValidatorPass(array('required' => false)),
    ));

    $this->widgetSchema->setNameFormat('nick_map_filters[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    $this->setupInheritance();

    parent::setup();
  }

  public function getModelName()
  {
    return 'NickMap';
  }

  public function getFields()
  {
    return array(
      'id'         => 'Number',
      'profile_id' => 'ForeignKey',
      'nick'       => 'Text',
    );
  }
}
