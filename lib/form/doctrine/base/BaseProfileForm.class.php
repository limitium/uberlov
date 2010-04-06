<?php

/**
 * Profile form base class.
 *
 * @method Profile getObject() Returns the current form's model object
 *
 * @package    FISHERY
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormGeneratedTemplate.php 24171 2009-11-19 16:37:50Z Kris.Wallsmith $
 */
abstract class BaseProfileForm extends BaseFormDoctrine
{
  public function setup()
  {
    $this->setWidgets(array(
      'id'               => new sfWidgetFormInputHidden(),
      'nick_name'        => new sfWidgetFormInputText(),
      'first_name'       => new sfWidgetFormInputText(),
      'last_name'        => new sfWidgetFormInputText(),
      'user_id'          => new sfWidgetFormDoctrineChoice(array('model' => $this->getRelatedModelName('sfGuardUser'), 'add_empty' => true)),
      'created_at'       => new sfWidgetFormDateTime(),
      'updated_at'       => new sfWidgetFormDateTime(),
      'wishes_list'      => new sfWidgetFormDoctrineChoice(array('multiple' => true, 'model' => 'Location')),
      'my_firends_list'  => new sfWidgetFormDoctrineChoice(array('multiple' => true, 'model' => 'Profile')),
      'my_firends2_list' => new sfWidgetFormDoctrineChoice(array('multiple' => true, 'model' => 'Profile')),
    ));

    $this->setValidators(array(
      'id'               => new sfValidatorDoctrineChoice(array('model' => $this->getModelName(), 'column' => 'id', 'required' => false)),
      'nick_name'        => new sfValidatorString(array('max_length' => 50, 'required' => false)),
      'first_name'       => new sfValidatorString(array('max_length' => 50, 'required' => false)),
      'last_name'        => new sfValidatorString(array('max_length' => 50, 'required' => false)),
      'user_id'          => new sfValidatorDoctrineChoice(array('model' => $this->getRelatedModelName('sfGuardUser'), 'required' => false)),
      'created_at'       => new sfValidatorDateTime(),
      'updated_at'       => new sfValidatorDateTime(),
      'wishes_list'      => new sfValidatorDoctrineChoice(array('multiple' => true, 'model' => 'Location', 'required' => false)),
      'my_firends_list'  => new sfValidatorDoctrineChoice(array('multiple' => true, 'model' => 'Profile', 'required' => false)),
      'my_firends2_list' => new sfValidatorDoctrineChoice(array('multiple' => true, 'model' => 'Profile', 'required' => false)),
    ));

    $this->widgetSchema->setNameFormat('profile[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    $this->setupInheritance();

    parent::setup();
  }

  public function getModelName()
  {
    return 'Profile';
  }

  public function updateDefaultsFromObject()
  {
    parent::updateDefaultsFromObject();

    if (isset($this->widgetSchema['wishes_list']))
    {
      $this->setDefault('wishes_list', $this->object->Wishes->getPrimaryKeys());
    }

    if (isset($this->widgetSchema['my_firends_list']))
    {
      $this->setDefault('my_firends_list', $this->object->MyFirends->getPrimaryKeys());
    }

    if (isset($this->widgetSchema['my_firends2_list']))
    {
      $this->setDefault('my_firends2_list', $this->object->MyFirends2->getPrimaryKeys());
    }

  }

  protected function doSave($con = null)
  {
    $this->saveWishesList($con);
    $this->saveMyFirendsList($con);
    $this->saveMyFirends2List($con);

    parent::doSave($con);
  }

  public function saveWishesList($con = null)
  {
    if (!$this->isValid())
    {
      throw $this->getErrorSchema();
    }

    if (!isset($this->widgetSchema['wishes_list']))
    {
      // somebody has unset this widget
      return;
    }

    if (null === $con)
    {
      $con = $this->getConnection();
    }

    $existing = $this->object->Wishes->getPrimaryKeys();
    $values = $this->getValue('wishes_list');
    if (!is_array($values))
    {
      $values = array();
    }

    $unlink = array_diff($existing, $values);
    if (count($unlink))
    {
      $this->object->unlink('Wishes', array_values($unlink));
    }

    $link = array_diff($values, $existing);
    if (count($link))
    {
      $this->object->link('Wishes', array_values($link));
    }
  }

  public function saveMyFirendsList($con = null)
  {
    if (!$this->isValid())
    {
      throw $this->getErrorSchema();
    }

    if (!isset($this->widgetSchema['my_firends_list']))
    {
      // somebody has unset this widget
      return;
    }

    if (null === $con)
    {
      $con = $this->getConnection();
    }

    $existing = $this->object->MyFirends->getPrimaryKeys();
    $values = $this->getValue('my_firends_list');
    if (!is_array($values))
    {
      $values = array();
    }

    $unlink = array_diff($existing, $values);
    if (count($unlink))
    {
      $this->object->unlink('MyFirends', array_values($unlink));
    }

    $link = array_diff($values, $existing);
    if (count($link))
    {
      $this->object->link('MyFirends', array_values($link));
    }
  }

  public function saveMyFirends2List($con = null)
  {
    if (!$this->isValid())
    {
      throw $this->getErrorSchema();
    }

    if (!isset($this->widgetSchema['my_firends2_list']))
    {
      // somebody has unset this widget
      return;
    }

    if (null === $con)
    {
      $con = $this->getConnection();
    }

    $existing = $this->object->MyFirends2->getPrimaryKeys();
    $values = $this->getValue('my_firends2_list');
    if (!is_array($values))
    {
      $values = array();
    }

    $unlink = array_diff($existing, $values);
    if (count($unlink))
    {
      $this->object->unlink('MyFirends2', array_values($unlink));
    }

    $link = array_diff($values, $existing);
    if (count($link))
    {
      $this->object->link('MyFirends2', array_values($link));
    }
  }

}
