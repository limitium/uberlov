<?php

/**
 * Comment form base class.
 *
 * @method Comment getObject() Returns the current form's model object
 *
 * @package    FISHERY
 * @subpackage form
 * @author     Sergei Belov <limitium@gmail.com>
 * @version    SVN: $Id: sfDoctrineFormGeneratedTemplate.php 29553 2010-05-20 14:33:00Z Kris.Wallsmith $
 */
abstract class BaseCommentForm extends BaseFormDoctrine
{
  public function setup()
  {
    $this->setWidgets(array(
      'id'                         => new sfWidgetFormInputHidden(),
      'parent'                     => new sfWidgetFormInputText(),
      'message'                    => new sfWidgetFormTextarea(),
      'toward'                     => new sfWidgetFormInputText(),
      'location_id'                => new sfWidgetFormInputText(),
      'profit_id'                  => new sfWidgetFormInputText(),
      'inbox_id'                   => new sfWidgetFormInputText(),
      'talk_id'                    => new sfWidgetFormInputText(),
      'fish_event_id'              => new sfWidgetFormInputText(),
      'created_by'                 => new sfWidgetFormDoctrineChoice(array('model' => $this->getRelatedModelName('CreatedBy'), 'add_empty' => false)),
      'updated_by'                 => new sfWidgetFormDoctrineChoice(array('model' => $this->getRelatedModelName('UpdatedBy'), 'add_empty' => false)),
      'created_at'                 => new sfWidgetFormDateTime(),
      'updated_at'                 => new sfWidgetFormDateTime(),
      'root_id'                    => new sfWidgetFormInputText(),
      'lft'                        => new sfWidgetFormInputText(),
      'rgt'                        => new sfWidgetFormInputText(),
      'level'                      => new sfWidgetFormInputText(),
      'sf_guard_user_profile_list' => new sfWidgetFormDoctrineChoice(array('multiple' => true, 'model' => 'sfGuardUserProfile')),
    ));

    $this->setValidators(array(
      'id'                         => new sfValidatorChoice(array('choices' => array($this->getObject()->get('id')), 'empty_value' => $this->getObject()->get('id'), 'required' => false)),
      'parent'                     => new sfValidatorInteger(array('required' => false)),
      'message'                    => new sfValidatorString(array('max_length' => 1000)),
      'toward'                     => new sfValidatorString(array('max_length' => 255, 'required' => false)),
      'location_id'                => new sfValidatorInteger(array('required' => false)),
      'profit_id'                  => new sfValidatorInteger(array('required' => false)),
      'inbox_id'                   => new sfValidatorInteger(array('required' => false)),
      'talk_id'                    => new sfValidatorInteger(array('required' => false)),
      'fish_event_id'              => new sfValidatorInteger(array('required' => false)),
      'created_by'                 => new sfValidatorDoctrineChoice(array('model' => $this->getRelatedModelName('CreatedBy'))),
      'updated_by'                 => new sfValidatorDoctrineChoice(array('model' => $this->getRelatedModelName('UpdatedBy'))),
      'created_at'                 => new sfValidatorDateTime(),
      'updated_at'                 => new sfValidatorDateTime(),
      'root_id'                    => new sfValidatorInteger(array('required' => false)),
      'lft'                        => new sfValidatorInteger(array('required' => false)),
      'rgt'                        => new sfValidatorInteger(array('required' => false)),
      'level'                      => new sfValidatorInteger(array('required' => false)),
      'sf_guard_user_profile_list' => new sfValidatorDoctrineChoice(array('multiple' => true, 'model' => 'sfGuardUserProfile', 'required' => false)),
    ));

    $this->widgetSchema->setNameFormat('comment[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    $this->setupInheritance();

    parent::setup();
  }

  public function getModelName()
  {
    return 'Comment';
  }

  public function updateDefaultsFromObject()
  {
    parent::updateDefaultsFromObject();

    if (isset($this->widgetSchema['sf_guard_user_profile_list']))
    {
      $this->setDefault('sf_guard_user_profile_list', $this->object->sfGuardUserProfile->getPrimaryKeys());
    }

  }

  protected function doSave($con = null)
  {
    $this->savesfGuardUserProfileList($con);

    parent::doSave($con);
  }

  public function savesfGuardUserProfileList($con = null)
  {
    if (!$this->isValid())
    {
      throw $this->getErrorSchema();
    }

    if (!isset($this->widgetSchema['sf_guard_user_profile_list']))
    {
      // somebody has unset this widget
      return;
    }

    if (null === $con)
    {
      $con = $this->getConnection();
    }

    $existing = $this->object->sfGuardUserProfile->getPrimaryKeys();
    $values = $this->getValue('sf_guard_user_profile_list');
    if (!is_array($values))
    {
      $values = array();
    }

    $unlink = array_diff($existing, $values);
    if (count($unlink))
    {
      $this->object->unlink('sfGuardUserProfile', array_values($unlink));
    }

    $link = array_diff($values, $existing);
    if (count($link))
    {
      $this->object->link('sfGuardUserProfile', array_values($link));
    }
  }

}
