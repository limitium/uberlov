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
            $this['toward'],
            $this['root_id'],
            $this['lft'],
            $this['rgt'],
            $this['level'],
            $this['created_at'],
            $this['updated_at'],
            $this['created_by'],
            $this['updated_by']);

        $this->widgetSchema['parent']     = new sfWidgetFormInputHidden();

        $this->validatorSchema['parent']         = new sfValidatorNumber(array('required' => false));
    }
}
