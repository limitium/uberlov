<?php

/**
 * sfGuardUserProfile form.
 *
 * @package    FISHERY
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrinePluginFormTemplate.php 23810 2009-11-12 11:07:44Z Kris.Wallsmith $
 */
class sfGuardUserProfileForm extends PluginsfGuardUserProfileForm {

    public function configure() {
        unset($this['accepter_list'], $this['requester_list'],$this['validate_at'],$this['email_new'],$this['user_id'], $this['nick_name'], $this['created_at'], $this['updated_at'], $this['wishes_list'], $this['my_firends_list'], $this['my_firends2_list'], $this['inboxes_list'], $this['read_comment_list']);

        $this->widgetSchema['first_name'] = new sfWidgetFormInputText(array(), array('maxlength' => 30));
        $this->widgetSchema['last_name'] = new sfWidgetFormInputText(array(), array('maxlength' => 70));
        $this->widgetSchema['birth_date'] = new formInputDate();
        $this->widgetSchema['city_id'] = new sfWidgetFormDoctrineChoice(array('model' => 'City', 'table_method' => 'getCities'));
        $this->widgetSchema['description'] = new sfWidgetFormTextarea();
        $this->widgetSchema['userpic'] = new sfWidgetFormInputFile();
        $this->widgetSchema['sex'] = new sfWidgetFormInputCheckbox();

        $this->validatorSchema['first_name'] = new sfValidatorApplyFirstname();
        $this->validatorSchema['last_name'] = new sfValidatorApplyLastname();
        $this->validatorSchema['description'] = new sfValidatorString(array('required' => false));
        $this->validatorSchema['city_id'] = new sfValidatorDoctrineChoice(array('model' => 'City', 'required' => false));
        $this->validatorSchema['birth_date'] = new sfValidatorDate(array('date_format' => "/[0-2][0-9]\.[0-1][0-9]\.[0-9]{4}/", 'with_time' => false, 'date_format_error' => 'd.m.Y', 'required' => false));
        $this->validatorSchema['sex'] = new sfValidatorBoolean(array('required' => false));
        $this->validatorSchema['userpic'] = new sfValidatorFile(array(
                    'max_size' => 1024 * 1024,
                    'required' => false,
                    'mime_types' => array(
                        'image/jpeg',
                        'image/png',
                        'image/gif'
                    )
                ));


        $this->widgetSchema->setLabels(array(
            'first_name' => 'Имя',
            'last_name' => 'Фамилия',
            'city_id' => 'Город',
            'birth_date' => 'Дата рождения',
            'userpic' => 'Юзерпик',
            'sex' => 'Мужик',
            'description' => 'О себе',
        ));
        $this->widgetSchema->setNameFormat('profile[%s]');
    }

    public function getJavaScripts() {
        return array('/js/lib/tinymce/tiny_mce.js', '/js/form.js');
    }

}
