<?php

/**
 * CommentFishEvent form.
 *
 * @package    FISHERY
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormTemplate.php 23810 2009-11-12 11:07:44Z Kris.Wallsmith $
 */
class CommentFishEventForm extends BaseCommentFishEventForm {

    /**
     * @see CommentForm
     */
    public function configure() {
        parent::configure();
        $this->widgetSchema['fish_event_id'] = new sfWidgetFormInputHidden();

        $this->validatorSchema['fish_event_id'] = new sfValidatorDoctrineChoice(array('model' => 'FishEvent', 'required' => true));
    }

}
