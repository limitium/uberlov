<?php

/**
 * BaseInboxed
 * 
 * This class has been auto-generated by the Doctrine ORM Framework
 * 
 * @property integer $inbox_id
 * @property integer $profile_id
 * @property Inbox $Inbox
 * @property sfGuardUserProfile $sfGuardUserProfile
 * 
 * @method integer            getInboxId()            Returns the current record's "inbox_id" value
 * @method integer            getProfileId()          Returns the current record's "profile_id" value
 * @method Inbox              getInbox()              Returns the current record's "Inbox" value
 * @method sfGuardUserProfile getSfGuardUserProfile() Returns the current record's "sfGuardUserProfile" value
 * @method Inboxed            setInboxId()            Sets the current record's "inbox_id" value
 * @method Inboxed            setProfileId()          Sets the current record's "profile_id" value
 * @method Inboxed            setInbox()              Sets the current record's "Inbox" value
 * @method Inboxed            setSfGuardUserProfile() Sets the current record's "sfGuardUserProfile" value
 * 
 * @package    FISHERY
 * @subpackage model
 * @author     Sergei Belov <limitium@gmail.com>
 * @version    SVN: $Id: Builder.php 7490 2010-03-29 19:53:27Z jwage $
 */
abstract class BaseInboxed extends sfDoctrineRecord
{
    public function setTableDefinition()
    {
        $this->setTableName('inboxed');
        $this->hasColumn('inbox_id', 'integer', 4, array(
             'primary' => true,
             'type' => 'integer',
             'length' => 4,
             ));
        $this->hasColumn('profile_id', 'integer', 4, array(
             'primary' => true,
             'type' => 'integer',
             'length' => 4,
             ));

        $this->option('type', 'INNODB');
        $this->option('charset', 'utf8');
        $this->option('collate', 'utf8_general_ci');
    }

    public function setUp()
    {
        parent::setUp();
        $this->hasOne('Inbox', array(
             'local' => 'inbox_id',
             'foreign' => 'id',
             'onDelete' => 'CASCADE'));

        $this->hasOne('sfGuardUserProfile', array(
             'local' => 'profile_id',
             'foreign' => 'id'));
    }
}