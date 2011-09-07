<?php

/**
 * Description of htLoginForm
 *
 * @author Администратор
 * $Id: htLoginForm.php $
 */
class LocationSearchForm extends BaseForm {

    public function configure() {
        $this->widgetSchema['query'] = new sfWidgetFormInputText();

        $this->validatorSchema['query'] = new sfValidatorString(array('required' => true));


        $this->widgetSchema->setLabels(array(
            'query' => 'Запрос',
        ));

        parent::configure();

    }

}