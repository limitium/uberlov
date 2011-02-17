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
        $this->menu = array();
        if (!$this->getUser()->isAnonymous()) {
            $profile = $this->getUser()->getProfile();

            $this->menu[] = array('url' => 'profile/show?id=' . $profile->getId(), 'title' => 'Профаил ' . $this->getUser()->getUsername());
            $this->menu[] = array('url' => 'profile/friends', 'title' => 'Друзья (<span id="myFriendCounter">' . sizeof($profile->getFriends()) . '</span>)');
            $this->menu[] = array('url' => 'location/my', 'title' => 'Мои места (<span id="myLocationCounter">' . sizeof($profile->getLocation()) . '</span>)');
            $this->menu[] = array('url' => 'inbox/list', 'title' => 'Инбоксы (<span id="myInboxCounter">' . sizeof($profile->getInbox()) . '</span>)');
        }
    }

}