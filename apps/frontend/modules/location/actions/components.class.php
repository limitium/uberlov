<?php

/**
 * collector components.
 *
 * @package    HT
 * @subpackage collector
 * @author     Your name here
 * @version    SVN: $Id: components.class.php 12479 2008-10-31 10:54:40Z fabien $
 */
class locationComponents extends sfComponents {


    public function executeLast() {
        $this->locations = Doctrine::getTable('Location')
                ->createQuery('l')
                ->leftJoin('l.CreatedBy p')
                ->leftJoin('p.User u')
                ->orderBy('l.created_at desc')
                ->limit(5)
                ->execute();
    }

}
