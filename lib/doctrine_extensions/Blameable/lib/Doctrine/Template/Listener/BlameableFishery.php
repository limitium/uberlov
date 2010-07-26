<?php
/**
 * extending Doctrine_Template_Listener_Blameable to use symfony sf_guard_user id
 */
class BlameableFishery extends Doctrine_Template_Listener_Blameable
{
    /**
     *
     * @return int $ident sf_guard_user.id
     */
    public function getUserIdentity()
    {
        return sfContext::getInstance()->getUser()->getGuardUser()->getProfile()->getId();
    }
}
