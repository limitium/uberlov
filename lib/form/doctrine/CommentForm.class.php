<?php

/**
 * Comment form.
 *
 * @package    FISHERY
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormTemplate.php 23810 2009-11-12 11:07:44Z Kris.Wallsmith $
 */
class CommentForm extends BaseCommentForm {

    public function configure() {
        unset($this['id'],
                $this['location_id'],
                $this['profit_id'],
                $this['fish_event_id'],
                $this['inbox_id'],
                $this['profit_id'],
                $this['root_id'],
                $this['lft'],
                $this['rgt'],
                $this['level'],
                $this['toward'],
                $this['created_at'],
                $this['updated_at'],
                $this['created_by'],
                $this['updated_by']);

        $this->widgetSchema['parent'] = new sfWidgetFormInputHidden();

        $this->validatorSchema['parent'] = new sfValidatorDoctrineChoice(array('model' => 'Comment', 'required' => false));
        $this->validatorSchema['message'] = new sfValidatorString(array('max_length' => 4000, 'required' => true));
        $this->widgetSchema->setLabels(array(
            'message' => 'Комментарий',
        ));
    }

    public function getCommentedName() {
        return substr($this->getModelName(), 7);
    }

    public function setCommented(Doctrine_Record $toComment) {
        $this->setDefaults(array($this->getToward() . '_id' => $toComment->getId()));
    }

    public function getToward() {
        return Doctrine::getTable($this->getCommentedName())->getTableName();
    }

}
