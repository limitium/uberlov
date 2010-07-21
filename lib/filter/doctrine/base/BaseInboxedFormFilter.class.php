<?php

/**
 * Inboxed filter form base class.
 *
 * @package    FISHERY
 * @subpackage filter
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormFilterGeneratedTemplate.php 24171 2009-11-19 16:37:50Z Kris.Wallsmith $
 */
abstract class BaseInboxedFormFilter extends BaseFormFilterDoctrine
{
  public function setup()
  {
    $this->setWidgets(array(
      'inbox_id'   => new sfWidgetFormDoctrineChoice(array('model' => $this->getRelatedModelName('Inbox'), 'add_empty' => true)),
      'profile_id' => new sfWidgetFormDoctrineChoice(array('model' => $this->getRelatedModelName('Profile'), 'add_empty' => true)),
    ));

    $this->setValidators(array(
      'inbox_id'   => new sfValidatorDoctrineChoice(array('required' => false, 'model' => $this->getRelatedModelName('Inbox'), 'column' => 'id')),
      'profile_id' => new sfValidatorDoctrineChoice(array('required' => false, 'model' => $this->getRelatedModelName('Profile'), 'column' => 'id')),
    ));

    $this->widgetSchema->setNameFormat('inboxed_filters[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    $this->setupInheritance();

    parent::setup();
  }

  public function getModelName()
  {
    return 'Inboxed';
  }

  public function getFields()
  {
    return array(
      'id'         => 'Number',
      'inbox_id'   => 'ForeignKey',
      'profile_id' => 'ForeignKey',
    );
  }
}
