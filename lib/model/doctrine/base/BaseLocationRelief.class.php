<?php

/**
 * BaseLocationRelief
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
 * @method LocationRelief      setId()       Sets the current record's "id" value
 * @method LocationRelief      setName()     Sets the current record's "name" value
 * @method LocationRelief      setLocation() Sets the current record's "Location" collection
 * 
 * @package    FISHERY
 * @subpackage model
 * @author     Your name here
 * @version    SVN: $Id: Builder.php 7490 2010-03-29 19:53:27Z jwage $
 */
abstract class BaseLocationRelief extends sfDoctrineRecord
{
    public function setTableDefinition()
    {
        $this->setTableName('location_relief');
        $this->hasColumn('id', 'integer', 4, array(
             'primary' => true,
             'type' => 'integer',
             'autoincrement' => true,
             'length' => 4,
             ));
        $this->hasColumn('name', 'string', 50, array(
             'type' => 'string',
             'notnull' => true,
             'length' => 50,
             ));

        $this->option('type', 'INNODB');
        $this->option('charset', 'utf8');
        $this->option('collate', 'utf8_general_ci');
    }

    public function setUp()
    {
        parent::setUp();
        $this->hasMany('Location', array(
             'local' => 'id',
             'foreign' => 'location_relief_id'));
    }
}