<?php

/**
 * sfGuardUserProfile filter form base class.
 *
 * @package    FISHERY
 * @subpackage filter
 * @author     Sergei Belov <limitium@gmail.com>
 * @version    SVN: $Id: sfDoctrineFormFilterGeneratedTemplate.php 29570 2010-05-21 14:49:47Z Kris.Wallsmith $
 */
abstract class BasesfGuardUserProfileFormFilter extends BaseFormFilterDoctrine
{
  public function setup()
  {
    $this->setWidgets(array(
      'user_id'           => new sfWidgetFormDoctrineChoice(array('model' => $this->getRelatedModelName('User'), 'add_empty' => true)),
      'email_new'         => new sfWidgetFormFilterInput(),
      'validate_at'       => new sfWidgetFormFilterDate(array('from_date' => new sfWidgetFormDate(), 'to_date' => new sfWidgetFormDate())),
      'validate'          => new sfWidgetFormFilterInput(),
      'sex'               => new sfWidgetFormChoice(array('choices' => array('' => 'yes or no', 1 => 'yes', 0 => 'no'))),
      'birth_date'        => new sfWidgetFormFilterDate(array('from_date' => new sfWidgetFormDate(), 'to_date' => new sfWidgetFormDate())),
      'userpic'           => new sfWidgetFormFilterInput(),
      'description'       => new sfWidgetFormFilterInput(),
      'city_id'           => new sfWidgetFormDoctrineChoice(array('model' => $this->getRelatedModelName('City'), 'add_empty' => true)),
      'created_at'        => new sfWidgetFormFilterDate(array('from_date' => new sfWidgetFormDate(), 'to_date' => new sfWidgetFormDate(), 'with_empty' => false)),
      'updated_at'        => new sfWidgetFormFilterDate(array('from_date' => new sfWidgetFormDate(), 'to_date' => new sfWidgetFormDate(), 'with_empty' => false)),
      'wishes_list'       => new sfWidgetFormDoctrineChoice(array('multiple' => true, 'model' => 'Location')),
      'inboxes_list'      => new sfWidgetFormDoctrineChoice(array('multiple' => true, 'model' => 'Inbox')),
      'read_comment_list' => new sfWidgetFormDoctrineChoice(array('multiple' => true, 'model' => 'Comment')),
      'requester_list'    => new sfWidgetFormDoctrineChoice(array('multiple' => true, 'model' => 'sfGuardUserProfile')),
      'accepter_list'     => new sfWidgetFormDoctrineChoice(array('multiple' => true, 'model' => 'sfGuardUserProfile')),
    ));

    $this->setValidators(array(
      'user_id'           => new sfValidatorDoctrineChoice(array('required' => false, 'model' => $this->getRelatedModelName('User'), 'column' => 'id')),
      'email_new'         => new sfValidatorPass(array('required' => false)),
      'validate_at'       => new sfValidatorDateRange(array('required' => false, 'from_date' => new sfValidatorDateTime(array('required' => false, 'datetime_output' => 'Y-m-d 00:00:00')), 'to_date' => new sfValidatorDateTime(array('required' => false, 'datetime_output' => 'Y-m-d 23:59:59')))),
      'validate'          => new sfValidatorPass(array('required' => false)),
      'sex'               => new sfValidatorChoice(array('required' => false, 'choices' => array('', 1, 0))),
      'birth_date'        => new sfValidatorDateRange(array('required' => false, 'from_date' => new sfValidatorDate(array('required' => false)), 'to_date' => new sfValidatorDateTime(array('required' => false)))),
      'userpic'           => new sfValidatorPass(array('required' => false)),
      'description'       => new sfValidatorPass(array('required' => false)),
      'city_id'           => new sfValidatorDoctrineChoice(array('required' => false, 'model' => $this->getRelatedModelName('City'), 'column' => 'id')),
      'created_at'        => new sfValidatorDateRange(array('required' => false, 'from_date' => new sfValidatorDateTime(array('required' => false, 'datetime_output' => 'Y-m-d 00:00:00')), 'to_date' => new sfValidatorDateTime(array('required' => false, 'datetime_output' => 'Y-m-d 23:59:59')))),
      'updated_at'        => new sfValidatorDateRange(array('required' => false, 'from_date' => new sfValidatorDateTime(array('required' => false, 'datetime_output' => 'Y-m-d 00:00:00')), 'to_date' => new sfValidatorDateTime(array('required' => false, 'datetime_output' => 'Y-m-d 23:59:59')))),
      'wishes_list'       => new sfValidatorDoctrineChoice(array('multiple' => true, 'model' => 'Location', 'required' => false)),
      'inboxes_list'      => new sfValidatorDoctrineChoice(array('multiple' => true, 'model' => 'Inbox', 'required' => false)),
      'read_comment_list' => new sfValidatorDoctrineChoice(array('multiple' => true, 'model' => 'Comment', 'required' => false)),
      'requester_list'    => new sfValidatorDoctrineChoice(array('multiple' => true, 'model' => 'sfGuardUserProfile', 'required' => false)),
      'accepter_list'     => new sfValidatorDoctrineChoice(array('multiple' => true, 'model' => 'sfGuardUserProfile', 'required' => false)),
    ));

    $this->widgetSchema->setNameFormat('sf_guard_user_profile_filters[%s]');

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

  public function addRequesterListColumnQuery(Doctrine_Query $query, $field, $values)
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
      ->andWhereIn('Friend.requester_id', $values)
    ;
  }

  public function addAccepterListColumnQuery(Doctrine_Query $query, $field, $values)
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
      ->andWhereIn('Friend.accepter_id', $values)
    ;
  }

  public function getModelName()
  {
    return 'sfGuardUserProfile';
  }

  public function getFields()
  {
    return array(
      'user_id'           => 'ForeignKey',
      'email_new'         => 'Text',
      'validate_at'       => 'Date',
      'validate'          => 'Text',
      'id'                => 'Number',
      'sex'               => 'Boolean',
      'birth_date'        => 'Date',
      'userpic'           => 'Text',
      'description'       => 'Text',
      'city_id'           => 'ForeignKey',
      'created_at'        => 'Date',
      'updated_at'        => 'Date',
      'wishes_list'       => 'ManyKey',
      'inboxes_list'      => 'ManyKey',
      'read_comment_list' => 'ManyKey',
      'requester_list'    => 'ManyKey',
      'accepter_list'     => 'ManyKey',
    );
  }
}
