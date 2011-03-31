<?php

/**
 * LocationVersion filter form base class.
 *
 * @package    FISHERY
 * @subpackage filter
 * @author     Sergei Belov <limitium@gmail.com>
 * @version    SVN: $Id: sfDoctrineFormFilterGeneratedTemplate.php 29570 2010-05-21 14:49:47Z Kris.Wallsmith $
 */
abstract class BaseLocationVersionFormFilter extends BaseFormFilterDoctrine
{
  public function setup()
  {
    $this->setWidgets(array(
      'name'               => new sfWidgetFormFilterInput(array('with_empty' => false)),
      'description'        => new sfWidgetFormFilterInput(array('with_empty' => false)),
      'depth'              => new sfWidgetFormFilterInput(),
      'is_free'            => new sfWidgetFormChoice(array('choices' => array('' => 'yes or no', 1 => 'yes', 0 => 'no'))),
      'price'              => new sfWidgetFormFilterInput(),
      'location_flow_id'   => new sfWidgetFormFilterInput(),
      'location_fundus_id' => new sfWidgetFormFilterInput(),
      'location_relief_id' => new sfWidgetFormFilterInput(),
      'location_type_id'   => new sfWidgetFormFilterInput(),
      'location_scope_id'  => new sfWidgetFormFilterInput(),
      'address_id'         => new sfWidgetFormFilterInput(),
      'created_by'         => new sfWidgetFormFilterInput(array('with_empty' => false)),
      'updated_by'         => new sfWidgetFormFilterInput(array('with_empty' => false)),
      'slug'               => new sfWidgetFormFilterInput(),
      'created_at'         => new sfWidgetFormFilterDate(array('from_date' => new sfWidgetFormDate(), 'to_date' => new sfWidgetFormDate(), 'with_empty' => false)),
      'updated_at'         => new sfWidgetFormFilterDate(array('from_date' => new sfWidgetFormDate(), 'to_date' => new sfWidgetFormDate(), 'with_empty' => false)),
      'latitude'           => new sfWidgetFormFilterInput(),
      'longitude'          => new sfWidgetFormFilterInput(),
    ));

    $this->setValidators(array(
      'name'               => new sfValidatorPass(array('required' => false)),
      'description'        => new sfValidatorPass(array('required' => false)),
      'depth'              => new sfValidatorSchemaFilter('text', new sfValidatorNumber(array('required' => false))),
      'is_free'            => new sfValidatorChoice(array('required' => false, 'choices' => array('', 1, 0))),
      'price'              => new sfValidatorPass(array('required' => false)),
      'location_flow_id'   => new sfValidatorSchemaFilter('text', new sfValidatorInteger(array('required' => false))),
      'location_fundus_id' => new sfValidatorSchemaFilter('text', new sfValidatorInteger(array('required' => false))),
      'location_relief_id' => new sfValidatorSchemaFilter('text', new sfValidatorInteger(array('required' => false))),
      'location_type_id'   => new sfValidatorSchemaFilter('text', new sfValidatorInteger(array('required' => false))),
      'location_scope_id'  => new sfValidatorSchemaFilter('text', new sfValidatorInteger(array('required' => false))),
      'address_id'         => new sfValidatorSchemaFilter('text', new sfValidatorInteger(array('required' => false))),
      'created_by'         => new sfValidatorPass(array('required' => false)),
      'updated_by'         => new sfValidatorPass(array('required' => false)),
      'slug'               => new sfValidatorPass(array('required' => false)),
      'created_at'         => new sfValidatorDateRange(array('required' => false, 'from_date' => new sfValidatorDateTime(array('required' => false, 'datetime_output' => 'Y-m-d 00:00:00')), 'to_date' => new sfValidatorDateTime(array('required' => false, 'datetime_output' => 'Y-m-d 23:59:59')))),
      'updated_at'         => new sfValidatorDateRange(array('required' => false, 'from_date' => new sfValidatorDateTime(array('required' => false, 'datetime_output' => 'Y-m-d 00:00:00')), 'to_date' => new sfValidatorDateTime(array('required' => false, 'datetime_output' => 'Y-m-d 23:59:59')))),
      'latitude'           => new sfValidatorPass(array('required' => false)),
      'longitude'          => new sfValidatorPass(array('required' => false)),
    ));

    $this->widgetSchema->setNameFormat('location_version_filters[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    $this->setupInheritance();

    parent::setup();
  }

  public function getModelName()
  {
    return 'LocationVersion';
  }

  public function getFields()
  {
    return array(
      'id'                 => 'Number',
      'name'               => 'Text',
      'description'        => 'Text',
      'depth'              => 'Number',
      'is_free'            => 'Boolean',
      'price'              => 'Text',
      'location_flow_id'   => 'Number',
      'location_fundus_id' => 'Number',
      'location_relief_id' => 'Number',
      'location_type_id'   => 'Number',
      'location_scope_id'  => 'Number',
      'address_id'         => 'Number',
      'created_by'         => 'Text',
      'updated_by'         => 'Text',
      'slug'               => 'Text',
      'created_at'         => 'Date',
      'updated_at'         => 'Date',
      'latitude'           => 'Text',
      'longitude'          => 'Text',
      'version'            => 'Number',
    );
  }
}
