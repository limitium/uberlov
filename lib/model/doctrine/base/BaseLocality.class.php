<?php

/**
 * BaseLocality
 * 
 * This class has been auto-generated by the Doctrine ORM Framework
 * 
 * @property integer $id
 * @property string $name
 * @property integer $area_high_id
 * @property AreaHigh $AreaHigh
 * @property Doctrine_Collection $Address
 * 
 * @method integer             getId()           Returns the current record's "id" value
 * @method string              getName()         Returns the current record's "name" value
 * @method integer             getAreaHighId()   Returns the current record's "area_high_id" value
 * @method AreaHigh            getAreaHigh()     Returns the current record's "AreaHigh" value
 * @method Doctrine_Collection getAddress()      Returns the current record's "Address" collection
 * @method Locality            setId()           Sets the current record's "id" value
 * @method Locality            setName()         Sets the current record's "name" value
 * @method Locality            setAreaHighId()   Sets the current record's "area_high_id" value
 * @method Locality            setAreaHigh()     Sets the current record's "AreaHigh" value
 * @method Locality            setAddress()      Sets the current record's "Address" collection
 * 
 * @package    FISHERY
 * @subpackage model
 * @author     Your name here
 * @version    SVN: $Id: Builder.php 6820 2009-11-30 17:27:49Z jwage $
 */
abstract class BaseLocality extends sfDoctrineRecord
{
    public function setTableDefinition()
    {
        $this->setTableName('locality');
        $this->hasColumn('id', 'integer', 4, array(
             'primary' => true,
             'type' => 'integer',
             'autoincrement' => true,
             'length' => '4',
             ));
        $this->hasColumn('name', 'string', 255, array(
             'unique' => true,
             'type' => 'string',
             'notnull' => true,
             'length' => '255',
             ));
        $this->hasColumn('area_high_id', 'integer', 4, array(
             'type' => 'integer',
             'length' => '4',
             ));

        $this->option('type', 'INNODB');
        $this->option('charset', 'utf8');
        $this->option('collate', 'utf8_general_ci');
    }

    public function setUp()
    {
        parent::setUp();
        $this->hasOne('AreaHigh', array(
             'local' => 'area_high_id',
             'foreign' => 'id'));

        $this->hasMany('Address', array(
             'local' => 'id',
             'foreign' => 'locality_id'));
    }
}