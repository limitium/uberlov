<?php

/**
 * Location
 *
 * This class has been auto-generated by the Doctrine ORM Framework
 *
 * @package    HT
 * @subpackage model
 * @author     Your name here
 * @version    SVN: $Id: Builder.php 6485 2009-10-12 18:41:59Z jwage $
 */
class Location extends BaseLocation {

    public $plused = false;
    public $minused = false;

    public function getLatitudeOZI() {
        return DDDMConverter::DDToDM($this->getLatitude());
    }

    public function getLongitudeOZI() {
        return DDDMConverter::DDToDM($this->getLongitude());
    }

    public function getRating() {
        return Vote::getRating($this);
    }

    public function updateAddress($addressData) {
        if (!$this->isNew()) {
            $address = $this->getAddress();
        } else {
            $address = new Address();
            $this->setAddress($address);
        }
        $address->updateAddress($addressData);

        $this->save();
        return $this;
    }

    public function updatePhotos($photos) {
        Doctrine_Query::create()
                ->update('Photo p')
                ->set('p.toward', 'null')
                ->set('p.location_id', 'null')
                ->where('p.location_id = ?', $this->getId())
                ->andWhere('toward = ?', "location")
                ->execute();

        if (sizeof($photos)) {
            Doctrine_Query::create()
                    ->update('Photo p')
                    ->set('p.toward', '"location"')
                    ->set('p.location_id', $this->getId())
                    ->whereIn('p.id', $photos)
                    ->execute();
        }
        return $this;
    }

    public function getTotalProfit() {
        return Doctrine_Query::create()
                ->select('if(sum(d.qty)>0,sum(d.qty),0) as qty')
                ->from('ProfitDetail d')
                ->innerJoin('d.Profit p')
                ->where('p.location_id = ?', $this->getId())
                ->fetchOne()->qty;
    }

    public function getFishes() {
        return Doctrine_Query::create()
                ->from('Fish f')
                ->innerJoin('f.ProfitDetail d')
                ->innerJoin('d.Profit p')
                ->where('p.location_id = ?', $this->getId())
                ->groupBy('f.id')
                ->execute();
    }

    public function getStyles() {
        return Doctrine_Query::create()
                ->from('Style s')
                ->innerJoin('s.ProfitDetail d')
                ->innerJoin('d.Profit p')
                ->where('p.location_id = ?', $this->getId())
                ->groupBy('s.id')
                ->execute();
    }

    public function getPhoto() {
        return '';
    }

    public function isOwner(Profile $profile = null) {
        if (!$profile) {
            $profile = sfContext::getInstance()->getUser()->getProfile();
        }
        return $this->getCreatedBy() == $profile;
    }

    public function showed() {
        $show = $this->getLocationShow();
        if (!$show) {
            $this->LocationShow = new LocationShow();
        }
        $show->shows++;
        $show->save();
    }

    /**
     *
     * @return Doctrine_Collection 
     */
    public function getPhotos() {
        return parent::getPhotoLocation();
    }

}