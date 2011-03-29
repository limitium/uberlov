<?php

/**
 * VoteProfile filter form base class.
 *
 * @package    FISHERY
 * @subpackage filter
 * @author     Sergei Belov <limitium@gmail.com>
 * @version    SVN: $Id: sfDoctrineFormFilterGeneratedInheritanceTemplate.php 29570 2010-05-21 14:49:47Z Kris.Wallsmith $
 */
abstract class BaseVoteProfileFormFilter extends VoteFormFilter
{
  protected function setupInheritance()
  {
    parent::setupInheritance();

    $this->widgetSchema->setNameFormat('vote_profile_filters[%s]');
  }

  public function getModelName()
  {
    return 'VoteProfile';
  }
}
