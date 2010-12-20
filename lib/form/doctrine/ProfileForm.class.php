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
                $this['nick_name'],
                $this['created_at'],
                $this['updated_at'],
                $this['wishes_list'],
                $this['my_firends_list'],
                $this['my_firends2_list'],
                $this['inboxes_list'],
                $this['read_comment_list']);

        $this->widgetSchema['first_name'] = new sfWidgetFormInputText();
        $this->widgetSchema['last_name'] = new sfWidgetFormInputText();
        $this->widgetSchema['birth_date'] = new sfWidgetFormInputText();
        $this->widgetSchema['birth_date'] = new formInputDate();
        $this->widgetSchema['description'] = new sfWidgetFormTextarea();
        $this->widgetSchema['userpic'] = new sfWidgetFormInputText();
        $this->widgetSchema['sex'] = new sfWidgetFormInputCheckbox();

        $this->validatorSchema['first_name'] = new sfValidatorString(array('min_length' => 3, 'max_length' => 50, 'required' => true));
        $this->validatorSchema['last_name'] = new sfValidatorString(array('min_length' => 3, 'max_length' => 50, 'required' => true));
        $this->validatorSchema['description'] = new sfValidatorString(array('required' => false));
        $this->validatorSchema['date'] = new sfValidatorDate(array('date_format' => "/[0-2][0-9]\.[0-1][0-9]\.[0-9]{4}/", 'with_time' => false, 'date_format_error' => 'd.m.Y', 'required' => false));
        $this->validatorSchema['sex'] = new sfValidatorBoolean(array('required' => false));
        $this->validatorSchema['userpic'] = new sfValidatorFile(array('required' => false));


        $this->widgetSchema->setLabels(array(
            'first_name' => 'Имя',
            'last_name' => 'Фамилия',
            'birth_date' => 'Дата рождения',
            'userpic' => 'Юзерпик',
            'sex' => 'Мужик',
            'description' => 'О себе',
        ));
    }

}
