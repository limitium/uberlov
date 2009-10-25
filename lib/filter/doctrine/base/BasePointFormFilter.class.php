<?php

/**
 * Point filter form base class.
 *
 * @package    HT
 * @subpackage filter
 * @author     Your name here
 * @version    SVN: $Id$
 */
class BasePointFormFilter extends BaseFormFilterDoctrine
{
  public function setup()
  {
    $this->setWidgets(array(
      'route_id'   => new sfWidgetFormDoctrineChoice(array('model' => 'Route', 'add_empty' => true)),
      'latitude'   => new sfWidgetFormFilterInput(),
      'longitude'  => new sfWidgetFormFilterInput(),
      'created_at' => new sfWidgetFormFilterDate(array('from_date' => new sfWidgetFormDate(), 'to_date' => new sfWidgetFormDate(), 'with_empty' => false)),
      'updated_at' => new sfWidgetFormFilterDate(array('from_date' => new sfWidgetFormDate(), 'to_date' => new sfWidgetFormDate(), 'with_empty' => false)),
    ));

    $this->setValidators(array(
      'route_id'   => new sfValidatorDoctrineChoice(array('required' => false, 'model' => 'Route', 'column' => 'id')),
      'latitude'   => new sfValidatorSchemaFilter('text', new sfValidatorNumber(array('required' => false))),
      'longitude'  => new sfValidatorSchemaFilter('text', new sfValidatorNumber(array('required' => false))),
      'created_at' => new sfValidatorDateRange(array('required' => false, 'from_date' => new sfValidatorDateTime(array('required' => false, 'datetime_output' => 'Y-m-d 00:00:00')), 'to_date' => new sfValidatorDateTime(array('required' => false, 'datetime_output' => 'Y-m-d 23:59:59')))),
      'updated_at' => new sfValidatorDateRange(array('required' => false, 'from_date' => new sfValidatorDateTime(array('required' => false, 'datetime_output' => 'Y-m-d 00:00:00')), 'to_date' => new sfValidatorDateTime(array('required' => false, 'datetime_output' => 'Y-m-d 23:59:59')))),
    ));

    $this->widgetSchema->setNameFormat('point_filters[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    $this->setupInheritance();

    parent::setup();
  }

  public function getModelName()
  {
    return 'Point';
  }

  public function getFields()
  {
    return array(
      'id'         => 'Number',
      'route_id'   => 'ForeignKey',
      'latitude'   => 'Number',
      'longitude'  => 'Number',
      'created_at' => 'Date',
      'updated_at' => 'Date',
    );
  }
}
