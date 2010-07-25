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
       $this->menu[]=array('url'=>'@homepage','title'=>'Профаил');
       $this->menu[]=array('url'=>'@homepage','title'=>'Мои места');
       $this->menu[]=array('url'=>'inbox/list','title'=>'Инбоксы');
       $this->menu[]=array('url'=>'collector/import','title'=>'Импорт');
       $this->menu[]=array('url'=>'collector/import','title'=>'Экспорт');
   }
}