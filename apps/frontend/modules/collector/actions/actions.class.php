<?php

/**
 * collector actions.
 *
 * @package    HT
 * @subpackage collector
 * @author     Your name here
 * @version    SVN: $Id: actions.class.php 12479 2008-10-31 10:54:40Z fabien $
 */
class collectorActions extends sfActions {
/**
 * Executes map action
 *
 * @param sfRequest $request A request object
 */
    public function executeMap(sfWebRequest $request) {
    //echo sfConfig::get('app_map_key');
    }

    /**
     * Executes data action
     *
     * @param sfRequest $request A request object
     */
    public function executeData(sfWebRequest $request) {
        $this->locations = Doctrine::getTable('Location')
            ->createQuery('r')
            ->execute();
        $this->routes = Doctrine::getTable('Route')
            ->createQuery('r')
            ->innerJoin('r.Points p')
            ->execute();
    }
}
