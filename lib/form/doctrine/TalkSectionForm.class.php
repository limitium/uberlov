<?php

/**
 * TalkSection form.
 *
 * @package    FISHERY
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormTemplate.php 23810 2009-11-12 11:07:44Z Kris.Wallsmith $
 */
class TalkSectionForm extends BaseTalkSectionForm {

    public function configure() {
        unset($this['id'], $this['level'], $this['rgt'], $this['lft']);

        $this->widgetSchema['name'] = new sfWidgetFormInput();
        $this->widgetSchema['parent'] = new sfWidgetFormInputHidden();

        $this->validatorSchema['name'] = new sfValidatorString(array('required' => true, 'max_length' => 255));
        $this->validatorSchema['parent'] = new sfValidatorDoctrineChoice(array('model' => 'TalkSection', 'required' => true));

        $this->widgetSchema->setLabels(array(
            'name' => 'Название секции',
        ));
    }
}
