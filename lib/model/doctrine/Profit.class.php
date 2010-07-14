<?php

/**
 * Profit
 *
 * This class has been auto-generated by the Doctrine ORM Framework
 *
 * @package    HT
 * @subpackage model
 * @author     Your name here
 * @version    SVN: $Id: Builder.php 6820 2009-11-30 17:27:49Z jwage $
 */
class Profit extends BaseProfit {
    public $plused = false;
    public $minused = false;
    
    public function getRating() {
        return Vote::getRating($this);
    }

    public function updateDetails($detailsData) {
//        if (!$this->isNew()) {
//            $address = $this->getAddress();
//        } else {
//            $address = new Address();
//            $this->setAddress($address);
//        }
        foreach ($detailsData as $detailData){
            $detail = new ProfitDetail();
            $detail->fromArray($detailData);
            $detail->Profit = $this;
            $detail->save();
        }

        $this->save();
        return $this;
    }
}