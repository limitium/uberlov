<?php

/**
 * TalkSection filter form base class.
 *
 * @package    FISHERY
 * @subpackage filter
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormFilterGeneratedTemplate.php 29570 2010-05-21 14:49:47Z Kris.Wallsmith $
 */
abstract class BaseTalkSectionFormFilter extends BaseFormFilterDoctrine
{
  public function setup()
  {
    $this->setWidgets(array(
      'parent' => new sfWidgetFormFilterInput(),
      'name'   => new sfWidgetFormFilterInput(array('with_empty' => false)),
      'lft'    => new sfWidgetFormFilterInput(),
      'rgt'    => new sfWidgetFormFilterInput(),
      'level'  => new sfWidgetFormFilterInput(),
    ));

    $this->setValidators(array(
      'parent' => new sfValidatorSchemaFilter('text', new sfValidatorInteger(array('required' => false))),
      'name'   => new sfValidatorPass(array('required' => false)),
      'lft'    => new sfValidatorSchemaFilter('text', new sfValidatorInteger(array('required' => false))),
      'rgt'    => new sfValidatorSchemaFilter('text', new sfValidatorInteger(array('required' => false))),
      'level'  => new sfValidatorSchemaFilter('text', new sfValidatorInteger(array('required' => false))),
    ));

    $this->widgetSchema->setNameFormat('talk_section_filters[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    $this->setupInheritance();

    parent::setup();
  }

  public function getModelName()
  {
    return 'TalkSection';
  }

  public function getFields()
  {
    return array(
      'id'     => 'Number',
      'parent' => 'Number',
      'name'   => 'Text',
      'lft'    => 'Number',
      'rgt'    => 'Number',
      'level'  => 'Number',
    );
  }
}
