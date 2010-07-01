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

    public function getTotalProfit() {
        return 666;
    }

    public function getPhoto() {
        return '';
    }

}