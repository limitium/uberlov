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
        unset($this['created_at'],$this['updated_at'],$this['created_by'],$this['updated_by']);

        $this->widgetSchema['description']         = new sfWidgetFormTextarea();
        $this->widgetSchema['location_relief_id']     = new sfWidgetFormDoctrineChoice(array('model'=>'LocationRelief'));
        $this->widgetSchema['location_type_id']     = new sfWidgetFormDoctrineChoice(array('model'=>'LocationType'));
        $this->widgetSchema['location_flow_id']       = new sfWidgetFormDoctrineChoice(array('model'=>'LocationFlow'));
        $this->widgetSchema['location_fundus_id']     = new sfWidgetFormDoctrineChoice(array('model'=>'LocationFundus'));
        $this->widgetSchema['depth']               = new sfWidgetFormInputText();
        $this->widgetSchema['latitude']            = new sfWidgetFormInputHidden();
        $this->widgetSchema['longitude']           = new sfWidgetFormInputHidden();

        $this->validatorSchema['name']             = new sfValidatorString(array('min_length' => 3,'max_length' => 50, 'required' => true));
        $this->validatorSchema['description']      = new sfValidatorString(array('min_length' => 5,'max_length' => 255, 'required' => true));
        $this->validatorSchema['location_type_id']  = new sfValidatorDoctrineChoice(array('model'=>'LocationType','required' => true));
        $this->validatorSchema['location_relief_id']  = new sfValidatorDoctrineChoice(array('model'=>'LocationRelief','required' => true));
        $this->validatorSchema['location_flow_id']    = new sfValidatorDoctrineChoice(array('model'=>'LocationFlow','required' => true));
        $this->validatorSchema['location_fundus_id']  = new sfValidatorDoctrineChoice(array('model'=>'LocationFundus','required' => true));
        $this->validatorSchema['depth']            = new sfValidatorNumber(array('required' => true));
        $this->validatorSchema['latitude']         = new sfValidatorNumber(array('required' => true));
        $this->validatorSchema['longitude']        = new sfValidatorNumber(array('required' => true));
    }
}
