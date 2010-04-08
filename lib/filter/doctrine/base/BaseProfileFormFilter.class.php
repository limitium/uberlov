<?php

/**
 * Profile filter form base class.
 *
 * @package    FISHERY
 * @subpackage filter
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormFilterGeneratedTemplate.php 24171 2009-11-19 16:37:50Z Kris.Wallsmith $
 */
abstract class BaseProfileFormFilter extends BaseFormFilterDoctrine
{
  public function setup()
  {
    $this->setWidgets(array(
      'nick_name'        => new sfWidgetFormFilterInput(array('with_empty' => false)),
      'first_name'       => new sfWidgetFormFilterInput(),
      'last_name'        => new sfWidgetFormFilterInput(),
      'birth_date'       => new sfWidgetFormFilterDate(array('from_date' => new sfWidgetFormDate(), 'to_date' => new sfWidgetFormDate())),
      'userpic'          => new sfWidgetFormFilterInput(),
      'sex'              => new sfWidgetFormChoice(array('choices' => array('' => 'yes or no', 1 => 'yes', 0 => 'no'))),
      'user_id'          => new sfWidgetFormDoctrineChoice(array('model' => $this->getRelatedModelName('sfGuardUser'), 'add_empty' => true)),
      'created_at'       => new sfWidgetFormFilterDate(array('from_date' => new sfWidgetFormDate(), 'to_date' => new sfWidgetFormDate(), 'with_empty' => false)),
      'updated_at'       => new sfWidgetFormFilterDate(array('from_date' => new sfWidgetFormDate(), 'to_date' => new sfWidgetFormDate(), 'with_empty' => false)),
      'wishes_list'      => new sfWidgetFormDoctrineChoice(array('multiple' => true, 'model' => 'Location')),
      'my_firends_list'  => new sfWidgetFormDoctrineChoice(array('multiple' => true, 'model' => 'Profile')),
      'my_firends2_list' => new sfWidgetFormDoctrineChoice(array('multiple' => true, 'model' => 'Profile')),
      'fishes_list'      => new sfWidgetFormDoctrineChoice(array('multiple' => true, 'model' => 'Fish')),
      'styles_list'      => new sfWidgetFormDoctrineChoice(array('multiple' => true, 'model' => 'Style')),
    ));

    $this->setValidators(array(
      'nick_name'        => new sfValidatorPass(array('required' => false)),
      'first_name'       => new sfValidatorPass(array('required' => false)),
      'last_name'        => new sfValidatorPass(array('required' => false)),
      'birth_date'       => new sfValidatorDateRange(array('required' => false, 'from_date' => new sfValidatorDate(array('required' => false)), 'to_date' => new sfValidatorDateTime(array('required' => false)))),
      'userpic'          => new sfValidatorPass(array('required' => false)),
      'sex'              => new sfValidatorChoice(array('required' => false, 'choices' => array('', 1, 0))),
      'user_id'          => new sfValidatorDoctrineChoice(array('required' => false, 'model' => $this->getRelatedModelName('sfGuardUser'), 'column' => 'id')),
      'created_at'       => new sfValidatorDateRange(array('required' => false, 'from_date' => new sfValidatorDateTime(array('required' => false, 'datetime_output' => 'Y-m-d 00:00:00')), 'to_date' => new sfValidatorDateTime(array('required' => false, 'datetime_output' => 'Y-m-d 23:59:59')))),
      'updated_at'       => new sfValidatorDateRange(array('required' => false, 'from_date' => new sfValidatorDateTime(array('required' => false, 'datetime_output' => 'Y-m-d 00:00:00')), 'to_date' => new sfValidatorDateTime(array('required' => false, 'datetime_output' => 'Y-m-d 23:59:59')))),
      'wishes_list'      => new sfValidatorDoctrineChoice(array('multiple' => true, 'model' => 'Location', 'required' => false)),
      'my_firends_list'  => new sfValidatorDoctrineChoice(array('multiple' => true, 'model' => 'Profile', 'required' => false)),
      'my_firends2_list' => new sfValidatorDoctrineChoice(array('multiple' => true, 'model' => 'Profile', 'required' => false)),
      'fishes_list'      => new sfValidatorDoctrineChoice(array('multiple' => true, 'model' => 'Fish', 'required' => false)),
      'styles_list'      => new sfValidatorDoctrineChoice(array('multiple' => true, 'model' => 'Style', 'required' => false)),
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

    $query->leftJoin('r.WishList WishList')
          ->andWhereIn('WishList.location_id', $values);
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

    $query->leftJoin('r.Friend Friend')
          ->andWhereIn('Friend.source_profile_id', $values);
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

    $query->leftJoin('r.Friend Friend')
          ->andWhereIn('Friend.related_profile_id', $values);
  }

  public function addFishesListColumnQuery(Doctrine_Query $query, $field, $values)
  {
    if (!is_array($values))
    {
      $values = array($values);
    }

    if (!count($values))
    {
      return;
    }

    $query->leftJoin('r.ProfileFish ProfileFish')
          ->andWhereIn('ProfileFish.fish_id', $values);
  }

  public function addStylesListColumnQuery(Doctrine_Query $query, $field, $values)
  {
    if (!is_array($values))
    {
      $values = array($values);
    }

    if (!count($values))
    {
      return;
    }

    $query->leftJoin('r.ProfileStyle ProfileStyle')
          ->andWhereIn('ProfileStyle.style_id', $values);
  }

  public function getModelName()
  {
    return 'Profile';
  }

  public function getFields()
  {
    return array(
      'id'               => 'Number',
      'nick_name'        => 'Text',
      'first_name'       => 'Text',
      'last_name'        => 'Text',
      'birth_date'       => 'Date',
      'userpic'          => 'Text',
      'sex'              => 'Boolean',
      'user_id'          => 'ForeignKey',
      'created_at'       => 'Date',
      'updated_at'       => 'Date',
      'wishes_list'      => 'ManyKey',
      'my_firends_list'  => 'ManyKey',
      'my_firends2_list' => 'ManyKey',
      'fishes_list'      => 'ManyKey',
      'styles_list'      => 'ManyKey',
    );
  }
}
