<?php

/**
 * sfGuardUserProfile form base class.
 *
 * @method sfGuardUserProfile getObject() Returns the current form's model object
 *
 * @package    FISHERY
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormGeneratedTemplate.php 24171 2009-11-19 16:37:50Z Kris.Wallsmith $
 */
abstract class BasesfGuardUserProfileForm extends BaseFormDoctrine
{
  public function setup()
  {
    $this->setWidgets(array(
      'user_id'           => new sfWidgetFormDoctrineChoice(array('model' => $this->getRelatedModelName('User'), 'add_empty' => false)),
      'email_new'         => new sfWidgetFormInputText(),
      'firstname'         => new sfWidgetFormInputText(),
      'lastname'          => new sfWidgetFormInputText(),
      'validate_at'       => new sfWidgetFormDateTime(),
      'validate'          => new sfWidgetFormInputText(),
      'id'                => new sfWidgetFormInputHidden(),
      'nick_name'         => new sfWidgetFormInputText(),
      'first_name'        => new sfWidgetFormInputText(),
      'last_name'         => new sfWidgetFormInputText(),
      'birth_date'        => new sfWidgetFormDate(),
      'description'       => new sfWidgetFormTextarea(),
      'userpic'           => new sfWidgetFormInputText(),
      'sex'               => new sfWidgetFormInputCheckbox(),
      'email'             => new sfWidgetFormInputText(),
      'created_at'        => new sfWidgetFormDateTime(),
      'updated_at'        => new sfWidgetFormDateTime(),
      'wishes_list'       => new sfWidgetFormDoctrineChoice(array('multiple' => true, 'model' => 'Location')),
      'my_firends_list'   => new sfWidgetFormDoctrineChoice(array('multiple' => true, 'model' => 'sfGuardUserProfile')),
      'my_firends2_list'  => new sfWidgetFormDoctrineChoice(array('multiple' => true, 'model' => 'sfGuardUserProfile')),
      'inboxes_list'      => new sfWidgetFormDoctrineChoice(array('multiple' => true, 'model' => 'Inbox')),
      'read_comment_list' => new sfWidgetFormDoctrineChoice(array('multiple' => true, 'model' => 'Comment')),
    ));

    $this->setValidators(array(
      'user_id'           => new sfValidatorDoctrineChoice(array('model' => $this->getRelatedModelName('User'))),
      'email_new'         => new sfValidatorString(array('max_length' => 255, 'required' => false)),
      'firstname'         => new sfValidatorString(array('max_length' => 255, 'required' => false)),
      'lastname'          => new sfValidatorString(array('max_length' => 255, 'required' => false)),
      'validate_at'       => new sfValidatorDateTime(array('required' => false)),
      'validate'          => new sfValidatorString(array('max_length' => 33, 'required' => false)),
      'id'                => new sfValidatorDoctrineChoice(array('model' => $this->getModelName(), 'column' => 'id', 'required' => false)),
      'nick_name'         => new sfValidatorString(array('max_length' => 50, 'required' => false)),
      'first_name'        => new sfValidatorString(array('max_length' => 50, 'required' => false)),
      'last_name'         => new sfValidatorString(array('max_length' => 50, 'required' => false)),
      'birth_date'        => new sfValidatorDate(array('required' => false)),
      'description'       => new sfValidatorString(array('required' => false)),
      'userpic'           => new sfValidatorString(array('max_length' => 255, 'required' => false)),
      'sex'               => new sfValidatorBoolean(array('required' => false)),
      'email'             => new sfValidatorString(array('max_length' => 255, 'required' => false)),
      'created_at'        => new sfValidatorDateTime(),
      'updated_at'        => new sfValidatorDateTime(),
      'wishes_list'       => new sfValidatorDoctrineChoice(array('multiple' => true, 'model' => 'Location', 'required' => false)),
      'my_firends_list'   => new sfValidatorDoctrineChoice(array('multiple' => true, 'model' => 'sfGuardUserProfile', 'required' => false)),
      'my_firends2_list'  => new sfValidatorDoctrineChoice(array('multiple' => true, 'model' => 'sfGuardUserProfile', 'required' => false)),
      'inboxes_list'      => new sfValidatorDoctrineChoice(array('multiple' => true, 'model' => 'Inbox', 'required' => false)),
      'read_comment_list' => new sfValidatorDoctrineChoice(array('multiple' => true, 'model' => 'Comment', 'required' => false)),
    ));

    $this->validatorSchema->setPostValidator(
      new sfValidatorAnd(array(
        new sfValidatorDoctrineUnique(array('model' => 'sfGuardUserProfile', 'column' => array('user_id'))),
        new sfValidatorDoctrineUnique(array('model' => 'sfGuardUserProfile', 'column' => array('email_new'))),
        new sfValidatorDoctrineUnique(array('model' => 'sfGuardUserProfile', 'column' => array('user_id'))),
      ))
    );

    $this->widgetSchema->setNameFormat('sf_guard_user_profile[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    $this->setupInheritance();

    parent::setup();
  }

  public function getModelName()
  {
    return 'sfGuardUserProfile';
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

    if (isset($this->widgetSchema['inboxes_list']))
    {
      $this->setDefault('inboxes_list', $this->object->Inboxes->getPrimaryKeys());
    }

    if (isset($this->widgetSchema['read_comment_list']))
    {
      $this->setDefault('read_comment_list', $this->object->ReadComment->getPrimaryKeys());
    }

  }

  protected function doSave($con = null)
  {
    $this->saveWishesList($con);
    $this->saveMyFirendsList($con);
    $this->saveMyFirends2List($con);
    $this->saveInboxesList($con);
    $this->saveReadCommentList($con);

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

  public function saveInboxesList($con = null)
  {
    if (!$this->isValid())
    {
      throw $this->getErrorSchema();
    }

    if (!isset($this->widgetSchema['inboxes_list']))
    {
      // somebody has unset this widget
      return;
    }

    if (null === $con)
    {
      $con = $this->getConnection();
    }

    $existing = $this->object->Inboxes->getPrimaryKeys();
    $values = $this->getValue('inboxes_list');
    if (!is_array($values))
    {
      $values = array();
    }

    $unlink = array_diff($existing, $values);
    if (count($unlink))
    {
      $this->object->unlink('Inboxes', array_values($unlink));
    }

    $link = array_diff($values, $existing);
    if (count($link))
    {
      $this->object->link('Inboxes', array_values($link));
    }
  }

  public function saveReadCommentList($con = null)
  {
    if (!$this->isValid())
    {
      throw $this->getErrorSchema();
    }

    if (!isset($this->widgetSchema['read_comment_list']))
    {
      // somebody has unset this widget
      return;
    }

    if (null === $con)
    {
      $con = $this->getConnection();
    }

    $existing = $this->object->ReadComment->getPrimaryKeys();
    $values = $this->getValue('read_comment_list');
    if (!is_array($values))
    {
      $values = array();
    }

    $unlink = array_diff($existing, $values);
    if (count($unlink))
    {
      $this->object->unlink('ReadComment', array_values($unlink));
    }

    $link = array_diff($values, $existing);
    if (count($link))
    {
      $this->object->link('ReadComment', array_values($link));
    }
  }

}
