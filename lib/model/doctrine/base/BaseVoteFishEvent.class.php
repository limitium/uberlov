<?php

/**
 * BaseVoteFishEvent
 * 
 * This class has been auto-generated by the Doctrine ORM Framework
 * 
 * @property FishEvent $FishEvent
 * 
 * @method FishEvent     getFishEvent() Returns the current record's "FishEvent" value
 * @method VoteFishEvent setFishEvent() Sets the current record's "FishEvent" value
 * 
 * @package    FISHERY
 * @subpackage model
 * @author     Sergei Belov <limitium@gmail.com>
 * @version    SVN: $Id: Builder.php 7490 2010-03-29 19:53:27Z jwage $
 */
abstract class BaseVoteFishEvent extends Vote
{
    public function setUp()
    {
        parent::setUp();
        $this->hasOne('FishEvent', array(
             'local' => 'fish_event_id',
             'foreign' => 'id',
             'onDelete' => 'CASCADE'));
    }
}