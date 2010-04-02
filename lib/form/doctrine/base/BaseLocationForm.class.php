<?php

/**
 * Location form base class.
 *
 * @method Location getObject() Returns the current form's model object
 *
 * @package    FISHERY
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormGeneratedTemplate.php 24171 2009-11-19 16:37:50Z Kris.Wallsmith $
 */
abstract class BaseLocationForm extends BaseFormDoctrine
{
  public function setup()
  {
    $this->setWidgets(array(
      'id'                 => new sfWidgetFormInputHidden(),
      'name'               => new sfWidgetFormInputText(),
      'description'        => new sfWidgetFormTextarea(),
      'depth'              => new sfWidgetFormInputText(),
      'location_flow_id'   => new sfWidgetFormDoctrineChoice(array('model' => $this->getRelatedModelName('LocationFlow'), 'add_empty' => true)),
      'location_fundus_id' => new sfWidgetFormDoctrineChoice(array('model' => $this->getRelatedModelName('LocationFundus'), 'add_empty' => true)),
      'location_relief_id' => new sfWidgetFormDoctrineChoice(array('model' => $this->getRelatedModelName('LocationRelief'), 'add_empty' => true)),
      'created_by'         => new sfWidgetFormInputText(),
      'updated_by'         => new sfWidgetFormInputText(),
      'latitude'           => new sfWidgetFormInputText(),
      'longitude'          => new sfWidgetFormInputText(),
      'slug'               => new sfWidgetFormInputText(),
      'created_at'         => new sfWidgetFormDateTime(),
      'updated_at'         => new sfWidgetFormDateTime(),
      'version'            => new sfWidgetFormInputText(),
      'seasons_list'       => new sfWidgetFormDoctrineChoice(array('multiple' => true, 'model' => 'Season')),
    ));

    $this->setValidators(array(
      'id'                 => new sfValidatorDoctrineChoice(array('model' => $this->getModelName(), 'column' => 'id', 'required' => false)),
      'name'               => new sfValidatorString(array('max_length' => 50, 'required' => false)),
      'description'        => new sfValidatorString(array('required' => false)),
      'depth'              => new sfValidatorNumber(array('required' => false)),
      'location_flow_id'   => new sfValidatorDoctrineChoice(array('model' => $this->getRelatedModelName('LocationFlow'), 'required' => false)),
      'location_fundus_id' => new sfValidatorDoctrineChoice(array('model' => $this->getRelatedModelName('LocationFundus'), 'required' => false)),
      'location_relief_id' => new sfValidatorDoctrineChoice(array('model' => $this->getRelatedModelName('LocationRelief'), 'required' => false)),
      'created_by'         => new sfValidatorInteger(),
      'updated_by'         => new sfValidatorInteger(),
      'latitude'           => new sfValidatorPass(array('required' => false)),
      'longitude'          => new sfValidatorPass(array('required' => false)),
      'slug'               => new sfValidatorString(array('max_length' => 255, 'required' => false)),
      'created_at'         => new sfValidatorDateTime(),
      'updated_at'         => new sfValidatorDateTime(),
      'version'            => new sfValidatorInteger(array('required' => false)),
      'seasons_list'       => new sfValidatorDoctrineChoice(array('multiple' => true, 'model' => 'Season', 'required' => false)),
    ));

    $this->widgetSchema->setNameFormat('location[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    $this->setupInheritance();

    parent::setup();
  }

  public function getModelName()
  {
    return 'Location';
  }

  public function updateDefaultsFromObject()
  {
    parent::updateDefaultsFromObject();

    if (isset($this->widgetSchema['seasons_list']))
    {
      $this->setDefault('seasons_list', $this->object->Seasons->getPrimaryKeys());
    }

  }

  protected function doSave($con = null)
  {
    $this->saveSeasonsList($con);

    parent::doSave($con);
  }

  public function saveSeasonsList($con = null)
  {
    if (!$this->isValid())
    {
      throw $this->getErrorSchema();
    }

    if (!isset($this->widgetSchema['seasons_list']))
    {
      // somebody has unset this widget
      return;
    }

    if (null === $con)
    {
      $con = $this->getConnection();
    }

    $existing = $this->object->Seasons->getPrimaryKeys();
    $values = $this->getValue('seasons_list');
    if (!is_array($values))
    {
      $values = array();
    }

    $unlink = array_diff($existing, $values);
    if (count($unlink))
    {
      $this->object->unlink('Seasons', array_values($unlink));
    }

    $link = array_diff($values, $existing);
    if (count($link))
    {
      $this->object->link('Seasons', array_values($link));
    }
  }

}
