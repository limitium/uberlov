<?php

/**
 * ProfitDetail form base class.
 *
 * @method ProfitDetail getObject() Returns the current form's model object
 *
 * @package    FISHERY
 * @subpackage form
 * @author     Sergei Belov <limitium@gmail.com>
 * @version    SVN: $Id: sfDoctrineFormGeneratedTemplate.php 29553 2010-05-20 14:33:00Z Kris.Wallsmith $
 */
abstract class BaseProfitDetailForm extends BaseFormDoctrine
{
  public function setup()
  {
    $this->setWidgets(array(
      'id'        => new sfWidgetFormInputHidden(),
      'profit_id' => new sfWidgetFormDoctrineChoice(array('model' => $this->getRelatedModelName('Profit'), 'add_empty' => true)),
      'style_id'  => new sfWidgetFormDoctrineChoice(array('model' => $this->getRelatedModelName('Style'), 'add_empty' => true)),
      'fish_id'   => new sfWidgetFormDoctrineChoice(array('model' => $this->getRelatedModelName('Fish'), 'add_empty' => true)),
      'qty'       => new sfWidgetFormInputText(),
    ));

    $this->setValidators(array(
      'id'        => new sfValidatorChoice(array('choices' => array($this->getObject()->get('id')), 'empty_value' => $this->getObject()->get('id'), 'required' => false)),
      'profit_id' => new sfValidatorDoctrineChoice(array('model' => $this->getRelatedModelName('Profit'), 'required' => false)),
      'style_id'  => new sfValidatorDoctrineChoice(array('model' => $this->getRelatedModelName('Style'), 'required' => false)),
      'fish_id'   => new sfValidatorDoctrineChoice(array('model' => $this->getRelatedModelName('Fish'), 'required' => false)),
      'qty'       => new sfValidatorNumber(),
    ));

    $this->validatorSchema->setPostValidator(
      new sfValidatorDoctrineUnique(array('model' => 'ProfitDetail', 'column' => array('profit_id', 'style_id', 'fish_id')))
    );

    $this->widgetSchema->setNameFormat('profit_detail[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    $this->setupInheritance();

    parent::setup();
  }

  public function getModelName()
  {
    return 'ProfitDetail';
  }

}
