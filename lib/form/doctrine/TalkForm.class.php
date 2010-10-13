<?php

/**
 * Talk form.
 *
 * @package    FISHERY
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormTemplate.php 23810 2009-11-12 11:07:44Z Kris.Wallsmith $
 */
class TalkForm extends BaseTalkForm {

    public function configure() {
        unset($this['created_at'],
                $this['updated_at'],
                $this['created_by'],
                $this['updated_by']
        );

        $this->widgetSchema['talk_section_id'] = new sfWidgetFormInputHidden();
        $this->widgetSchema['tags'] = new sfWidgetFormInputHidden();

        $this->validatorSchema['talk_section_id'] = new sfValidatorDoctrineChoice(array('model' => 'TalkSection', 'required' => true));
        $this->validatorSchema['tags'] = new sfValidatorString(array('required' => true));

        $this->widgetSchema->setLabels(array(
            'name' => 'Тема обсуждения',
            'message' => 'Сообщение',
            'tags' => 'Тэги<br /><sub>Можно добавить несколько тэгов через запятую</sub>'
        ));
    }

}
