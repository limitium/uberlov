<?php

/**
 * CommentTalk form base class.
 *
 * @method CommentTalk getObject() Returns the current form's model object
 *
 * @package    FISHERY
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormGeneratedInheritanceTemplate.php 24171 2009-11-19 16:37:50Z Kris.Wallsmith $
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
