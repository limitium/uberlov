<?php

/**
 * Location form.
 *
 * @package    HT
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id$
 */
class LocationForm extends BaseLocationForm {
    public function configure() {
        unset($this['created_at'],$this['updated_at']);

        $this->widgetSchema['description']      = new sfWidgetFormTextarea();
        $this->widgetSchema['location_type_id'] = new sfWidgetFormDoctrineSelect(array('model'=>'LocationType'));
        $this->widgetSchema['lat']              = new sfWidgetFormInputHidden();
        $this->widgetSchema['lng']              = new sfWidgetFormInputHidden();

        $this->validatorSchema['name']             = new sfValidatorString(array('min_length' => 3,'max_length' => 50, 'required' => true));
        $this->validatorSchema['description']      = new sfValidatorString(array('min_length' => 5,'max_length' => 255, 'required' => true));
        $this->validatorSchema['location_type_id'] = new sfValidatorInteger(array('required' => true));
    }
}
