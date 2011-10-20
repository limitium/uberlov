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
        $this->comments = Doctrine::getTable('Comment')
                ->createQuery('c')
                ->leftJoin('c.CreatedBy p')
                ->leftJoin('p.User u')                
                ->orderBy('c.created_at desc')
                ->where("and c.parent > 0")
                ->limit(5)
                ->execute();
    }

}
