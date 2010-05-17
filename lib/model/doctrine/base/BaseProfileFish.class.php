<?php

/**
 * BaseProfileFish
 * 
 * This class has been auto-generated by the Doctrine ORM Framework
 * 
 * @property integer $fish_id
 * @property integer $profile_id
 * @property Fish $Fish
 * @property Profile $Profile
 * 
 * @method integer     getFishId()     Returns the current record's "fish_id" value
 * @method integer     getProfileId()  Returns the current record's "profile_id" value
 * @method Fish        getFish()       Returns the current record's "Fish" value
 * @method Profile     getProfile()    Returns the current record's "Profile" value
 * @method ProfileFish setFishId()     Sets the current record's "fish_id" value
 * @method ProfileFish setProfileId()  Sets the current record's "profile_id" value
 * @method ProfileFish setFish()       Sets the current record's "Fish" value
 * @method ProfileFish setProfile()    Sets the current record's "Profile" value
 * 
 * @package    FISHERY
 * @subpackage model
 * @author     Your name here
 * @version    SVN: $Id: Builder.php 6820 2009-11-30 17:27:49Z jwage $
 */
abstract class BaseProfileFish extends sfDoctrineRecord
{
    public function setTableDefinition()
    {
        $this->setTableName('profile_fish');
        $this->hasColumn('fish_id', 'integer', 4, array(
             'type' => 'integer',
             'notnull' => true,
             'length' => '4',
             ));
        $this->hasColumn('profile_id', 'integer', 4, array(
             'type' => 'integer',
             'notnull' => true,
             'length' => '4',
             ));

        $this->option('type', 'INNODB');
        $this->option('charset', 'utf8');
        $this->option('collate', 'utf8_general_ci');
    }

    public function setUp()
    {
        parent::setUp();
        $this->hasOne('Fish', array(
             'local' => 'fish_id',
             'foreign' => 'id'));

        $this->hasOne('Profile', array(
             'local' => 'profile_id',
             'foreign' => 'id'));
    }
}