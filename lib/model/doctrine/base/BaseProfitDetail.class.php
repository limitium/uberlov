<?php

/**
 * BaseProfitDetail
 * 
 * This class has been auto-generated by the Doctrine ORM Framework
 * 
 * @property timestamp $time
 * @property integer $profit_id
 * @property integer $style_id
 * @property integer $fish_id
 * @property float $qty
 * @property Profit $Profit
 * @property Style $Style
 * @property Fish $Fish
 * 
 * @method timestamp    getTime()      Returns the current record's "time" value
 * @method integer      getProfitId()  Returns the current record's "profit_id" value
 * @method integer      getStyleId()   Returns the current record's "style_id" value
 * @method integer      getFishId()    Returns the current record's "fish_id" value
 * @method float        getQty()       Returns the current record's "qty" value
 * @method Profit       getProfit()    Returns the current record's "Profit" value
 * @method Style        getStyle()     Returns the current record's "Style" value
 * @method Fish         getFish()      Returns the current record's "Fish" value
 * @method ProfitDetail setTime()      Sets the current record's "time" value
 * @method ProfitDetail setProfitId()  Sets the current record's "profit_id" value
 * @method ProfitDetail setStyleId()   Sets the current record's "style_id" value
 * @method ProfitDetail setFishId()    Sets the current record's "fish_id" value
 * @method ProfitDetail setQty()       Sets the current record's "qty" value
 * @method ProfitDetail setProfit()    Sets the current record's "Profit" value
 * @method ProfitDetail setStyle()     Sets the current record's "Style" value
 * @method ProfitDetail setFish()      Sets the current record's "Fish" value
 * 
 * @package    FISHERY
 * @subpackage model
 * @author     Your name here
 * @version    SVN: $Id: Builder.php 6820 2009-11-30 17:27:49Z jwage $
 */
abstract class BaseProfitDetail extends sfDoctrineRecord
{
    public function setTableDefinition()
    {
        $this->setTableName('profit_detail');
        $this->hasColumn('time', 'timestamp', null, array(
             'type' => 'timestamp',
             'notnull' => true,
             ));
        $this->hasColumn('profit_id', 'integer', null, array(
             'type' => 'integer',
             ));
        $this->hasColumn('style_id', 'integer', null, array(
             'type' => 'integer',
             ));
        $this->hasColumn('fish_id', 'integer', null, array(
             'type' => 'integer',
             ));
        $this->hasColumn('qty', 'float', null, array(
             'type' => 'float',
             'notnull' => true,
             ));


        $this->index('unique_fish_style_per_profit', array(
             'fields' => 
             array(
              0 => 'profit_id',
              1 => 'style_id',
              2 => 'fish_id',
             ),
             'type' => 'unique',
             ));
        $this->option('type', 'INNODB');
    }

    public function setUp()
    {
        parent::setUp();
        $this->hasOne('Profit', array(
             'local' => 'profit_id',
             'foreign' => 'id'));

        $this->hasOne('Style', array(
             'local' => 'style_id',
             'foreign' => 'id'));

        $this->hasOne('Fish', array(
             'local' => 'fish_id',
             'foreign' => 'id'));
    }
}