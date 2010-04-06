<?php

/**
 * VoteProfit form base class.
 *
 * @method VoteProfit getObject() Returns the current form's model object
 *
 * @package    FISHERY
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormGeneratedInheritanceTemplate.php 24171 2009-11-19 16:37:50Z Kris.Wallsmith $
 */
abstract class BaseVoteProfitForm extends VoteForm
{
  protected function setupInheritance()
  {
    parent::setupInheritance();

    $this->widgetSchema->setNameFormat('vote_profit[%s]');
  }

  public function getModelName()
  {
    return 'VoteProfit';
  }

}
