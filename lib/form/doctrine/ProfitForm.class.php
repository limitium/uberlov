<?php

/**
 * Profit form.
 *
 * @package    HT
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormTemplate.php 23810 2009-11-12 11:07:44Z Kris.Wallsmith $
 */
class ProfitForm extends BaseProfitForm {

    public function configure() {
        unset($this['created_at'], $this['updated_at'], $this['created_by'], $this['updated_by']
        );

        $this->widgetSchema['location_id'] = new sfWidgetFormInputHidden();
        $this->widgetSchema['id'] = new sfWidgetFormInputHidden();
        $this->widgetSchema['name'] = new sfWidgetFormInputText();
        $this->widgetSchema['date'] = new formInputDate();
        $this->widgetSchema['cordage'] = new sfWidgetFormTextarea();
        $this->widgetSchema['description'] = new sfWidgetFormTextarea();
        $this->widgetSchema['details'] = new sfWidgetFormInputHidden();
        $this->widgetSchema['weight'] = new sfWidgetFormInputText();
        $this->widgetSchema['fish_id'] = new sfWidgetFormDoctrineChoice(array('model' => $this->getRelatedModelName('Fish'), 'add_empty' => true));

        $this->widgetSchema['qty'] = new sfWidgetFormInputText();
        $this->widgetSchema['styles'] = new sfWidgetFormDoctrineChoice(array('model' => 'Style', 'add_empty' => true));
        $this->widgetSchema['fishes'] = new sfWidgetFormDoctrineChoice(array('model' => 'Fish', 'add_empty' => true, 'order_by' => array('name', 'asc')));
        $this->widgetSchema['photos'] = new sfWidgetFormInputHidden();
        
        $this->validatorSchema['location_id'] = new sfValidatorDoctrineChoice(array('model' => 'Location', 'required' => true));
        $this->validatorSchema['name'] = new sfValidatorString(array('required' => true));
//        $this->validatorSchema['date'] = new sfValidatorDate(array('date_format' => "/(?P<day>[0-3][0-9])\.(?P<month>[0-1][0-9])\.(?P<year>[0-9]{4})/", 'with_time' => false, 'required' => true, 'date_format_error' => 'd.m.Y'));
        $this->validatorSchema['date'] = new sfValidatorDate(array('date_format' => "~(?P<day>\d{2})\.(?P<month>\d{2})\.(?P<year>\d{4})~", 'with_time' => false, 'required' => true, 'date_format_error' => 'd.m.Y'));
        $this->validatorSchema['cordage'] = new sfValidatorString(array('required' => false));
        $this->validatorSchema['description'] = new sfValidatorString(array('required' => false));
        $this->validatorSchema['details'] = new sfValidatorString(array('required' => false));
        $this->validatorSchema['weight'] = new sfValidatorNumber(array('required' => false));
        $this->validatorSchema['fish_id'] = new sfValidatorDoctrineChoice(array('required' => false, 'model' => $this->getRelatedModelName('Fish')));

        $this->validatorSchema['qty'] = new sfValidatorString(array('required' => false));
        $this->validatorSchema['styles'] = new sfValidatorString(array('required' => false));
        $this->validatorSchema['fishes'] = new sfValidatorString(array('required' => false));
        $this->validatorSchema['photos'] = new sfValidatorString(array('required' => false));
        
        $this->widgetSchema->setLabels(array(
            'date' => 'Дата:',
            'name' => 'Название отчета:',
            'cordage' => 'Снасти:',
            'best_weight' => 'Вес:<br /><sub>самой крупной рыбы</sub>',
            'best_fish_id' => 'Вид:<br /><sub>самой крупной рыбы</sub>',
            'description' => 'Описание:<br /><sub>Не забудте о погоде,<br />состоянии воды</sub>'
        ));
    }

    public function packDetails() {
        $detailsData = array();
        foreach ($this->object->getProfitDetail() as $detail) {
            $detailsData[] = $detail->exportTo('json');
        }
        $packed = '[' . implode(',', $detailsData) . ']';
        $this->setDefault('details', $packed);
        return $this;
    }
    
    public function packPhotos() {
        $photosData = array();
        foreach ($this->object->getPhotos() as $photo) {
            $photosData[] = $photo->id;
        }
        $this->setDefault('photos', json_encode($photosData));
        return $this;
    }
}
