<?php

/**
 * userMenu actions.
 *
 * @package    HT
 * @subpackage userMenu
 * @author     Your name here
 * @version    SVN: $Id: actions.class.php 12479 2008-10-31 10:54:40Z fabien $
 */
class userComponents extends sfComponents {
/**
 * Executes index action
 *
 * @param sfRequest $request A request object
 */
    public function executeMenu(sfWebRequest $request) {
        $this->menu=array();
        $this->menu[]=array('url'=>'@homepage','title'=>'my profile');
        $this->menu[]=array('url'=>'@homepage','title'=>'my locations');
        $this->menu[]=array('url'=>'@homepage','title'=>'my routes');
        $this->menu[]=array('url'=>'@homepage','title'=>'my inboxes');
        $this->menu[]=array('url'=>'collector/import','title'=>'import');
    }
}
