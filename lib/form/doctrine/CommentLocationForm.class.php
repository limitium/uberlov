<?php

/**
 * CommentLocation form.
 *
 * @package    FISHERY
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormTemplate.php 23810 2009-11-12 11:07:44Z Kris.Wallsmith $
 */
class CommentLocationForm extends BaseCommentLocationForm {
/**
 * @see CommentForm
 */
    public function configure() {
        parent::configure();
        unset($this['profit_id']);

        $this->widgetSchema['location_id']     = new sfWidgetFormInputHidden();

        $this->validatorSchema['location_id']  = new sfValidatorDoctrineChoice(array('model'=>'Location','required' => true));
    }
}
