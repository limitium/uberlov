<?php

/**
 * BaseLocationFlow
 * 
 * This class has been auto-generated by the Doctrine ORM Framework
 * 
 * @property integer $id
 * @property string $name
 * @property Doctrine_Collection $Location
 * 
 * @method integer             getId()       Returns the current record's "id" value
 * @method string              getName()     Returns the current record's "name" value
 * @method Doctrine_Collection getLocation() Returns the current record's "Location" collection
 * @method LocationFlow        setId()       Sets the current record's "id" value
 * @method LocationFlow        setName()     Sets the current record's "name" value
 * @method LocationFlow        setLocation() Sets the current record's "Location" collection
 * 
 * @package    FISHERY
 * @subpackage model
 * @author     Your name here
 * @version    SVN: $Id: Builder.php 6820 2009-11-30 17:27:49Z jwage $
 */
abstract class BaseLocationFlow extends sfDoctrineRecord
{
    public function setTableDefinition()
    {
        $this->setTableName('location_flow');
        $this->hasColumn('id', 'integer', 4, array(
             'primary' => true,
             'type' => 'integer',
             'autoincrement' => true,
             'length' => '4',
             ));
        $this->hasColumn('name', 'string', 50, array(
             'type' => 'string',
             'notnull' => true,
             'length' => '50',
             ));

        $this->option('charset', 'utf8');
        $this->option('collate', 'utf8_general_ci');
        $this->option('type', 'INNODB');
    }

    public function setUp()
    {
        parent::setUp();
        $this->hasMany('Location', array(
             'local' => 'id',
             'foreign' => 'location_flow_id'));
    }
}