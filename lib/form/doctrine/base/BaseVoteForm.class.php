<?php

/**
 * Vote form base class.
 *
 * @method Vote getObject() Returns the current form's model object
 *
 * @package    FISHERY
 * @subpackage form
 * @author     Sergei Belov <limitium@gmail.com>
 * @version    SVN: $Id: sfDoctrineFormGeneratedTemplate.php 29553 2010-05-20 14:33:00Z Kris.Wallsmith $
 */
abstract class BaseVoteForm extends BaseFormDoctrine
{
  public function setup()
  {
    $this->setWidgets(array(
      'id'            => new sfWidgetFormInputHidden(),
      'value'         => new sfWidgetFormInputText(),
      'voter'         => new sfWidgetFormDoctrineChoice(array('model' => $this->getRelatedModelName('Voter'), 'add_empty' => true)),
      'toward'        => new sfWidgetFormInputText(),
      'location_id'   => new sfWidgetFormInputText(),
      'comment_id'    => new sfWidgetFormInputText(),
      'profit_id'     => new sfWidgetFormInputText(),
      'profile_id'    => new sfWidgetFormInputText(),
      'talk_id'       => new sfWidgetFormInputText(),
      'fish_event_id' => new sfWidgetFormInputText(),
      'photo_id'      => new sfWidgetFormInputText(),
    ));

    $this->setValidators(array(
      'id'            => new sfValidatorChoice(array('choices' => array($this->getObject()->get('id')), 'empty_value' => $this->getObject()->get('id'), 'required' => false)),
      'value'         => new sfValidatorInteger(),
      'voter'         => new sfValidatorDoctrineChoice(array('model' => $this->getRelatedModelName('Voter'), 'required' => false)),
      'toward'        => new sfValidatorString(array('max_length' => 255, 'required' => false)),
      'location_id'   => new sfValidatorInteger(array('required' => false)),
      'comment_id'    => new sfValidatorInteger(array('required' => false)),
      'profit_id'     => new sfValidatorInteger(array('required' => false)),
      'profile_id'    => new sfValidatorInteger(array('required' => false)),
      'talk_id'       => new sfValidatorInteger(array('required' => false)),
      'fish_event_id' => new sfValidatorInteger(array('required' => false)),
      'photo_id'      => new sfValidatorInteger(array('required' => false)),
    ));

    $this->widgetSchema->setNameFormat('vote[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    $this->setupInheritance();

    parent::setup();
  }

  public function getModelName()
  {
    return 'Vote';
  }

}
