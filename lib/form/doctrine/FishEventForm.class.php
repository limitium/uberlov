<?php

/**
 * FishEvent form.
 *
 * @package    FISHERY
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormTemplate.php 23810 2009-11-12 11:07:44Z Kris.Wallsmith $
 */
class FishEventForm extends BaseFishEventForm {

    public function configure() {
        unset($this['created_at'], $this['updated_at'], $this['created_by'], $this['updated_by']
        );
        $this->widgetSchema['location_id'] = new sfWidgetFormInputHidden();
        $this->widgetSchema['fish_event_type_id'] = new sfWidgetFormDoctrineChoice(array('model' => 'FishEventType', 'add_empty' => false, 'order_by' => array('weight', 'asc')));
        $this->widgetSchema['date'] = new formInputDate();
        $this->widgetSchema['price'] = new sfWidgetFormTextarea();
        $this->widgetSchema['schedule'] = new sfWidgetFormTextarea();
        $this->widgetSchema['contact'] = new sfWidgetFormTextarea();
        $this->widgetSchema['rules'] = new sfWidgetFormTextarea();
        $this->widgetSchema['description'] = new sfWidgetFormTextarea();
        $this->widgetSchema['user'] = new sfWidgetFormTextarea();

        $this->validatorSchema['location_id'] = new sfValidatorDoctrineChoice(array('model' => 'Location', 'required' => true));
        $this->validatorSchema['fish_event_type_id'] = new sfValidatorDoctrineChoice(array('model' => 'FishEventType', 'required' => false));
        $this->validatorSchema['date'] = new sfValidatorDate(array('date_format' => "/[0-2][0-9]\.[0-1][0-9]\.[0-9]{4}/", 'with_time' => false, 'required' => true, 'date_format_error' => 'd.m.Y'));
        $this->validatorSchema['rules'] = new sfValidatorString(array('required' => false));
        $this->validatorSchema['description'] = new sfValidatorString(array('required' => false));
        $this->validatorSchema['user'] = new sfValidatorString(array('required' => false));
        $this->validatorSchema['price'] = new sfValidatorString(array('required' => false));
        $this->validatorSchema['schedule'] = new sfValidatorString(array('required' => false));
        $this->validatorSchema['contact'] = new sfValidatorString(array('required' => false));

        $this->widgetSchema->setLabels(array(
            'name' => 'Название',
            'description' => 'Описание',
            'date' => 'Дата начала',
            'rules' => 'Регламент',
            'description' => 'Описание',
            'users' => 'Участники',
            'price' => 'Цены',
            'schedule' => 'Расписание',
            'contact' => 'Контакты',
            'fish_event_type_id' => 'Тип',
        ));
    }

}
