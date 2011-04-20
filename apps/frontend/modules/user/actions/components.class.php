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

            $this->menu[] = array('url' => '@my_profile', 'icon' => '/images/icons/user_menu/profile.png', 'title' => 'Профаил ' . $this->getUser()->getUsername());
            $this->menu[] = array('url' => '@friends', 'icon' => '/images/icons/user_menu/friends.png', 'title' => 'Друзья <span class="count"><span id="myFriendCounter">' . sizeof($profile->getFriends()) . '</span></span>');
            $this->menu[] = array('url' => '@my_locations', 'icon' => '/images/icons/user_menu/place.png', 'title' => 'Мои места <span class="count"><span id="myLocationCounter">' . sizeof($profile->getLocation()) . '</span></span>');
            $this->menu[] = array('url' => '@inboxes', 'icon' => '/images/icons/user_menu/inbox.png', 'title' => 'Инбоксы <span class="count"><span id="myInboxCounter">' . sizeof($profile->getInbox()) . '</span></span>');
        }
    }

}