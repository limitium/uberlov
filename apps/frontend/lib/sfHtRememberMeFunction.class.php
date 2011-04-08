<?php

/**
 * Processes the "remember me" cookie. With flash upload fix
 * 
 * 
 * @package    FISHERY
 * @subpackage model
 * @author     Sergei Belov <limitium@gmail.com>
 * @version    SVN: $Id: sfHtRememberMeFilter.class.php 27166 2010-01-25 21:04:41Z Kris.Wallsmith $
 */
class sfHtRememberMeFilter extends sfFilter {

    /**
     * Executes the filter chain.
     *
     * @param sfFilterChain $filterChain
     */
    public function execute($filterChain) {
        $cookieName = sfConfig::get('app_sf_guard_plugin_remember_cookie_name', 'sfRemember');
        if ($this->isFirstCall() && $this->context->getUser()->isAnonymous()) {
            $cookie = $this->context->getRequest()->getCookie($cookieName);
            if (!$cookie) {
                $cookie = $this->context->getRequest()->getParameter($cookieName);
            }
            if ($cookie) {
                $q = Doctrine_Core::getTable('sfGuardRememberKey')->createQuery('r')
                                ->innerJoin('r.User u')
                                ->where('r.remember_key = ?', $cookie);

                if ($q->count()) {
                    $this->context->getUser()->signIn($q->fetchOne()->User);
                }
            }
        }

        $filterChain->execute();
    }

}
