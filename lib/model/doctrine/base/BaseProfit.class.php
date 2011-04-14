<?php

/**
 * BaseProfit
 * 
 * This class has been auto-generated by the Doctrine ORM Framework
 * 
 * @property integer $id
 * @property string $name
 * @property integer $location_id
 * @property timestamp $date
 * @property string $cordage
 * @property string $description
 * @property integer $fish_id
 * @property float $weight
 * @property Location $Location
 * @property Fish $Fish
 * @property Doctrine_Collection $ProfitDetail
 * @property Doctrine_Collection $CommentProfit
 * @property Doctrine_Collection $VoteProfit
 * @property Doctrine_Collection $PhotoProfit
 * 
 * @method integer             getId()            Returns the current record's "id" value
 * @method string              getName()          Returns the current record's "name" value
 * @method integer             getLocationId()    Returns the current record's "location_id" value
 * @method timestamp           getDate()          Returns the current record's "date" value
 * @method string              getCordage()       Returns the current record's "cordage" value
 * @method string              getDescription()   Returns the current record's "description" value
 * @method integer             getFishId()        Returns the current record's "fish_id" value
 * @method float               getWeight()        Returns the current record's "weight" value
 * @method Location            getLocation()      Returns the current record's "Location" value
 * @method Fish                getFish()          Returns the current record's "Fish" value
 * @method Doctrine_Collection getProfitDetail()  Returns the current record's "ProfitDetail" collection
 * @method Doctrine_Collection getCommentProfit() Returns the current record's "CommentProfit" collection
 * @method Doctrine_Collection getVoteProfit()    Returns the current record's "VoteProfit" collection
 * @method Doctrine_Collection getPhotoProfit()   Returns the current record's "PhotoProfit" collection
 * @method Profit              setId()            Sets the current record's "id" value
 * @method Profit              setName()          Sets the current record's "name" value
 * @method Profit              setLocationId()    Sets the current record's "location_id" value
 * @method Profit              setDate()          Sets the current record's "date" value
 * @method Profit              setCordage()       Sets the current record's "cordage" value
 * @method Profit              setDescription()   Sets the current record's "description" value
 * @method Profit              setFishId()        Sets the current record's "fish_id" value
 * @method Profit              setWeight()        Sets the current record's "weight" value
 * @method Profit              setLocation()      Sets the current record's "Location" value
 * @method Profit              setFish()          Sets the current record's "Fish" value
 * @method Profit              setProfitDetail()  Sets the current record's "ProfitDetail" collection
 * @method Profit              setCommentProfit() Sets the current record's "CommentProfit" collection
 * @method Profit              setVoteProfit()    Sets the current record's "VoteProfit" collection
 * @method Profit              setPhotoProfit()   Sets the current record's "PhotoProfit" collection
 * 
 * @package    FISHERY
 * @subpackage model
 * @author     Sergei Belov <limitium@gmail.com>
 * @version    SVN: $Id: Builder.php 7490 2010-03-29 19:53:27Z jwage $
 */
abstract class BaseProfit extends sfDoctrineRecord
{
    public function setTableDefinition()
    {
        $this->setTableName('profit');
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
        $this->hasColumn('location_id', 'integer', 4, array(
             'type' => 'integer',
             'length' => 4,
             ));
        $this->hasColumn('date', 'timestamp', null, array(
             'type' => 'timestamp',
             'notnull' => true,
             ));
        $this->hasColumn('cordage', 'string', null, array(
             'type' => 'string',
             'notnull' => true,
             ));
        $this->hasColumn('description', 'string', null, array(
             'type' => 'string',
             'notnull' => true,
             ));
        $this->hasColumn('fish_id', 'integer', 4, array(
             'type' => 'integer',
             'length' => 4,
             ));
        $this->hasColumn('weight', 'float', null, array(
             'type' => 'float',
             ));

        $this->option('type', 'INNODB');
        $this->option('charset', 'utf8');
        $this->option('collate', 'utf8_general_ci');
    }

    public function setUp()
    {
        parent::setUp();
        $this->hasOne('Location', array(
             'local' => 'location_id',
             'foreign' => 'id'));

        $this->hasOne('Fish', array(
             'local' => 'fish_id',
             'foreign' => 'id'));

        $this->hasMany('ProfitDetail', array(
             'local' => 'id',
             'foreign' => 'profit_id'));

        $this->hasMany('CommentProfit', array(
             'local' => 'id',
             'foreign' => 'profit_id'));

        $this->hasMany('VoteProfit', array(
             'local' => 'id',
             'foreign' => 'profit_id'));

        $this->hasMany('PhotoProfit', array(
             'local' => 'id',
             'foreign' => 'profit_id'));

        $timestampable0 = new Doctrine_Template_Timestampable();
        $blameable0 = new Doctrine_Template_Blameable(array(
             'listener' => 'BlameableFishery',
             'columns' => 
             array(
              'created' => 
              array(
              'length' => 4,
              'type' => 'int',
              ),
              'updated' => 
              array(
              'length' => 4,
              'type' => 'int',
              ),
             ),
             'relations' => 
             array(
              'created' => 
              array(
              'class' => 'sfGuardUserProfile',
              'disabled' => false,
              'foreign' => 'id',
              ),
              'updated' => 
              array(
              'foreign' => 'id',
              'disabled' => false,
              'class' => 'sfGuardUserProfile',
              ),
             ),
             ));
        $this->actAs($timestampable0);
        $this->actAs($blameable0);
    }
}