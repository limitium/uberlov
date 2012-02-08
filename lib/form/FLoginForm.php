<?php

/**
 * Description of htLoginForm
 *
 * @author Администратор
 * $Id: htLoginForm.php $
 */
class FloginForm extends BaseForm {

    public function configure() {

        $this->widgetSchema['username'] = new sfWidgetFormInputText();
        $this->widgetSchema['password'] = new sfWidgetFormInputPassword(array('type' => 'password'));
        $this->widgetSchema['remember'] = new sfWidgetFormInputCheckbox();

        $this->validatorSchema['username'] = new sfValidatorString(array('min_length' => 4, 'max_length' => 16, 'required' => true),array( 'min_length' => 'That username is too short. It must contain a minimum of %min_length% characters.'));
        $this->validatorSchema['password'] = new sfValidatorString(array('min_length' => 6, 'max_length' => 128, 'required' => true),array( 'min_length' => 'That password is too short. It must contain a minimum of %min_length% characters.'));
        $this->validatorSchema['remember'] = new sfValidatorString(array('required' => false));


        $this->widgetSchema->setLabels(array(
            'username' => 'Логин или почта',
            'password' => 'Пароль',
            'remember' => 'Запомнить?',
        ));

        $this->validatorSchema->setPostValidator(new sfGuardValidatorUser());

        $this->widgetSchema->setNameFormat('signin[%s]');
    }
    
     public function getJavaScripts() {
        return array('/js/FLoginForm.js');
        $url_params = sfJqueryFormValidationRules::getUrlParams();
        $url_params['form'] = get_class($this);
        return array_merge(parent::getJavaScripts(), array( url_for($url_params)));
    }
}