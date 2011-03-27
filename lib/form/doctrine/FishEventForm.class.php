<?php

/**
 * FishEvent form.
 *
 * @package    FISHERY
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormTemplate.php 23810 2009-11-12 11:07:44Z Kris.Wallsmith $
 */
class FishEventForm extends BaseFishEventForm {

    public function configure() {
        unset($this['created_at'],
                $this['updated_at'],
                $this['created_by'],
                $this['updated_by']
        );
        $this->widgetSchema['location_id'] = new sfWidgetFormInputHidden();
        $this->widgetSchema['date'] = new formInputDate();

        $this->validatorSchema['location_id'] = new sfValidatorDoctrineChoice(array('model' => 'Location', 'required' => true));
        $this->validatorSchema['date'] = new sfValidatorDate(array('date_format' => "/[0-2][0-9]\.[0-1][0-9]\.[0-9]{4}/", 'with_time' => false, 'required' => true, 'date_format_error' => 'd.m.Y'));

        $this->widgetSchema->setLabels(array(
            'name' => 'Название',
            'description' => 'Описание',
            'date' => 'Дата начала',
        ));
    }

    public function getStylesheets() {
        return array(
            '/css/form.css' => 'screen'
        );
    }

    public function getJavaScripts() {
        return array('/js/formShow.js');
    }

}
