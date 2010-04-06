<?php

/**
 * BaseProfile
 * 
 * This class has been auto-generated by the Doctrine ORM Framework
 * 
 * @property integer $id
 * @property string $nick_name
 * @property string $first_name
 * @property string $last_name
 * @property Doctrine_Collection $Wishes
 * @property Doctrine_Collection $MyFirends
 * @property Doctrine_Collection $MyFirends2
 * @property Doctrine_Collection $WishList
 * @property Doctrine_Collection $Friend
 * @property Doctrine_Collection $Votes
 * @property Doctrine_Collection $VoteProfile
 * 
 * @method integer             getId()          Returns the current record's "id" value
 * @method string              getNickName()    Returns the current record's "nick_name" value
 * @method string              getFirstName()   Returns the current record's "first_name" value
 * @method string              getLastName()    Returns the current record's "last_name" value
 * @method Doctrine_Collection getWishes()      Returns the current record's "Wishes" collection
 * @method Doctrine_Collection getMyFirends()   Returns the current record's "MyFirends" collection
 * @method Doctrine_Collection getMyFirends2()  Returns the current record's "MyFirends2" collection
 * @method Doctrine_Collection getWishList()    Returns the current record's "WishList" collection
 * @method Doctrine_Collection getFriend()      Returns the current record's "Friend" collection
 * @method Doctrine_Collection getVotes()       Returns the current record's "Votes" collection
 * @method Doctrine_Collection getVoteProfile() Returns the current record's "VoteProfile" collection
 * @method Profile             setId()          Sets the current record's "id" value
 * @method Profile             setNickName()    Sets the current record's "nick_name" value
 * @method Profile             setFirstName()   Sets the current record's "first_name" value
 * @method Profile             setLastName()    Sets the current record's "last_name" value
 * @method Profile             setWishes()      Sets the current record's "Wishes" collection
 * @method Profile             setMyFirends()   Sets the current record's "MyFirends" collection
 * @method Profile             setMyFirends2()  Sets the current record's "MyFirends2" collection
 * @method Profile             setWishList()    Sets the current record's "WishList" collection
 * @method Profile             setFriend()      Sets the current record's "Friend" collection
 * @method Profile             setVotes()       Sets the current record's "Votes" collection
 * @method Profile             setVoteProfile() Sets the current record's "VoteProfile" collection
 * 
 * @package    FISHERY
 * @subpackage model
 * @author     Your name here
 * @version    SVN: $Id: Builder.php 6820 2009-11-30 17:27:49Z jwage $
 */
abstract class BaseProfile extends sfDoctrineRecord
{
    public function setTableDefinition()
    {
        $this->setTableName('profile');
        $this->hasColumn('id', 'integer', 4, array(
             'primary' => true,
             'type' => 'integer',
             'autoincrement' => true,
             'length' => '4',
             ));
        $this->hasColumn('nick_name', 'string', 50, array(
             'default' => '',
             'type' => 'string',
             'notnull' => true,
             'length' => '50',
             ));
        $this->hasColumn('first_name', 'string', 50, array(
             'default' => '',
             'type' => 'string',
             'length' => '50',
             ));
        $this->hasColumn('last_name', 'string', 50, array(
             'default' => '',
             'type' => 'string',
             'length' => '50',
             ));

        $this->option('type', 'INNODB');
        $this->option('charset', 'utf8');
        $this->option('collate', 'utf8_general_ci');
    }

    public function setUp()
    {
        parent::setUp();
        $this->hasMany('Location as Wishes', array(
             'refClass' => 'WishList',
             'local' => 'profile_id',
             'foreign' => 'location_id'));

        $this->hasMany('Profile as MyFirends', array(
             'refClass' => 'Friend',
             'local' => 'related_profile_id',
             'foreign' => 'source_profile_id'));

        $this->hasMany('Profile as MyFirends2', array(
             'refClass' => 'Friend',
             'local' => 'source_profile_id',
             'foreign' => 'related_profile_id'));

        $this->hasMany('WishList', array(
             'local' => 'id',
             'foreign' => 'profile_id'));

        $this->hasMany('Friend', array(
             'local' => 'id',
             'foreign' => 'related_profile_id'));

        $this->hasMany('Vote as Votes', array(
             'local' => 'id',
             'foreign' => 'voter'));

        $this->hasMany('VoteProfile', array(
             'local' => 'id',
             'foreign' => 'profile_id'));

        $timestampable0 = new Doctrine_Template_Timestampable();
        $this->actAs($timestampable0);
    }
}