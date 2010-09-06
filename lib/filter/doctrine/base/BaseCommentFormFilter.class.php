<?php

/**
 * Comment filter form base class.
 *
 * @package    FISHERY
 * @subpackage filter
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormFilterGeneratedTemplate.php 24171 2009-11-19 16:37:50Z Kris.Wallsmith $
 */
abstract class BaseCommentFormFilter extends BaseFormFilterDoctrine
{
  public function setup()
  {
    $this->setWidgets(array(
      'parent'       => new sfWidgetFormFilterInput(),
      'message'      => new sfWidgetFormFilterInput(array('with_empty' => false)),
      'toward'       => new sfWidgetFormFilterInput(),
      'location_id'  => new sfWidgetFormFilterInput(),
      'profit_id'    => new sfWidgetFormFilterInput(),
      'inbox_id'     => new sfWidgetFormFilterInput(),
      'talk_id'      => new sfWidgetFormFilterInput(),
      'created_by'   => new sfWidgetFormDoctrineChoice(array('model' => $this->getRelatedModelName('CommentBy'), 'add_empty' => true)),
      'updated_by'   => new sfWidgetFormDoctrineChoice(array('model' => $this->getRelatedModelName('ChangedBy'), 'add_empty' => true)),
      'created_at'   => new sfWidgetFormFilterDate(array('from_date' => new sfWidgetFormDate(), 'to_date' => new sfWidgetFormDate(), 'with_empty' => false)),
      'updated_at'   => new sfWidgetFormFilterDate(array('from_date' => new sfWidgetFormDate(), 'to_date' => new sfWidgetFormDate(), 'with_empty' => false)),
      'root_id'      => new sfWidgetFormFilterInput(),
      'lft'          => new sfWidgetFormFilterInput(),
      'rgt'          => new sfWidgetFormFilterInput(),
      'level'        => new sfWidgetFormFilterInput(),
      'profile_list' => new sfWidgetFormDoctrineChoice(array('multiple' => true, 'model' => 'Profile')),
    ));

    $this->setValidators(array(
      'parent'       => new sfValidatorSchemaFilter('text', new sfValidatorInteger(array('required' => false))),
      'message'      => new sfValidatorPass(array('required' => false)),
      'toward'       => new sfValidatorPass(array('required' => false)),
      'location_id'  => new sfValidatorSchemaFilter('text', new sfValidatorInteger(array('required' => false))),
      'profit_id'    => new sfValidatorSchemaFilter('text', new sfValidatorInteger(array('required' => false))),
      'inbox_id'     => new sfValidatorSchemaFilter('text', new sfValidatorInteger(array('required' => false))),
      'talk_id'      => new sfValidatorSchemaFilter('text', new sfValidatorInteger(array('required' => false))),
      'created_by'   => new sfValidatorDoctrineChoice(array('required' => false, 'model' => $this->getRelatedModelName('CommentBy'), 'column' => 'id')),
      'updated_by'   => new sfValidatorDoctrineChoice(array('required' => false, 'model' => $this->getRelatedModelName('ChangedBy'), 'column' => 'id')),
      'created_at'   => new sfValidatorDateRange(array('required' => false, 'from_date' => new sfValidatorDateTime(array('required' => false, 'datetime_output' => 'Y-m-d 00:00:00')), 'to_date' => new sfValidatorDateTime(array('required' => false, 'datetime_output' => 'Y-m-d 23:59:59')))),
      'updated_at'   => new sfValidatorDateRange(array('required' => false, 'from_date' => new sfValidatorDateTime(array('required' => false, 'datetime_output' => 'Y-m-d 00:00:00')), 'to_date' => new sfValidatorDateTime(array('required' => false, 'datetime_output' => 'Y-m-d 23:59:59')))),
      'root_id'      => new sfValidatorSchemaFilter('text', new sfValidatorInteger(array('required' => false))),
      'lft'          => new sfValidatorSchemaFilter('text', new sfValidatorInteger(array('required' => false))),
      'rgt'          => new sfValidatorSchemaFilter('text', new sfValidatorInteger(array('required' => false))),
      'level'        => new sfValidatorSchemaFilter('text', new sfValidatorInteger(array('required' => false))),
      'profile_list' => new sfValidatorDoctrineChoice(array('multiple' => true, 'model' => 'Profile', 'required' => false)),
    ));

    $this->widgetSchema->setNameFormat('comment_filters[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    $this->setupInheritance();

    parent::setup();
  }

  public function addProfileListColumnQuery(Doctrine_Query $query, $field, $values)
  {
    if (!is_array($values))
    {
      $values = array($values);
    }

    if (!count($values))
    {
      return;
    }

    $query->leftJoin('r.ReadComment ReadComment')
          ->andWhereIn('ReadComment.profile_id', $values);
  }

  public function getModelName()
  {
    return 'Comment';
  }

  public function getFields()
  {
    return array(
      'id'           => 'Number',
      'parent'       => 'Number',
      'message'      => 'Text',
      'toward'       => 'Text',
      'location_id'  => 'Number',
      'profit_id'    => 'Number',
      'inbox_id'     => 'Number',
      'talk_id'      => 'Number',
      'created_by'   => 'ForeignKey',
      'updated_by'   => 'ForeignKey',
      'created_at'   => 'Date',
      'updated_at'   => 'Date',
      'root_id'      => 'Number',
      'lft'          => 'Number',
      'rgt'          => 'Number',
      'level'        => 'Number',
      'profile_list' => 'ManyKey',
    );
  }
}
