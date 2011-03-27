<?php

/**
 * BaseCommentFishEvent
 * 
 * This class has been auto-generated by the Doctrine ORM Framework
 * 
 * @property FishEvent $FishEvent
 * 
 * @method FishEvent        getFishEvent() Returns the current record's "FishEvent" value
 * @method CommentFishEvent setFishEvent() Sets the current record's "FishEvent" value
 * 
 * @package    FISHERY
 * @subpackage model
 * @author     Your name here
 * @version    SVN: $Id: Builder.php 6820 2009-11-30 17:27:49Z jwage $
 */
abstract class BaseCommentFishEvent extends Comment
{
    public function setUp()
    {
        parent::setUp();
        $this->hasOne('FishEvent', array(
             'local' => 'fish_event_id',
             'foreign' => 'id'));
    }
}