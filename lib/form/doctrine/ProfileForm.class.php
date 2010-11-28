<?php

/**
 * Profile form.
 *
 * @package    HT
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormTemplate.php 23810 2009-11-12 11:07:44Z Kris.Wallsmith $
 */
class ProfileForm extends BaseProfileForm {

    public function configure() {
        unset($this['user_id'],
                $this['created_at'],
                $this['updated_at'],
                $this['wishes_list'],
                $this['my_firends_list'],
                $this['my_firends2_list'],
                $this['inboxes_list'],
                $this['read_comment_list']);

        $this->widgetSchema['nick_name'] = new sfWidgetFormInputText();
        $this->widgetSchema['first_name'] = new sfWidgetFormInputText();
        $this->widgetSchema['last_name'] = new sfWidgetFormInputText();
        $this->widgetSchema['birth_date'] = new sfWidgetFormInputText();
        $this->widgetSchema['userpic'] = new sfWidgetFormInputText();
        $this->widgetSchema['sex'] = new sfWidgetFormInputCheckbox();

        $this->validatorSchema['nick_name'] = new sfValidatorString(array('min_length' => 3, 'max_length' => 50, 'required' => true));
        $this->validatorSchema['first_name'] = new sfValidatorString(array('min_length' => 3, 'max_length' => 50, 'required' => true));
        $this->validatorSchema['last_name'] = new sfValidatorString(array('min_length' => 3, 'max_length' => 50, 'required' => true));
        $this->validatorSchema['date'] = new sfValidatorDate(array('date_format' => "/[0-2][0-9]\.[0-1][0-9]\.[0-9]{4}/", 'with_time' => false, 'date_format_error' => 'd.m.Y', 'required' => false));
        $this->validatorSchema['sex'] = new sfValidatorBoolean(array('required' => false));
        $this->validatorSchema['sex'] = new sfValidatorFile(array('required' => false));


        $this->widgetSchema->setLabels(array(
            'name' => 'Название<br /><sub>желательно содержащее название водоема</sub>',
            'description' => 'Описание',
            'depth' => 'Глубина<br /><sub>в метрах</sub>',
            'is_free' => 'Бесплатное',
            'price' => 'Расценки<br /><sub>цена за: день, час, кг и т.д.</sub>',
            'location_flow_id' => 'Течение',
            'location_fundus_id' => 'Тип дна',
            'location_relief_id' => 'Рельеф дна',
            'location_type_id' => 'Тип',
            'location_scope_id' => 'Видимость локации<br /><sub>кто может видеть на карте</sub>',
        ));
    }

}
