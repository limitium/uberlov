<?php

/**
 * CommentTalk form base class.
 *
 * @method CommentTalk getObject() Returns the current form's model object
 *
 * @package    FISHERY
 * @subpackage form
 * @author     Sergei Belov <limitium@gmail.com>
 * @version    SVN: $Id: sfDoctrineFormGeneratedInheritanceTemplate.php 29553 2010-05-20 14:33:00Z Kris.Wallsmith $
 */
abstract class BaseCommentTalkForm extends CommentForm
{
  protected function setupInheritance()
  {
    parent::setupInheritance();

    $this->widgetSchema->setNameFormat('comment_talk[%s]');
  }

  public function getModelName()
  {
    return 'CommentTalk';
  }

}
