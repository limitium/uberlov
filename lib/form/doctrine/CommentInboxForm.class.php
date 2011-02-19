<?php

/**
 * CommentInbox form.
 *
 * @package    FISHERY
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormTemplate.php 23810 2009-11-12 11:07:44Z Kris.Wallsmith $
 */
class CommentInboxForm extends BaseCommentInboxForm {

    /**
     * @see CommentForm
     */
    public function configure() {
        parent::configure();

        $this->widgetSchema['inbox_id'] = new sfWidgetFormInputHidden();
        $this->widgetSchema['noVote'] = new sfWidgetFormInputHidden();

        $this->validatorSchema['inbox_id'] = new sfValidatorDoctrineChoice(array('model' => 'Inbox', 'required' => true));
        $this->validatorSchema['noVote'] = new sfValidatorBoolean();
    }

}
