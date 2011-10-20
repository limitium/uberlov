<?php

/**
 * collector components.
 *
 * @package    HT
 * @subpackage collector
 * @author     Your name here
 * @version    SVN: $Id: components.class.php 12479 2008-10-31 10:54:40Z fabien $
 */
class eventComponents extends sfComponents {

    public function executeLast() {
        $this->events = array();


        $query = Doctrine::getTable('FishEvent')
                ->createQuery('f')
                ->leftJoin('f.CreatedBy p')
                ->leftJoin('f.Location l')
                ->leftJoin('p.User u')
                ->where('f.date >= ?', array(date('Y-m-d', time())))
                ->orderBy('f.date ASC')
                ->limit(5);

        Doctrine::getTable('Location')
                ->filterScope($query, $this->getUser());


        foreach ($query->execute() as $event) {
            $this->events[] = $event;
        }
        $this->events = array_reverse($this->events);
    }

}
