<?php

class CityTable extends Doctrine_Table {

    public function getCities() {
        $mainCities = Doctrine_Collection::create('City');
        $user = sfContext::getInstance()->getUser();
        if (!$user->isAnonymous() && $user->getProfile()->getCity()) {
            $mainCities->add($user->getProfile()->getCity());
        }

        $mainCities->merge($this->createQuery()
                        ->where('weight >1')
                        ->orderBy('weight desc')
                        ->execute());
        return $mainCities;
    }

}