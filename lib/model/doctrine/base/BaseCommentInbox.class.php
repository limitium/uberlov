<?php

/**
 * BaseCommentInbox
 * 
 * This class has been auto-generated by the Doctrine ORM Framework
 * 
 * @property Inbox $Inbox
 * 
 * @method Inbox        getInbox() Returns the current record's "Inbox" value
 * @method CommentInbox setInbox() Sets the current record's "Inbox" value
 * 
 * @package    FISHERY
 * @subpackage model
 * @author     Sergei Belov <limitium@gmail.com>
 * @version    SVN: $Id: Builder.php 7490 2010-03-29 19:53:27Z jwage $
 */
abstract class BaseCommentInbox extends Comment
{
    public function setUp()
    {
        parent::setUp();
        $this->hasOne('Inbox', array(
             'local' => 'inbox_id',
             'foreign' => 'id'));
    }
}