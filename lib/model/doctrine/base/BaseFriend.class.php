<?php

/**
 * BaseFriend
 * 
 * This class has been auto-generated by the Doctrine ORM Framework
 * 
 * @property integer $requester_id
 * @property integer $accepter_id
 * @property boolean $accepted
 * @property sfGuardUserProfile $Requester
 * @property sfGuardUserProfile $Accepter
 * 
 * @method integer            getRequesterId()  Returns the current record's "requester_id" value
 * @method integer            getAccepterId()   Returns the current record's "accepter_id" value
 * @method boolean            getAccepted()     Returns the current record's "accepted" value
 * @method sfGuardUserProfile getRequester()    Returns the current record's "Requester" value
 * @method sfGuardUserProfile getAccepter()     Returns the current record's "Accepter" value
 * @method Friend             setRequesterId()  Sets the current record's "requester_id" value
 * @method Friend             setAccepterId()   Sets the current record's "accepter_id" value
 * @method Friend             setAccepted()     Sets the current record's "accepted" value
 * @method Friend             setRequester()    Sets the current record's "Requester" value
 * @method Friend             setAccepter()     Sets the current record's "Accepter" value
 * 
 * @package    FISHERY
 * @subpackage model
 * @author     Your name here
 * @version    SVN: $Id: Builder.php 6820 2009-11-30 17:27:49Z jwage $
 */
abstract class BaseFriend extends sfDoctrineRecord
{
    public function setTableDefinition()
    {
        $this->setTableName('friend');
        $this->hasColumn('requester_id', 'integer', 4, array(
             'primary' => true,
             'type' => 'integer',
             'length' => '4',
             ));
        $this->hasColumn('accepter_id', 'integer', 4, array(
             'primary' => true,
             'type' => 'integer',
             'length' => '4',
             ));
        $this->hasColumn('accepted', 'boolean', null, array(
             'default' => 0,
             'type' => 'boolean',
             ));

        $this->option('charset', 'utf8');
        $this->option('collate', 'utf8_general_ci');
        $this->option('type', 'INNODB');
    }

    public function setUp()
    {
        parent::setUp();
        $this->hasOne('sfGuardUserProfile as Requester', array(
             'local' => 'requester_id',
             'foreign' => 'id'));

        $this->hasOne('sfGuardUserProfile as Accepter', array(
             'local' => 'accepter_id',
             'foreign' => 'id'));
    }
}