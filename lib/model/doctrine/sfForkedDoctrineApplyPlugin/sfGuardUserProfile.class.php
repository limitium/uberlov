<?php

/**
 * sfGuardUserProfile
 * 
 * This class has been auto-generated by the Doctrine ORM Framework
 * 
 * @package    FISHERY
 * @subpackage model
 * @author     Your name here
 * @version    SVN: $Id: Builder.php 7490 2010-03-29 19:53:27Z jwage $
 */
class sfGuardUserProfile extends PluginsfGuardUserProfile {

    public $plused = false;
    public $minused = false;

    public function setUp() {
        parent::setUp();

        $this->hasOne('sfGuardUser', array(
            'local' => 'user_id',
            'foreign' => 'id',
        ));
    }

    public function getRating() {
        return Vote::getRating($this, 'Profile');
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
                ->orWhere('id.id = ?', $this->getId())
                ->execute();
    }

    /**
     *
     * @return Doctrine_Collection
     */
    public function getLocation() {
        return Doctrine::getTable('Location')
                ->createQuery('l')
                ->leftJoin('l.WishList w')
                ->where('l.created_by = ?', $this->getId())
                ->orWhere('w.profile_id = ?', $this->getId())
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

    public function getDate() {
        return 123;
    }

    public function getNickName() {
        return $this->getUser()->getUsername();
    }

    public function getFirstName() {
        return $this->getUser()->getFirstName();
    }

    public function getLastName() {
        return $this->getUser()->getLastName();
    }

}