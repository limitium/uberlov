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
        unset($this['created_at'],
            $this['updated_at'],
            $this['created_by'],
            $this['updated_by'],
            $this['slug'],
            $this['version'],
            $this['whishers_list'],
            $this['address_id']
        );

        $this->widgetSchema['description']         = new sfWidgetFormTextarea();
        $this->widgetSchema['location_relief_id']     = new sfWidgetFormDoctrineChoice(array('model'=>'LocationRelief'));
        $this->widgetSchema['location_type_id']     = new sfWidgetFormDoctrineChoice(array('model'=>'LocationType'));
        $this->widgetSchema['location_flow_id']       = new sfWidgetFormDoctrineChoice(array('model'=>'LocationFlow'));
        $this->widgetSchema['location_fundus_id']     = new sfWidgetFormDoctrineChoice(array('model'=>'LocationFundus'));
        $this->widgetSchema['location_scope_id']     = new sfWidgetFormDoctrineChoice(array('model'=>'LocationScope'));
        $this->widgetSchema['is_free']            = new sfWidgetFormInputCheckbox();
        $this->widgetSchema['price']              = new sfWidgetFormTextarea();
        $this->widgetSchema['depth']               = new sfWidgetFormInputText();
        $this->widgetSchema['latitude']            = new sfWidgetFormInputHidden();
        $this->widgetSchema['longitude']           = new sfWidgetFormInputHidden();
        $this->widgetSchema['address']           = new sfWidgetFormInputHidden();

        $this->validatorSchema['name']             = new sfValidatorString(array('min_length' => 3,'max_length' => 50, 'required' => true));
        $this->validatorSchema['description']      = new sfValidatorString(array('min_length' => 5,'max_length' => 255, 'required' => false));
        $this->validatorSchema['location_type_id']  = new sfValidatorDoctrineChoice(array('model'=>'LocationType','required' => false));
        $this->validatorSchema['location_relief_id']  = new sfValidatorDoctrineChoice(array('model'=>'LocationRelief','required' => false));
        $this->validatorSchema['location_flow_id']    = new sfValidatorDoctrineChoice(array('model'=>'LocationFlow','required' => false));
        $this->validatorSchema['location_fundus_id']  = new sfValidatorDoctrineChoice(array('model'=>'LocationFundus','required' => false));
        $this->validatorSchema['location_scope_id']  = new sfValidatorDoctrineChoice(array('model'=>'LocationScope','required' => false));
        $this->validatorSchema['is_free']            = new sfValidatorBoolean(array('required' => false));
        $this->validatorSchema['price']              = new sfValidatorString(array('required' => false));
        $this->validatorSchema['depth']            = new sfValidatorNumber(array('required' => false));
        $this->validatorSchema['latitude']         = new sfValidatorNumber(array('required' => true));
        $this->validatorSchema['longitude']        = new sfValidatorNumber(array('required' => true));
        $this->validatorSchema['address']        = new sfValidatorString(array('required' => true));

        $this->widgetSchema->setLabels(array(
            'name'               => 'Название<br /><sub>желательно содержащее название водоема</sub>',
            'description'        => 'Описание',
            'depth'              => 'Глубина<br /><sub>в метрах</sub>',
            'is_free'            => 'Бесплатное',
            'price'              => 'Расценки<br /><sub>цена за: день, час, кг и т.д.</sub>',
            'location_flow_id'   => 'Течение',
            'location_fundus_id' => 'Тип дна',
            'location_relief_id' => 'Рельеф дна',
            'location_type_id'   => 'Тип',
            'location_scope_id'  => 'Видимость локации<br /><sub>кто может видеть на карте</sub>',
        ));
    }
}
