<?php

/**
 * BaseStyle
 * 
 * This class has been auto-generated by the Doctrine ORM Framework
 * 
 * @property integer $id
 * @property string $name
 * @property Doctrine_Collection $Profiles
 * @property Doctrine_Collection $ProfitDetail
 * @property Doctrine_Collection $ProfileStyle
 * 
 * @method integer             getId()           Returns the current record's "id" value
 * @method string              getName()         Returns the current record's "name" value
 * @method Doctrine_Collection getProfiles()     Returns the current record's "Profiles" collection
 * @method Doctrine_Collection getProfitDetail() Returns the current record's "ProfitDetail" collection
 * @method Doctrine_Collection getProfileStyle() Returns the current record's "ProfileStyle" collection
 * @method Style               setId()           Sets the current record's "id" value
 * @method Style               setName()         Sets the current record's "name" value
 * @method Style               setProfiles()     Sets the current record's "Profiles" collection
 * @method Style               setProfitDetail() Sets the current record's "ProfitDetail" collection
 * @method Style               setProfileStyle() Sets the current record's "ProfileStyle" collection
 * 
 * @package    FISHERY
 * @subpackage model
 * @author     Your name here
 * @version    SVN: $Id: Builder.php 6820 2009-11-30 17:27:49Z jwage $
 */
abstract class BaseStyle extends sfDoctrineRecord
{
    public function setTableDefinition()
    {
        $this->setTableName('style');
        $this->hasColumn('id', 'integer', 4, array(
             'primary' => true,
             'type' => 'integer',
             'autoincrement' => true,
             'length' => '4',
             ));
        $this->hasColumn('name', 'string', 100, array(
             'unique' => true,
             'type' => 'string',
             'notnull' => true,
             'length' => '100',
             ));

        $this->option('type', 'INNODB');
        $this->option('charset', 'utf8');
        $this->option('collate', 'utf8_general_ci');
    }

    public function setUp()
    {
        parent::setUp();
        $this->hasMany('Profile as Profiles', array(
             'refClass' => 'ProfileStyle',
             'local' => 'style_id',
             'foreign' => 'profile_id'));

        $this->hasMany('ProfitDetail', array(
             'local' => 'id',
             'foreign' => 'style_id'));

        $this->hasMany('ProfileStyle', array(
             'local' => 'id',
             'foreign' => 'style_id'));
    }
}