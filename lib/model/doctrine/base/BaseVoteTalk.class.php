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
 * @author     Sergei Belov <limitium@gmail.com>
 * @version    SVN: $Id: Builder.php 7490 2010-03-29 19:53:27Z jwage $
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