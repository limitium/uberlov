<?php

/**
 * Friend filter form base class.
 *
 * @package    HT
 * @subpackage filter
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormFilterGeneratedTemplate.php 24171 2009-11-19 16:37:50Z Kris.Wallsmith $
 */
abstract class BaseFriendFormFilter extends BaseFormFilterDoctrine
{
  public function setup()
  {
    $this->setWidgets(array(
      'source_Profile_id'  => new sfWidgetFormFilterInput(array('with_empty' => false)),
      'related_Profile_id' => new sfWidgetFormDoctrineChoice(array('model' => $this->getRelatedModelName('Profile'), 'add_empty' => true)),
    ));

    $this->setValidators(array(
      'source_Profile_id'  => new sfValidatorSchemaFilter('text', new sfValidatorInteger(array('required' => false))),
      'related_Profile_id' => new sfValidatorDoctrineChoice(array('required' => false, 'model' => $this->getRelatedModelName('Profile'), 'column' => 'id')),
    ));

    $this->widgetSchema->setNameFormat('friend_filters[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    $this->setupInheritance();

    parent::setup();
  }

  public function getModelName()
  {
    return 'Friend';
  }

  public function getFields()
  {
    return array(
      'ID'                 => 'Number',
      'source_Profile_id'  => 'Number',
      'related_Profile_id' => 'ForeignKey',
    );
  }
}
