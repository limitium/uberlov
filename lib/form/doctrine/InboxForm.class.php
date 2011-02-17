<?php

/**
 * Inbox form.
 *
 * @package    FISHERY
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormTemplate.php 23810 2009-11-12 11:07:44Z Kris.Wallsmith $
 */
class InboxForm extends BaseInboxForm {

    public function configure() {
        unset($this['created_at'],
                $this['updated_at'],
                $this['created_by'],
                $this['updated_by']
        );

        $this->widgetSchema['name'] = new sfWidgetFormInputText();
        $this->widgetSchema['inboxed_list'] = new sfWidgetFormInputText();
        $this->widgetSchema['message'] = new sfWidgetFormTextarea();


        $this->validatorSchema['name'] = new sfValidatorString(array('min_length' => 3, 'max_length' => 50, 'required' => true));
        $this->validatorSchema['inboxed_list'] = new sfValidatorDoctrineChoice(array('multiple' => true, 'model' => 'sfGuardUserProfile', 'required' => true));
        $this->validatorSchema['message'] = new sfValidatorString(array('min_length' => 5,'required' => true));
    }

}
