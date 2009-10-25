<?php

/**
 * Route form.
 *
 * @package    HT
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id$
 */
class RouteForm extends BaseRouteForm {
    public function configure() {
        unset($this['created_at'],$this['updated_at']);

        $this->widgetSchema['description']         = new sfWidgetFormTextarea();
        $this->widgetSchema['points']              = new sfWidgetFormInputHidden();

        $this->validatorSchema['name']             = new sfValidatorString(array('min_length' => 3,'max_length' => 50, 'required' => true));
        $this->validatorSchema['description']      = new sfValidatorString(array('min_length' => 5,'max_length' => 255, 'required' => true));
        $this->validatorSchema['points']           = new validatorPoints(array('required' => true));
    }
}
