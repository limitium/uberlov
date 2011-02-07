<?php

/**
 * Profile filter form base class.
 *
 * @package    FISHERY
 * @subpackage filter
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormFilterGeneratedTemplate.php 29570 2010-05-21 14:49:47Z Kris.Wallsmith $
 */
abstract class BaseProfileFormFilter extends BaseFormFilterDoctrine
{
  public function setup()
  {
    $this->setWidgets(array(
      'nick_name'         => new sfWidgetFormFilterInput(array('with_empty' => false)),
      'first_name'        => new sfWidgetFormFilterInput(),
      'last_name'         => new sfWidgetFormFilterInput(),
      'birth_date'        => new sfWidgetFormFilterDate(array('from_date' => new sfWidgetFormDate(), 'to_date' => new sfWidgetFormDate())),
      'description'       => new sfWidgetFormFilterInput(),
      'userpic'           => new sfWidgetFormFilterInput(),
      'sex'               => new sfWidgetFormChoice(array('choices' => array('' => 'yes or no', 1 => 'yes', 0 => 'no'))),
      'user_id'           => new sfWidgetFormDoctrineChoice(array('model' => $this->getRelatedModelName('sfGuardUser'), 'add_empty' => true)),
      'created_at'        => new sfWidgetFormFilterDate(array('from_date' => new sfWidgetFormDate(), 'to_date' => new sfWidgetFormDate(), 'with_empty' => false)),
      'updated_at'        => new sfWidgetFormFilterDate(array('from_date' => new sfWidgetFormDate(), 'to_date' => new sfWidgetFormDate(), 'with_empty' => false)),
      'wishes_list'       => new sfWidgetFormDoctrineChoice(array('multiple' => true, 'model' => 'Location')),
      'my_firends_list'   => new sfWidgetFormDoctrineChoice(array('multiple' => true, 'model' => 'Profile')),
      'my_firends2_list'  => new sfWidgetFormDoctrineChoice(array('multiple' => true, 'model' => 'Profile')),
      'inboxes_list'      => new sfWidgetFormDoctrineChoice(array('multiple' => true, 'model' => 'Inbox')),
      'read_comment_list' => new sfWidgetFormDoctrineChoice(array('multiple' => true, 'model' => 'Comment')),
    ));

    $this->setValidators(array(
      'nick_name'         => new sfValidatorPass(array('required' => false)),
      'first_name'        => new sfValidatorPass(array('required' => false)),
      'last_name'         => new sfValidatorPass(array('required' => false)),
      'birth_date'        => new sfValidatorDateRange(array('required' => false, 'from_date' => new sfValidatorDate(array('required' => false)), 'to_date' => new sfValidatorDateTime(array('required' => false)))),
      'description'       => new sfValidatorPass(array('required' => false)),
      'userpic'           => new sfValidatorPass(array('required' => false)),
      'sex'               => new sfValidatorChoice(array('required' => false, 'choices' => array('', 1, 0))),
      'user_id'           => new sfValidatorDoctrineChoice(array('required' => false, 'model' => $this->getRelatedModelName('sfGuardUser'), 'column' => 'id')),
      'created_at'        => new sfValidatorDateRange(array('required' => false, 'from_date' => new sfValidatorDateTime(array('required' => false, 'datetime_output' => 'Y-m-d 00:00:00')), 'to_date' => new sfValidatorDateTime(array('required' => false, 'datetime_output' => 'Y-m-d 23:59:59')))),
      'updated_at'        => new sfValidatorDateRange(array('required' => false, 'from_date' => new sfValidatorDateTime(array('required' => false, 'datetime_output' => 'Y-m-d 00:00:00')), 'to_date' => new sfValidatorDateTime(array('required' => false, 'datetime_output' => 'Y-m-d 23:59:59')))),
      'wishes_list'       => new sfValidatorDoctrineChoice(array('multiple' => true, 'model' => 'Location', 'required' => false)),
      'my_firends_list'   => new sfValidatorDoctrineChoice(array('multiple' => true, 'model' => 'Profile', 'required' => false)),
      'my_firends2_list'  => new sfValidatorDoctrineChoice(array('multiple' => true, 'model' => 'Profile', 'required' => false)),
      'inboxes_list'      => new sfValidatorDoctrineChoice(array('multiple' => true, 'model' => 'Inbox', 'required' => false)),
      'read_comment_list' => new sfValidatorDoctrineChoice(array('multiple' => true, 'model' => 'Comment', 'required' => false)),
    ));

    $this->widgetSchema->setNameFormat('profile_filters[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    $this->setupInheritance();

    parent::setup();
  }

  public function addWishesListColumnQuery(Doctrine_Query $query, $field, $values)
  {
    if (!is_array($values))
    {
      $values = array($values);
    }

    if (!count($values))
    {
      return;
    }

    $query
      ->leftJoin($query->getRootAlias().'.WishList WishList')
      ->andWhereIn('WishList.location_id', $values)
    ;
  }

  public function addMyFirendsListColumnQuery(Doctrine_Query $query, $field, $values)
  {
    if (!is_array($values))
    {
      $values = array($values);
    }

    if (!count($values))
    {
      return;
    }

    $query
      ->leftJoin($query->getRootAlias().'.Friend Friend')
      ->andWhereIn('Friend.source_profile_id', $values)
    ;
  }

  public function addMyFirends2ListColumnQuery(Doctrine_Query $query, $field, $values)
  {
    if (!is_array($values))
    {
      $values = array($values);
    }

    if (!count($values))
    {
      return;
    }

    $query
      ->leftJoin($query->getRootAlias().'.Friend Friend')
      ->andWhereIn('Friend.related_profile_id', $values)
    ;
  }

  public function addInboxesListColumnQuery(Doctrine_Query $query, $field, $values)
  {
    if (!is_array($values))
    {
      $values = array($values);
    }

    if (!count($values))
    {
      return;
    }

    $query
      ->leftJoin($query->getRootAlias().'.Inboxed Inboxed')
      ->andWhereIn('Inboxed.inbox_id', $values)
    ;
  }

  public function addReadCommentListColumnQuery(Doctrine_Query $query, $field, $values)
  {
    if (!is_array($values))
    {
      $values = array($values);
    }

    if (!count($values))
    {
      return;
    }

    $query
      ->leftJoin($query->getRootAlias().'.ReadComment ReadComment')
      ->andWhereIn('ReadComment.comment_id', $values)
    ;
  }

  public function getModelName()
  {
    return 'Profile';
  }

  public function getFields()
  {
    return array(
      'id'                => 'Number',
      'nick_name'         => 'Text',
      'first_name'        => 'Text',
      'last_name'         => 'Text',
      'birth_date'        => 'Date',
      'description'       => 'Text',
      'userpic'           => 'Text',
      'sex'               => 'Boolean',
      'user_id'           => 'ForeignKey',
      'created_at'        => 'Date',
      'updated_at'        => 'Date',
      'wishes_list'       => 'ManyKey',
      'my_firends_list'   => 'ManyKey',
      'my_firends2_list'  => 'ManyKey',
      'inboxes_list'      => 'ManyKey',
      'read_comment_list' => 'ManyKey',
    );
  }
}
