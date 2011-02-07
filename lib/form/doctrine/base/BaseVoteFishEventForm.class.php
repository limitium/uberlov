<?php

/**
 * VoteFishEvent form base class.
 *
 * @method VoteFishEvent getObject() Returns the current form's model object
 *
 * @package    FISHERY
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormGeneratedInheritanceTemplate.php 29553 2010-05-20 14:33:00Z Kris.Wallsmith $
 */
abstract class BaseVoteFishEventForm extends VoteForm
{
  protected function setupInheritance()
  {
    parent::setupInheritance();

    $this->widgetSchema->setNameFormat('vote_fish_event[%s]');
  }

  public function getModelName()
  {
    return 'VoteFishEvent';
  }

}
