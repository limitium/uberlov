<?php

/**
 * CommentProfit form.
 *
 * @package    FISHERY
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormTemplate.php 23810 2009-11-12 11:07:44Z Kris.Wallsmith $
 */
class CommentProfitForm extends BaseCommentProfitForm {

    /**
     * @see CommentForm
     */
    public function configure() {
        parent::configure();

        $this->widgetSchema['profit_id'] = new sfWidgetFormInputHidden();

        $this->validatorSchema['profit_id'] = new sfValidatorDoctrineChoice(array('model' => 'Profit', 'required' => true));
    }

}
