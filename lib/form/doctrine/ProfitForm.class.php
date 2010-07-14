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
//        $this->widgetSchema['date'] = new sfWidgetFormDate();
        $this->widgetSchema['date'] = new sfWidgetFormInputText();
        $this->widgetSchema['qty'] = new sfWidgetFormInputText();
        $this->widgetSchema['styles'] = new sfWidgetFormDoctrineChoice(array('model'=>'Style'));
        $this->widgetSchema['fishes'] = new sfWidgetFormDoctrineChoice(array('model'=>'Fish'));

        $this->validatorSchema['location_id'] = new sfValidatorDoctrineChoice(array('model' => 'Location', 'required' => true));
        $this->validatorSchema['date'] = new sfValidatorDate(array('date_format' => "/[0-2][0-9]\.[0-1][0-9]\.[0-9]{4}/",'with_time' =>false, 'required' => true, 'date_format_error' => 'd.m.Y'));
        $this->validatorSchema['details'] = new sfValidatorString(array('required' => true));

        $this->validatorSchema['qty'] = new sfValidatorString();
        $this->validatorSchema['styles'] = new sfValidatorString();
        $this->validatorSchema['fishes'] = new sfValidatorString();

        $this->widgetSchema->setLabels(array(
            'date' => 'Дата:',
            'cordage' => 'Снасти:',
            'description' => 'Описание:<br /><sub>Не забудте о погоде,<br />состоянии воды</sub>'
        ));
    }

}
