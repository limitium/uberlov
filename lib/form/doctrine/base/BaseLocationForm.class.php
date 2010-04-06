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
      'location_type_id'   => new sfWidgetFormDoctrineChoice(array('model' => $this->getRelatedModelName('LocationType'), 'add_empty' => true)),
      'location_scope_id'  => new sfWidgetFormDoctrineChoice(array('model' => $this->getRelatedModelName('LocationScope'), 'add_empty' => true)),
      'created_by'         => new sfWidgetFormDoctrineChoice(array('model' => $this->getRelatedModelName('CreatedBy'), 'add_empty' => false)),
      'updated_by'         => new sfWidgetFormDoctrineChoice(array('model' => $this->getRelatedModelName('UpdatedBy'), 'add_empty' => false)),
      'latitude'           => new sfWidgetFormInputText(),
      'longitude'          => new sfWidgetFormInputText(),
      'slug'               => new sfWidgetFormInputText(),
      'created_at'         => new sfWidgetFormDateTime(),
      'updated_at'         => new sfWidgetFormDateTime(),
      'version'            => new sfWidgetFormInputText(),
      'wishers_list'       => new sfWidgetFormDoctrineChoice(array('multiple' => true, 'model' => 'Profile')),
    ));

    $this->setValidators(array(
      'id'                 => new sfValidatorDoctrineChoice(array('model' => $this->getModelName(), 'column' => 'id', 'required' => false)),
      'name'               => new sfValidatorString(array('max_length' => 50, 'required' => false)),
      'description'        => new sfValidatorString(array('required' => false)),
      'depth'              => new sfValidatorNumber(array('required' => false)),
      'location_flow_id'   => new sfValidatorDoctrineChoice(array('model' => $this->getRelatedModelName('LocationFlow'), 'required' => false)),
      'location_fundus_id' => new sfValidatorDoctrineChoice(array('model' => $this->getRelatedModelName('LocationFundus'), 'required' => false)),
      'location_relief_id' => new sfValidatorDoctrineChoice(array('model' => $this->getRelatedModelName('LocationRelief'), 'required' => false)),
      'location_type_id'   => new sfValidatorDoctrineChoice(array('model' => $this->getRelatedModelName('LocationType'), 'required' => false)),
      'location_scope_id'  => new sfValidatorDoctrineChoice(array('model' => $this->getRelatedModelName('LocationScope'), 'required' => false)),
      'created_by'         => new sfValidatorDoctrineChoice(array('model' => $this->getRelatedModelName('CreatedBy'))),
      'updated_by'         => new sfValidatorDoctrineChoice(array('model' => $this->getRelatedModelName('UpdatedBy'))),
      'latitude'           => new sfValidatorPass(array('required' => false)),
      'longitude'          => new sfValidatorPass(array('required' => false)),
      'slug'               => new sfValidatorString(array('max_length' => 255, 'required' => false)),
      'created_at'         => new sfValidatorDateTime(),
      'updated_at'         => new sfValidatorDateTime(),
      'version'            => new sfValidatorInteger(array('required' => false)),
      'wishers_list'       => new sfValidatorDoctrineChoice(array('multiple' => true, 'model' => 'Profile', 'required' => false)),
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

    if (isset($this->widgetSchema['wishers_list']))
    {
      $this->setDefault('wishers_list', $this->object->Wishers->getPrimaryKeys());
    }

  }

  protected function doSave($con = null)
  {
    $this->saveWishersList($con);

    parent::doSave($con);
  }

  public function saveWishersList($con = null)
  {
    if (!$this->isValid())
    {
      throw $this->getErrorSchema();
    }

    if (!isset($this->widgetSchema['wishers_list']))
    {
      // somebody has unset this widget
      return;
    }

    if (null === $con)
    {
      $con = $this->getConnection();
    }

    $existing = $this->object->Wishers->getPrimaryKeys();
    $values = $this->getValue('wishers_list');
    if (!is_array($values))
    {
      $values = array();
    }

    $unlink = array_diff($existing, $values);
    if (count($unlink))
    {
      $this->object->unlink('Wishers', array_values($unlink));
    }

    $link = array_diff($values, $existing);
    if (count($link))
    {
      $this->object->link('Wishers', array_values($link));
    }
  }

}
