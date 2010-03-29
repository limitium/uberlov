<?php

/**
 * collector components.
 *
 * @package    HT
 * @subpackage collector
 * @author     Your name here
 * @version    SVN: $Id: components.class.php 12479 2008-10-31 10:54:40Z fabien $
 */
class collectorComponents extends sfComponents {
/**
 * Executes index action
 *
 * @param sfRequest $request A request object
 */
    public function executeStats(sfWebRequest $request) {
        $this->stats=array(
        'locations' => Doctrine::getTable('Location')->count());
    }
}
