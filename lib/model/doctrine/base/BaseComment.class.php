<?php

/**
 * BaseComment
 * 
 * This class has been auto-generated by the Doctrine ORM Framework
 * 
 * @property integer $id
 * @property integer $parent
 * @property string $message
 * @property string $toward
 * @property integer $location_id
 * @property integer $profit_id
 * @property integer $inbox_id
 * @property integer $talk_id
 * @property integer $FishEvent_id
 * @property Doctrine_Collection $Profile
 * @property Doctrine_Collection $VoteComment
 * @property Doctrine_Collection $ReadComment
 * 
 * @method integer             getId()           Returns the current record's "id" value
 * @method integer             getParent()       Returns the current record's "parent" value
 * @method string              getMessage()      Returns the current record's "message" value
 * @method string              getToward()       Returns the current record's "toward" value
 * @method integer             getLocationId()   Returns the current record's "location_id" value
 * @method integer             getProfitId()     Returns the current record's "profit_id" value
 * @method integer             getInboxId()      Returns the current record's "inbox_id" value
 * @method integer             getTalkId()       Returns the current record's "talk_id" value
 * @method integer             getFishEventId()  Returns the current record's "FishEvent_id" value
 * @method Doctrine_Collection getProfile()      Returns the current record's "Profile" collection
 * @method Doctrine_Collection getVoteComment()  Returns the current record's "VoteComment" collection
 * @method Doctrine_Collection getReadComment()  Returns the current record's "ReadComment" collection
 * @method Comment             setId()           Sets the current record's "id" value
 * @method Comment             setParent()       Sets the current record's "parent" value
 * @method Comment             setMessage()      Sets the current record's "message" value
 * @method Comment             setToward()       Sets the current record's "toward" value
 * @method Comment             setLocationId()   Sets the current record's "location_id" value
 * @method Comment             setProfitId()     Sets the current record's "profit_id" value
 * @method Comment             setInboxId()      Sets the current record's "inbox_id" value
 * @method Comment             setTalkId()       Sets the current record's "talk_id" value
 * @method Comment             setFishEventId()  Sets the current record's "FishEvent_id" value
 * @method Comment             setProfile()      Sets the current record's "Profile" collection
 * @method Comment             setVoteComment()  Sets the current record's "VoteComment" collection
 * @method Comment             setReadComment()  Sets the current record's "ReadComment" collection
 * 
 * @package    FISHERY
 * @subpackage model
 * @author     Your name here
 * @version    SVN: $Id: Builder.php 6820 2009-11-30 17:27:49Z jwage $
 */
abstract class BaseComment extends sfDoctrineRecord
{
    public function setTableDefinition()
    {
        $this->setTableName('comment');
        $this->hasColumn('id', 'integer', 4, array(
             'primary' => true,
             'type' => 'integer',
             'autoincrement' => true,
             'length' => '4',
             ));
        $this->hasColumn('parent', 'integer', 4, array(
             'type' => 'integer',
             'length' => '4',
             ));
        $this->hasColumn('message', 'string', 1000, array(
             'type' => 'string',
             'notnull' => true,
             'length' => '1000',
             ));
        $this->hasColumn('toward', 'string', 255, array(
             'type' => 'string',
             'length' => 255,
             ));
        $this->hasColumn('location_id', 'integer', 4, array(
             'type' => 'integer',
             'length' => '4',
             ));
        $this->hasColumn('profit_id', 'integer', 4, array(
             'type' => 'integer',
             'length' => '4',
             ));
        $this->hasColumn('inbox_id', 'integer', 4, array(
             'type' => 'integer',
             'length' => '4',
             ));
        $this->hasColumn('talk_id', 'integer', 4, array(
             'type' => 'integer',
             'length' => '4',
             ));
        $this->hasColumn('FishEvent_id', 'integer', 4, array(
             'type' => 'integer',
             'length' => '4',
             ));

        $this->option('type', 'INNODB');
        $this->option('charset', 'utf8');
        $this->option('collate', 'utf8_general_ci');

        $this->setSubClasses(array(
             'CommentLocation' => 
             array(
              'toward' => 'location',
             ),
             'CommentProfit' => 
             array(
              'toward' => 'profit',
             ),
             'CommentInbox' => 
             array(
              'toward' => 'Inbox',
             ),
             'CommentTalk' => 
             array(
              'toward' => 'talk',
             ),
             'CommentFishEvent' => 
             array(
              'toward' => 'fish_event',
             ),
             ));
    }

    public function setUp()
    {
        parent::setUp();
        $this->hasMany('Profile', array(
             'refClass' => 'ReadComment',
             'local' => 'comment_id',
             'foreign' => 'profile_id'));

        $this->hasMany('VoteComment', array(
             'local' => 'id',
             'foreign' => 'comment_id'));

        $this->hasMany('ReadComment', array(
             'local' => 'id',
             'foreign' => 'comment_id'));

        $blameable0 = new Doctrine_Template_Blameable(array(
             'listener' => 'BlameableFishery',
             'relations' => 
             array(
              'created' => 
              array(
              'class' => 'Profile',
              'foreign' => 'id',
              'disabled' => false,
              ),
              'updated' => 
              array(
              'class' => 'Profile',
              'foreign' => 'id',
              'disabled' => false,
              ),
             ),
             'columns' => 
             array(
              'created' => 
              array(
              'type' => 'int',
              'length' => 4,
              ),
              'updated' => 
              array(
              'length' => 4,
              'type' => 'int',
              ),
             ),
             ));
        $timestampable0 = new Doctrine_Template_Timestampable();
        $nestedset0 = new Doctrine_Template_NestedSet(array(
             'hasManyRoots' => true,
             ));
        $this->actAs($blameable0);
        $this->actAs($timestampable0);
        $this->actAs($nestedset0);
    }
}