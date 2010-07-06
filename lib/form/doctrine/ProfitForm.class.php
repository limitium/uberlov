<?php

/**
 * Profit form.
 *
 * @package    HT
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormTemplate.php 23810 2009-11-12 11:07:44Z Kris.Wallsmith $
 */
class ProfitForm extends BaseProfitForm {

    public function configure() {
        unset($this['created_at'],
                $this['updated_at']
        );

        $this->widgetSchema['location_id'] = new sfWidgetFormInputHidden();
        $this->widgetSchema['id'] = new sfWidgetFormInputHidden();
        $this->widgetSchema['details'] = new sfWidgetFormInputHidden();
        $this->widgetSchema['date'] = new sfWidgetFormInputText();

        $this->validatorSchema['location_id'] = new sfValidatorDoctrineChoice(array('model' => 'Location', 'required' => true));
        $this->validatorSchema['date'] = new sfValidatorDate(array('date_format' => 'd.m.Y', 'required' => true));
        $this->validatorSchema['details'] = new sfValidatorString(array('required' => true));

        $this->widgetSchema->setLabels(array(
            'date' => 'Дата',
            'cordage' => 'Снасти',
            'description' => 'Описание<br /><sub>Не забудте о погоде,<br />состоянии воды</sub>'
        ));
    }

}
