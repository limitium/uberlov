<?php

/**
 * Profit form base class.
 *
 * @method Profit getObject() Returns the current form's model object
 *
 * @package    HT
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormGeneratedTemplate.php 24171 2009-11-19 16:37:50Z Kris.Wallsmith $
 */
abstract class BaseProfitForm extends BaseFormDoctrine
{
  public function setup()
  {
    $this->setWidgets(array(
      'id'          => new sfWidgetFormInputHidden(),
      'Location_id' => new sfWidgetFormDoctrineChoice(array('model' => $this->getRelatedModelName('Location'), 'add_empty' => true)),
      'Profile_id'  => new sfWidgetFormDoctrineChoice(array('model' => $this->getRelatedModelName('Profile'), 'add_empty' => true)),
      'time'        => new sfWidgetFormTime(),
      'description' => new sfWidgetFormTextarea(),
      'created_at'  => new sfWidgetFormDateTime(),
      'updated_at'  => new sfWidgetFormDateTime(),
      'fishes_list' => new sfWidgetFormDoctrineChoice(array('multiple' => true, 'model' => 'Fish')),
      'styles_list' => new sfWidgetFormDoctrineChoice(array('multiple' => true, 'model' => 'Style')),
    ));

    $this->setValidators(array(
      'id'          => new sfValidatorDoctrineChoice(array('model' => $this->getModelName(), 'column' => 'id', 'required' => false)),
      'Location_id' => new sfValidatorDoctrineChoice(array('model' => $this->getRelatedModelName('Location'), 'required' => false)),
      'Profile_id'  => new sfValidatorDoctrineChoice(array('model' => $this->getRelatedModelName('Profile'), 'required' => false)),
      'time'        => new sfValidatorTime(),
      'description' => new sfValidatorString(array('required' => false)),
      'created_at'  => new sfValidatorDateTime(),
      'updated_at'  => new sfValidatorDateTime(),
      'fishes_list' => new sfValidatorDoctrineChoice(array('multiple' => true, 'model' => 'Fish', 'required' => false)),
      'styles_list' => new sfValidatorDoctrineChoice(array('multiple' => true, 'model' => 'Style', 'required' => false)),
    ));

    $this->widgetSchema->setNameFormat('profit[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    $this->setupInheritance();

    parent::setup();
  }

  public function getModelName()
  {
    return 'Profit';
  }

  public function updateDefaultsFromObject()
  {
    parent::updateDefaultsFromObject();

    if (isset($this->widgetSchema['fishes_list']))
    {
      $this->setDefault('fishes_list', $this->object->Fishes->getPrimaryKeys());
    }

    if (isset($this->widgetSchema['styles_list']))
    {
      $this->setDefault('styles_list', $this->object->Styles->getPrimaryKeys());
    }

  }

  protected function doSave($con = null)
  {
    $this->saveFishesList($con);
    $this->saveStylesList($con);

    parent::doSave($con);
  }

  public function saveFishesList($con = null)
  {
    if (!$this->isValid())
    {
      throw $this->getErrorSchema();
    }

    if (!isset($this->widgetSchema['fishes_list']))
    {
      // somebody has unset this widget
      return;
    }

    if (null === $con)
    {
      $con = $this->getConnection();
    }

    $existing = $this->object->Fishes->getPrimaryKeys();
    $values = $this->getValue('fishes_list');
    if (!is_array($values))
    {
      $values = array();
    }

    $unlink = array_diff($existing, $values);
    if (count($unlink))
    {
      $this->object->unlink('Fishes', array_values($unlink));
    }

    $link = array_diff($values, $existing);
    if (count($link))
    {
      $this->object->link('Fishes', array_values($link));
    }
  }

  public function saveStylesList($con = null)
  {
    if (!$this->isValid())
    {
      throw $this->getErrorSchema();
    }

    if (!isset($this->widgetSchema['styles_list']))
    {
      // somebody has unset this widget
      return;
    }

    if (null === $con)
    {
      $con = $this->getConnection();
    }

    $existing = $this->object->Styles->getPrimaryKeys();
    $values = $this->getValue('styles_list');
    if (!is_array($values))
    {
      $values = array();
    }

    $unlink = array_diff($existing, $values);
    if (count($unlink))
    {
      $this->object->unlink('Styles', array_values($unlink));
    }

    $link = array_diff($values, $existing);
    if (count($link))
    {
      $this->object->link('Styles', array_values($link));
    }
  }

}
