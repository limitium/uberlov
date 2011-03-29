<?php

/**
 * VoteProfile form base class.
 *
 * @method VoteProfile getObject() Returns the current form's model object
 *
 * @package    FISHERY
 * @subpackage form
 * @author     Sergei Belov <limitium@gmail.com>
 * @version    SVN: $Id: sfDoctrineFormGeneratedInheritanceTemplate.php 29553 2010-05-20 14:33:00Z Kris.Wallsmith $
 */
abstract class BaseVoteProfileForm extends VoteForm
{
  protected function setupInheritance()
  {
    parent::setupInheritance();

    $this->widgetSchema->setNameFormat('vote_profile[%s]');
  }

  public function getModelName()
  {
    return 'VoteProfile';
  }

}
