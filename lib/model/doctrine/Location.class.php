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
class Location extends BaseLocation
{
    public static $winter = array(12, 1, 2, 3, 4);
    public static $summer = array(5, 6, 7, 8, 9, 10, 11);

    public $plused = false;
    public $minused = false;

    public function getLatitudeOZI()
    {
        return DDDMConverter::DDToDM($this->getLatitude());
    }

    public function getLongitudeOZI()
    {
        return DDDMConverter::DDToDM($this->getLongitude());
    }

    public function getRating()
    {
        return Vote::getRating($this);
    }

    public function isWinter()
    {
        return $this->isSeason(self::$winter);
    }

    public function isSummer()
    {
        return $this->isSeason(self::$summer);
    }

    private function isSeason($months)
    {
        foreach ($this->getProfit() as $profit) {
            $date = date_parse($profit->date);
            $month = $date['month'];
            if (in_array($month, $months)) {
                return true;
            }
        }
        return false;
    }

    public function updateAddress($addressData)
    {
        $address = $this->getAddress();
        $address->updateAddress($addressData);
        $address->save();
        if (!$this->address_id) {
            Doctrine_Query::create()->update("Location")
                ->set("address_id", $address->id)
                ->where('id = ?', $this->id)
                ->execute();
        } else {
            $this->save();
        }
        return $this;
    }

    public function updatePhotos($photos)
    {
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

    public function getTotalProfit()
    {
        $qty = 0;
        foreach ($this->getProfit() as $profit) {
            $profit instanceof Profit;
            foreach ($profit->getProfitDetail() as $detail) {
                $detail instanceof ProfitDetail;
                $qty += $detail->getQty();
            }
        }
        return $qty;
    }

    public function getAverageProfit()
    {
        return sizeof($this->getProfit()) ? number_format($this->getTotalProfit() / sizeof($this->getProfit()), 2) : "0.00";
    }

    public function getFishes()
    {
        $fishes = array();
        foreach ($this->getProfit() as $profit) {
            $profit instanceof Profit;
            foreach ($profit->getProfitDetail() as $detail) {
                $detail instanceof ProfitDetail;
                $fishes[$detail->getFishId()] = $detail->getFish();
            }
        }
        return array_values($fishes);
    }

    public function getStyles()
    {
        return Doctrine_Query::create()
            ->from('Style s')
            ->innerJoin('s.ProfitDetail d')
            ->innerJoin('d.Profit p')
            ->where('p.location_id = ?', $this->getId())
            ->groupBy('s.id')
            ->execute();
    }

    public function getPhoto()
    {
        return '';
    }

    public function isOwner(Profile $profile = null)
    {
        if (!$profile) {
            $profile = sfContext::getInstance()->getUser()->getProfile();
        }
        return $this->getCreatedBy() == $profile;
    }

    public function showed()
    {
        $show = $this->getLocationShow();
        if (!$show) {
            $this->LocationShow = new LocationShow();
            $show=$this->LocationShow;
        }
        $show->shows++;
        $show->save();
    }

    /**
     *
     * @return Doctrine_Collection
     */
    public function getPhotos()
    {
        return parent::getPhotoLocation();
    }

    public function save(Doctrine_Connection $conn = null)
    {

        $conn = $conn ? $conn : $this->getTable()->getConnection();
        $conn->beginTransaction();
        try {
            $ret = parent::save($conn);

            //only public locations
            if ($this->getLocationScopeId() == 5) {
                LuceneEngine::updateLuceneIndexFor($this);
            }

            $conn->commit();

            return $ret;
        } catch (Exception $e) {
            $conn->rollBack();
            throw $e;
        }
    }

    public function delete(Doctrine_Connection $conn = null)
    {
        LuceneEngine::deleteLuceneIndexFor($this);
        return parent::delete($conn);
    }

}