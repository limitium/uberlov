<?php

/**
 * Inbox form base class.
 *
 * @method Inbox getObject() Returns the current form's model object
 *
 * @package    FISHERY
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormGeneratedTemplate.php 24171 2009-11-19 16:37:50Z Kris.Wallsmith $
 */
abstract class BaseInboxForm extends BaseFormDoctrine
{
  public function setup()
  {
    $this->setWidgets(array(
      'id'           => new sfWidgetFormInputHidden(),
      'name'         => new sfWidgetFormInputText(),
      'message'      => new sfWidgetFormTextarea(),
      'created_by'   => new sfWidgetFormDoctrineChoice(array('model' => $this->getRelatedModelName('CreatedBy'), 'add_empty' => false)),
      'updated_by'   => new sfWidgetFormDoctrineChoice(array('model' => $this->getRelatedModelName('UpdatedBy'), 'add_empty' => false)),
      'created_at'   => new sfWidgetFormDateTime(),
      'updated_at'   => new sfWidgetFormDateTime(),
      'inboxed_list' => new sfWidgetFormDoctrineChoice(array('multiple' => true, 'model' => 'Profile')),
    ));

    $this->setValidators(array(
      'id'           => new sfValidatorDoctrineChoice(array('model' => $this->getModelName(), 'column' => 'id', 'required' => false)),
      'name'         => new sfValidatorString(array('max_length' => 50)),
      'message'      => new sfValidatorString(),
      'created_by'   => new sfValidatorDoctrineChoice(array('model' => $this->getRelatedModelName('CreatedBy'))),
      'updated_by'   => new sfValidatorDoctrineChoice(array('model' => $this->getRelatedModelName('UpdatedBy'))),
      'created_at'   => new sfValidatorDateTime(),
      'updated_at'   => new sfValidatorDateTime(),
      'inboxed_list' => new sfValidatorDoctrineChoice(array('multiple' => true, 'model' => 'Profile', 'required' => false)),
    ));

    $this->widgetSchema->setNameFormat('inbox[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    $this->setupInheritance();

    parent::setup();
  }

  public function getModelName()
  {
    return 'Inbox';
  }

  public function updateDefaultsFromObject()
  {
    parent::updateDefaultsFromObject();

    if (isset($this->widgetSchema['inboxed_list']))
    {
      $this->setDefault('inboxed_list', $this->object->Inboxed->getPrimaryKeys());
    }

  }

  protected function doSave($con = null)
  {
    $this->saveInboxedList($con);

    parent::doSave($con);
  }

  public function saveInboxedList($con = null)
  {
    if (!$this->isValid())
    {
      throw $this->getErrorSchema();
    }

    if (!isset($this->widgetSchema['inboxed_list']))
    {
      // somebody has unset this widget
      return;
    }

    if (null === $con)
    {
      $con = $this->getConnection();
    }

    $existing = $this->object->Inboxed->getPrimaryKeys();
    $values = $this->getValue('inboxed_list');
    if (!is_array($values))
    {
      $values = array();
    }

    $unlink = array_diff($existing, $values);
    if (count($unlink))
    {
      $this->object->unlink('Inboxed', array_values($unlink));
    }

    $link = array_diff($values, $existing);
    if (count($link))
    {
      $this->object->link('Inboxed', array_values($link));
    }
  }

}
