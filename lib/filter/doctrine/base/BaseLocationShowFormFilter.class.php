<?php

/**
 * LocationShow filter form base class.
 *
 * @package    FISHERY
 * @subpackage filter
 * @author     Sergei Belov <limitium@gmail.com>
 * @version    SVN: $Id: sfDoctrineFormFilterGeneratedTemplate.php 29570 2010-05-21 14:49:47Z Kris.Wallsmith $
 */
abstract class BaseLocationShowFormFilter extends BaseFormFilterDoctrine
{
  public function setup()
  {
    $this->setWidgets(array(
      'shows'       => new sfWidgetFormFilterInput(array('with_empty' => false)),
      'location_id' => new sfWidgetFormDoctrineChoice(array('model' => $this->getRelatedModelName('Location'), 'add_empty' => true)),
    ));

    $this->setValidators(array(
      'shows'       => new sfValidatorSchemaFilter('text', new sfValidatorInteger(array('required' => false))),
      'location_id' => new sfValidatorDoctrineChoice(array('required' => false, 'model' => $this->getRelatedModelName('Location'), 'column' => 'id')),
    ));

    $this->widgetSchema->setNameFormat('location_show_filters[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    $this->setupInheritance();

    parent::setup();
  }

  public function getModelName()
  {
    return 'LocationShow';
  }

  public function getFields()
  {
    return array(
      'id'          => 'Number',
      'shows'       => 'Number',
      'location_id' => 'ForeignKey',
    );
  }
}
