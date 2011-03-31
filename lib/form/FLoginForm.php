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

        $this->validatorSchema['username'] = new sfValidatorString(array('min_length' => 3, 'max_length' => 50, 'required' => true));
        $this->validatorSchema['password'] = new sfValidatorString(array('min_length' => 3, 'max_length' => 50, 'required' => true));
        $this->validatorSchema['remember'] = new sfValidatorString(array('required' => false));


        $this->widgetSchema->setLabels(array(
            'username' => 'Логин или почта',
            'password' => 'Пароль',
            'remember' => 'Запомнить?',
        ));

        $this->validatorSchema->setPostValidator(new sfGuardValidatorUser());

        $this->widgetSchema->setNameFormat('signin[%s]');
    }

}