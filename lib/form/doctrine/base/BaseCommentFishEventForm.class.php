<?php

/**
 * CommentFishEvent form base class.
 *
 * @method CommentFishEvent getObject() Returns the current form's model object
 *
 * @package    FISHERY
 * @subpackage form
 * @author     Sergei Belov <limitium@gmail.com>
 * @version    SVN: $Id: sfDoctrineFormGeneratedInheritanceTemplate.php 29553 2010-05-20 14:33:00Z Kris.Wallsmith $
 */
abstract class BaseCommentFishEventForm extends CommentForm
{
  protected function setupInheritance()
  {
    parent::setupInheritance();

    $this->widgetSchema->setNameFormat('comment_fish_event[%s]');
  }

  public function getModelName()
  {
    return 'CommentFishEvent';
  }

}
