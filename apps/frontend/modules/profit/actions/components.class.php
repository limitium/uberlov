<?php

/**
 * collector components.
 *
 * @package    HT
 * @subpackage collector
 * @author     Your name here
 * @version    SVN: $Id: components.class.php 12479 2008-10-31 10:54:40Z fabien $
 */
class profitComponents extends sfComponents {

    public function executeLast() {
        $this->profits = Doctrine_Query::create()->select()->from('Profit pf')
                        ->leftJoin('pf.CreatedBy p')
                        ->leftJoin('pf.Location l')
                        ->orderBy('pf.created_at desc')
                        ->limit(5)
                        ->execute();
    }

}