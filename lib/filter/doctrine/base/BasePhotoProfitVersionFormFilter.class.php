<?php

/**
 * PhotoProfitVersion filter form base class.
 *
 * @package    FISHERY
 * @subpackage filter
 * @author     Sergei Belov <limitium@gmail.com>
 * @version    SVN: $Id: sfDoctrineFormFilterGeneratedTemplate.php 29570 2010-05-21 14:49:47Z Kris.Wallsmith $
 */
abstract class BasePhotoProfitVersionFormFilter extends BaseFormFilterDoctrine
{
  public function setup()
  {
    $this->setWidgets(array(
      'name'        => new sfWidgetFormFilterInput(array('with_empty' => false)),
      'thumb'       => new sfWidgetFormFilterInput(array('with_empty' => false)),
      'toward'      => new sfWidgetFormFilterInput(),
      'location_id' => new sfWidgetFormFilterInput(),
      'profit_id'   => new sfWidgetFormFilterInput(),
      'created_by'  => new sfWidgetFormFilterInput(array('with_empty' => false)),
      'updated_by'  => new sfWidgetFormFilterInput(array('with_empty' => false)),
    ));

    $this->setValidators(array(
      'name'        => new sfValidatorPass(array('required' => false)),
      'thumb'       => new sfValidatorPass(array('required' => false)),
      'toward'      => new sfValidatorPass(array('required' => false)),
      'location_id' => new sfValidatorSchemaFilter('text', new sfValidatorInteger(array('required' => false))),
      'profit_id'   => new sfValidatorSchemaFilter('text', new sfValidatorInteger(array('required' => false))),
      'created_by'  => new sfValidatorPass(array('required' => false)),
      'updated_by'  => new sfValidatorPass(array('required' => false)),
    ));

    $this->widgetSchema->setNameFormat('photo_profit_version_filters[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    $this->setupInheritance();

    parent::setup();
  }

  public function getModelName()
  {
    return 'PhotoProfitVersion';
  }

  public function getFields()
  {
    return array(
      'id'          => 'Number',
      'name'        => 'Text',
      'thumb'       => 'Text',
      'toward'      => 'Text',
      'location_id' => 'Number',
      'profit_id'   => 'Number',
      'created_by'  => 'Text',
      'updated_by'  => 'Text',
      'version'     => 'Number',
    );
  }
}
