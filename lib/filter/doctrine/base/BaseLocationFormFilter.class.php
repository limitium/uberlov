<?php

/**
 * Location filter form base class.
 *
 * @package    FISHERY
 * @subpackage filter
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormFilterGeneratedTemplate.php 24171 2009-11-19 16:37:50Z Kris.Wallsmith $
 */
abstract class BaseLocationFormFilter extends BaseFormFilterDoctrine
{
  public function setup()
  {
    $this->setWidgets(array(
      'name'               => new sfWidgetFormFilterInput(array('with_empty' => false)),
      'description'        => new sfWidgetFormFilterInput(array('with_empty' => false)),
      'depth'              => new sfWidgetFormFilterInput(),
      'location_flow_id'   => new sfWidgetFormDoctrineChoice(array('model' => $this->getRelatedModelName('LocationFlow'), 'add_empty' => true)),
      'location_fundus_id' => new sfWidgetFormDoctrineChoice(array('model' => $this->getRelatedModelName('LocationFundus'), 'add_empty' => true)),
      'location_relief_id' => new sfWidgetFormDoctrineChoice(array('model' => $this->getRelatedModelName('LocationRelief'), 'add_empty' => true)),
      'created_by'         => new sfWidgetFormFilterInput(array('with_empty' => false)),
      'updated_by'         => new sfWidgetFormFilterInput(array('with_empty' => false)),
      'latitude'           => new sfWidgetFormFilterInput(),
      'longitude'          => new sfWidgetFormFilterInput(),
      'slug'               => new sfWidgetFormFilterInput(),
      'created_at'         => new sfWidgetFormFilterDate(array('from_date' => new sfWidgetFormDate(), 'to_date' => new sfWidgetFormDate(), 'with_empty' => false)),
      'updated_at'         => new sfWidgetFormFilterDate(array('from_date' => new sfWidgetFormDate(), 'to_date' => new sfWidgetFormDate(), 'with_empty' => false)),
      'version'            => new sfWidgetFormFilterInput(),
      'seasons_list'       => new sfWidgetFormDoctrineChoice(array('multiple' => true, 'model' => 'Season')),
    ));

    $this->setValidators(array(
      'name'               => new sfValidatorPass(array('required' => false)),
      'description'        => new sfValidatorPass(array('required' => false)),
      'depth'              => new sfValidatorSchemaFilter('text', new sfValidatorNumber(array('required' => false))),
      'location_flow_id'   => new sfValidatorDoctrineChoice(array('required' => false, 'model' => $this->getRelatedModelName('LocationFlow'), 'column' => 'id')),
      'location_fundus_id' => new sfValidatorDoctrineChoice(array('required' => false, 'model' => $this->getRelatedModelName('LocationFundus'), 'column' => 'id')),
      'location_relief_id' => new sfValidatorDoctrineChoice(array('required' => false, 'model' => $this->getRelatedModelName('LocationRelief'), 'column' => 'id')),
      'created_by'         => new sfValidatorSchemaFilter('text', new sfValidatorInteger(array('required' => false))),
      'updated_by'         => new sfValidatorSchemaFilter('text', new sfValidatorInteger(array('required' => false))),
      'latitude'           => new sfValidatorPass(array('required' => false)),
      'longitude'          => new sfValidatorPass(array('required' => false)),
      'slug'               => new sfValidatorPass(array('required' => false)),
      'created_at'         => new sfValidatorDateRange(array('required' => false, 'from_date' => new sfValidatorDateTime(array('required' => false, 'datetime_output' => 'Y-m-d 00:00:00')), 'to_date' => new sfValidatorDateTime(array('required' => false, 'datetime_output' => 'Y-m-d 23:59:59')))),
      'updated_at'         => new sfValidatorDateRange(array('required' => false, 'from_date' => new sfValidatorDateTime(array('required' => false, 'datetime_output' => 'Y-m-d 00:00:00')), 'to_date' => new sfValidatorDateTime(array('required' => false, 'datetime_output' => 'Y-m-d 23:59:59')))),
      'version'            => new sfValidatorSchemaFilter('text', new sfValidatorInteger(array('required' => false))),
      'seasons_list'       => new sfValidatorDoctrineChoice(array('multiple' => true, 'model' => 'Season', 'required' => false)),
    ));

    $this->widgetSchema->setNameFormat('location_filters[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    $this->setupInheritance();

    parent::setup();
  }

  public function addSeasonsListColumnQuery(Doctrine_Query $query, $field, $values)
  {
    if (!is_array($values))
    {
      $values = array($values);
    }

    if (!count($values))
    {
      return;
    }

    $query->leftJoin('r.LocationSeason LocationSeason')
          ->andWhereIn('LocationSeason.season_id', $values);
  }

  public function getModelName()
  {
    return 'Location';
  }

  public function getFields()
  {
    return array(
      'id'                 => 'Number',
      'name'               => 'Text',
      'description'        => 'Text',
      'depth'              => 'Number',
      'location_flow_id'   => 'ForeignKey',
      'location_fundus_id' => 'ForeignKey',
      'location_relief_id' => 'ForeignKey',
      'created_by'         => 'Number',
      'updated_by'         => 'Number',
      'latitude'           => 'Text',
      'longitude'          => 'Text',
      'slug'               => 'Text',
      'created_at'         => 'Date',
      'updated_at'         => 'Date',
      'version'            => 'Number',
      'seasons_list'       => 'ManyKey',
    );
  }
}
