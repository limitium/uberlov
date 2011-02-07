<?php

/**
 * VoteFishEvent filter form base class.
 *
 * @package    FISHERY
 * @subpackage filter
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormFilterGeneratedInheritanceTemplate.php 29570 2010-05-21 14:49:47Z Kris.Wallsmith $
 */
abstract class BaseVoteFishEventFormFilter extends VoteFormFilter
{
  protected function setupInheritance()
  {
    parent::setupInheritance();

    $this->widgetSchema->setNameFormat('vote_fish_event_filters[%s]');
  }

  public function getModelName()
  {
    return 'VoteFishEvent';
  }
}
