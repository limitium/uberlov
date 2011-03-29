<?php

/**
 * event actions.
 *
 * @package    FISHERY
 * @subpackage event
 * @author     Your name here
 * @version    SVN: $Id: actions.class.php 23810 2009-11-12 11:07:44Z Kris.Wallsmith $
 */
class defaultActions extends sfActions {

    public function executeUnderconstruction(sfWebRequest $request) {
        $this->setLayout('underconstruction');
    }

    public function executeError404(sfWebRequest $request) {
        
    }

    public function executeDisabled(sfWebRequest $request) {
        
    }

    public function executeSecure(sfWebRequest $request) {
        
    }

}
