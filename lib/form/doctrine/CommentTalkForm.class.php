<?php

/**
 * CommentTalk form.
 *
 * @package    FISHERY
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormTemplate.php 23810 2009-11-12 11:07:44Z Kris.Wallsmith $
 */
class CommentTalkForm extends BaseCommentTalkForm {

    /**
     * @see CommentForm
     */
    public function configure() {
        parent::configure();

        $this->widgetSchema['talk_id'] = new sfWidgetFormInputHidden();

        $this->validatorSchema['talk_id'] = new sfValidatorDoctrineChoice(array('model' => 'Talk', 'required' => true));
    }

}
