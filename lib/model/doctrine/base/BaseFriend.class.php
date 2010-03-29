<?php

/**
 * BaseFriend
 * 
 * This class has been auto-generated by the Doctrine ORM Framework
 * 
 * @property integer $ID
 * @property integer $source_Profile_id
 * @property integer $related_Profile_id
 * @property Profile $Profile
 * 
 * @method integer getID()                 Returns the current record's "ID" value
 * @method integer getSourceProfileId()    Returns the current record's "source_Profile_id" value
 * @method integer getRelatedProfileId()   Returns the current record's "related_Profile_id" value
 * @method Profile getProfile()            Returns the current record's "Profile" value
 * @method Friend  setID()                 Sets the current record's "ID" value
 * @method Friend  setSourceProfileId()    Sets the current record's "source_Profile_id" value
 * @method Friend  setRelatedProfileId()   Sets the current record's "related_Profile_id" value
 * @method Friend  setProfile()            Sets the current record's "Profile" value
 * 
 * @package    HT
 * @subpackage model
 * @author     Your name here
 * @version    SVN: $Id: Builder.php 6820 2009-11-30 17:27:49Z jwage $
 */
abstract class BaseFriend extends sfDoctrineRecord
{
    public function setTableDefinition()
    {
        $this->setTableName('friend');
        $this->hasColumn('ID', 'integer', null, array(
             'primary' => true,
             'unique' => true,
             'type' => 'integer',
             ));
        $this->hasColumn('source_Profile_id', 'integer', null, array(
             'type' => 'integer',
             'notnull' => true,
             ));
        $this->hasColumn('related_Profile_id', 'integer', null, array(
             'type' => 'integer',
             'notnull' => true,
             ));

        $this->option('type', 'INNODB');
    }

    public function setUp()
    {
        parent::setUp();
        $this->hasOne('Profile', array(
             'local' => 'related_Profile_id',
             'foreign' => 'id'));
    }
}