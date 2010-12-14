<?php

/**
 * Profile
 *
 * This class has been auto-generated by the Doctrine ORM Framework
 *
 * @package    HT
 * @subpackage model
 * @author     Your name here
 * @version    SVN: $Id: Builder.php 6820 2009-11-30 17:27:49Z jwage $
 */
class Profile extends BaseProfile {

    public $plused = false;
    public $minused = false;

    public function setTableDefinition() {
        parent:: setTableDefinition();

        $this->hasColumn('user_id', 'integer', 4, array(
            'type' => 'integer',
            'length' => '4',
        ));
    }

    public function setUp() {
        parent::setUp();

        $this->hasOne('sfGuardUser', array(
            'local' => 'user_id',
            'foreign' => 'id',
        ));
    }

    public function getRating() {
        return Vote::getRating($this);
    }

    public function getForce($rating = null) {
        if ($rating == null) {
            $rating = $this->getRating();
        }
        if ($rating < 99) {
            return 1;
        }
        if ($rating < 249) {
            return 2;
        }
        if ($rating < 499) {
            return 3;
        }
        if ($rating < 749) {
            return 4;
        }
        if ($rating < 999) {
            return 5;
        }
        if ($rating < 1499) {
            return 6;
        }
        if ($rating < 1999) {
            return 7;
        }
        return 8;
    }

    /**
     *
     * @return Doctrine_Collection
     */
    public function getFishes() {
        return Doctrine_Query::create()
                ->select('d.*,p.*,f.*,s.*,count(f.id) as fc')
                ->from('ProfitDetail d')
                ->leftJoin('d.Profit p')
                ->leftJoin('d.Fish f')
                ->leftJoin('d.Style s')
                ->where('p.created_by = ?', $this->getId())
                ->groupBy('f.id')
                ->orderBy('fc DESC')
                ->execute();
    }

    /**
     *
     * @return Doctrine_Collection
     */
    public function getStyles() {
        return Doctrine_Query::create()
                ->select('d.*,p.*,f.*,s.*,count(s.id) as sc')
                ->from('ProfitDetail d')
                ->leftJoin('d.Profit p')
                ->leftJoin('d.Fish f')
                ->leftJoin('d.Style s')
                ->where('p.created_by = ?', $this->getId())
                ->groupBy('s.id')
                ->orderBy('sc DESC')
                ->execute();
    }

    /**
     *
     * @return Doctrine_Collection
     */
    public function getInbox() {
        return Doctrine::getTable('Inbox')
                ->createQuery('i')
                ->leftJoin('i.Inboxed id')
                ->leftJoin('i.CommentInbox с')
                ->where('i.created_by = ?', $this->getId())
                ->andWhere('id.id = ?', $this->getId())
                ->execute();
    }

    /**
     *
     * @return Doctrine_Collection
     */
    public function getLocation() {
        //@todo: merge with wish list
        return Doctrine::getTable('Location')
                ->createQuery('l')
                ->where('l.created_by = ?', $this->getId())
                ->execute();
    }

    /**
     *
     * @param int $location_id
     * @return boolean
     */
    public function isWishes($location_id) {
        return $this->getLocation()->search(Doctrine::getTable('Location')->find($location_id)) !== false;
    }

    public function getFriends() {
        return parent::getFriend();
    }

    public function getDate(){
        return 123;
    }

}