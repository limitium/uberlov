<?php

/**
 * Route filter form base class.
 *
 * @package    FISHERY
 * @subpackage filter
 * @author     Sergei Belov <limitium@gmail.com>
 * @version    SVN: $Id: sfDoctrineFormFilterGeneratedTemplate.php 29570 2010-05-21 14:49:47Z Kris.Wallsmith $
 */
abstract class BaseRouteFormFilter extends BaseFormFilterDoctrine
{
  public function setup()
  {
    $this->setWidgets(array(
      'name'       => new sfWidgetFormFilterInput(),
      'country_id' => new sfWidgetFormDoctrineChoice(array('model' => $this->getRelatedModelName('Country'), 'add_empty' => true)),
    ));

    $this->setValidators(array(
      'name'       => new sfValidatorPass(array('required' => false)),
      'country_id' => new sfValidatorDoctrineChoice(array('required' => false, 'model' => $this->getRelatedModelName('Country'), 'column' => 'id')),
    ));

    $this->widgetSchema->setNameFormat('route_filters[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    $this->setupInheritance();

    parent::setup();
  }

  public function getModelName()
  {
    return 'Route';
  }

  public function getFields()
  {
    return array(
      'id'         => 'Number',
      'name'       => 'Text',
      'country_id' => 'ForeignKey',
    );
  }
}
