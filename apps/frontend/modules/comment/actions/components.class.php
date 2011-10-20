<?php

/**
 * collector components.
 *
 * @package    HT
 * @subpackage collector
 * @author     Your name here
 * @version    SVN: $Id: components.class.php 12479 2008-10-31 10:54:40Z fabien $
 */
class commentComponents extends sfComponents {

    public function executeLast() {
        $query = Doctrine::getTable('Comment')
                ->createQuery('c')
                ->leftJoin('c.CreatedBy p')
                ->leftJoin('p.User u')
                ->where('c.parent > 0')
                ->orderBy('c.created_at desc')
                ->limit(5);


        $this->comments = Doctrine::getTable('Comment')->filterScope($query, $this->getUser())->execute();
    }

}
