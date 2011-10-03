<?php

/**
 * BaseIsBot
 * 
 * This class has been auto-generated by the Doctrine ORM Framework
 * 
 * @property integer $profile_id
 * @property sfGuardUserProfile $Profile
 * @property Doctrine_Collection $NickMap
 * 
 * @method integer             getProfileId()  Returns the current record's "profile_id" value
 * @method sfGuardUserProfile  getProfile()    Returns the current record's "Profile" value
 * @method Doctrine_Collection getNickMap()    Returns the current record's "NickMap" collection
 * @method IsBot               setProfileId()  Sets the current record's "profile_id" value
 * @method IsBot               setProfile()    Sets the current record's "Profile" value
 * @method IsBot               setNickMap()    Sets the current record's "NickMap" collection
 * 
 * @package    FISHERY
 * @subpackage model
 * @author     Sergei Belov <limitium@gmail.com>
 * @version    SVN: $Id: Builder.php 7490 2010-03-29 19:53:27Z jwage $
 */
abstract class BaseIsBot extends sfDoctrineRecord
{
    public function setTableDefinition()
    {
        $this->setTableName('is_bot');
        $this->hasColumn('profile_id', 'integer', 4, array(
             'primary' => true,
             'type' => 'integer',
             'length' => 4,
             ));
    }

    public function setUp()
    {
        parent::setUp();
        $this->hasOne('sfGuardUserProfile as Profile', array(
             'local' => 'profile_id',
             'foreign' => 'id',
             'onDelete' => 'cascade'));

        $this->hasMany('NickMap', array(
             'local' => 'profile_id',
             'foreign' => 'profile_id'));
    }
}