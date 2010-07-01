<?php

/**
 * Address
 *
 * This class has been auto-generated by the Doctrine ORM Framework
 *
 * @package    FISHERY
 * @subpackage model
 * @author     Your name here
 * @version    SVN: $Id: Builder.php 6820 2009-11-30 17:27:49Z jwage $
 */
class Address extends BaseAddress {

    public function updateAddress($addressData) {
        fb($addressData);
        $parent = null;
        foreach (array('country', 'areaLow', 'areaHigh', 'locality')  as $partName) {
            $part = $this->getAddressPart($addressData, $partName, $parent);

            $parent = $part;
            fb('part class name ' . $part);

            $uPartName = ucfirst($partName);
            $this->$uPartName = $part ? $part : null;
        }
    }


    private function getAddressPart($addressData, $partName, $parent) {
        $uPartName = ucfirst($partName);
        $name = $addressData[$partName];

        $part = Doctrine_Query::create()
            ->from($uPartName)
            ->where('name = ?', $name)
            ->fetchOne();

        if(!$part && $name) {
            $part = new $uPartName();
            $part->name = $name;
            fb('new part');
        }

        if($parent && $part) {
            $parentName = get_class($parent);
            fb('has parent ' . $parentName);
            if($part->$parentName->isNew()) {
                fb('parent empty');
                $part->$parentName = $parent;
            }
        }
        return $part;
    }
}