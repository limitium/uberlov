<?php

/**
 * BaseVoteTalk
 * 
 * This class has been auto-generated by the Doctrine ORM Framework
 * 
 * @property Talk $Talk
 * 
 * @method Talk     getTalk() Returns the current record's "Talk" value
 * @method VoteTalk setTalk() Sets the current record's "Talk" value
 * 
 * @package    FISHERY
 * @subpackage model
 * @author     Your name here
 * @version    SVN: $Id: Builder.php 6820 2009-11-30 17:27:49Z jwage $
 */
abstract class BaseVoteTalk extends Vote
{
    public function setUp()
    {
        parent::setUp();
        $this->hasOne('Talk', array(
             'local' => 'talk_id',
             'foreign' => 'id'));
    }
}