<?php

/**
 * Description of htLoginForm
 *
 * @author Администратор
 * $Id: htLoginForm.php $
 */
class FRegistrationForm extends sfApplyApplyForm {

    public function configure() {
        $this->disableLocalCSRFProtection();
        $this->removeFields();


        // Add username and password fields which we'll manage
        // on our own. Before you ask, I experimented with separately
        // emitting, merging or embedding a form subclassed from
        // sfGuardUser. It was vastly more work in every instance.
        // You have to clobber all of the other fields (you can
        // automate that, but still). If you use embedForm you realize
        // you've got a nested form that looks like a
        // nested form and an end user looking at that and
        // saying "why?" If you use mergeForm you can't save(). And if
        // you output the forms consecutively you have to manage your
        // own transactions. Adding two fields to the profile form
        // is definitely simpler.
        //Setting username widget
        $this->setWidget('username', new sfWidgetFormInput(array(), array('maxlength' => 16)));
        $this->setWidget('password', new sfWidgetFormInputPassword(array(), array('maxlength' => 128)));

        //Settings for email fields
        $this->setWidget('email', new sfWidgetFormInputText(array(), array('maxlength' => 255)));
        $this->setWidget('email2', new sfWidgetFormInputText(array(), array('maxlength' => 255)));

        //Setting password widgets



        $this->widgetSchema->setLabels(array(
            'username' => 'Логин',
            'password' => 'Пароль',
            'email' => 'E-mail',
            'email2' => 'Повторить E-mail'
        ));

        $this->widgetSchema->setNameFormat('sfApplyApply[%s]');
        $this->widgetSchema->setFormFormatterName('list');

        // We have the right to an opinion on these fields because we
        // implement at least part of their behavior. Validators for the
        // rest of the user profile come from the schema and from the
        // developer's form subclass

        $this->setValidator('username', new sfValidatorAnd(array(
                    new sfValidatorString(
                            array(
                                'required' => true,
                                'trim' => true,
                                'min_length' => 4,
                                'max_length' => 16
                            ),
                            array( 'min_length' => 'That username is too short. It must contain a minimum of %min_length% characters.')

                    ),
                    new sfValidatorRegex(
                            array('pattern' => '/^\w+$/'),
                            array('invalid' => 'Usernames must contain only letters, numbers and underscores.')
                    ),
                    new sfValidatorDoctrineUnique(
                            array('model' => 'sfGuardUser', 'column' => 'username'),
                            array('invalid' => 'There is already a user by that name. Choose another.')
                    )
                )));

        $this->setValidator('password', new sfValidatorApplyPassword());

        // Be aware that sfValidatorEmail doesn't guarantee a string that is preescaped for HTML purposes.
        // If you choose to echo the user's email address somewhere, make sure you escape entities.
        // <, > and & are rare but not forbidden due to the "quoted string in the local part" form of email address
        // (read the RFC if you don't believe me...).

        $this->setValidator('email', new sfValidatorAnd(array(
                    new sfValidatorEmail(array('required' => true, 'trim' => true),array('invalid'=>'Please enter a valid email address.')),
                    new sfValidatorDoctrineUnique(
                            array('model' => 'sfGuardUser', 'column' => 'email_address'),
                            array('invalid' => 'An account with that email address already exists. If you have forgotten your password, click "cancel", then "Reset My Password."'))
                )));

        $this->setValidator('email2', new sfValidatorEmail(
                        array('required' => true, 'trim' => true),array('invalid'=>'Please enter a valid email address.')));

        $postValidators = array(new sfValidatorSchemaCompare('email', sfValidatorSchemaCompare::EQUAL,
                    'email2', array(), array('invalid' => 'The email addresses did not match.')));


        //Include captcha if enabled
        if ($this->isCaptchaEnabled()) {
            $this->addCaptcha();
        }
        $this->validatorSchema->setPostValidator(new sfValidatorAnd($postValidators));
    }

    protected function removeFields() {

        // We're making a new user or editing the user who is
        // logged in. In neither case is it appropriate for
        // the user to get to pick an existing userid. The user
        // also doesn't get to modify the validate field which
        // is part of how their account is verified by email.

        unset($this['requester_list'],$this['id'], $this['city_id'], $this['accepter_list'], $this['user_id'], $this['validate'], $this['validate_at'], $this['created_at'], $this['updated_at'], $this['birth_date'], $this['first_name'], $this['firstname'], $this['last_name'], $this['lastname'], $this['wishes_list'], $this['my_firends_list'], $this['my_firends2_list'], $this['inboxes_list'], $this['email_new'], $this['sex'], $this['userpic'], $this['description'], $this['read_comment_list']
        );
    }

    public function getStylesheets() {
        return array(
            '/css/form.css' => 'screen',
        );
    }

    public function getJavaScripts() {
        return array('/js/FRegistrationForm.js');
        $url_params = sfJqueryFormValidationRules::getUrlParams();
        $url_params['form'] = get_class($this);
        return array_merge(parent::getJavaScripts(), array(url_for($url_params)));
    }

    public function doSave($con = null) {
        $user = $this->getObject()->getUser();
        $user->setUsername($this->getValue('username'));
        $user->setPassword($this->getValue('password'));
        $user->setEmailAddress($this->getValue('email'));
        // They must confirm their account first
        $user->setIsActive(false);
        $user->save();
        $this->getObject()->setUserId($user->getId());

        //блять какая то хуйня где то юзер порождаться стал
        if (null === $con) {
            $con = $this->getConnection();
        }

        $this->updateObject();

        $this->getObject()->save($con);

        // embedded forms
        $this->saveEmbeddedForms($con);
    }

}
