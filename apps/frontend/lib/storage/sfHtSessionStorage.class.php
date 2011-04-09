<?php

/**
 * Description of sfHtSessionStorage
 *
 * @package    FISHERY
 * @author     Sergei Belov <limitium@gmail.com>
 * $Id: sfHtSessionStorage.php $
 */
class sfHtSessionStorage extends sfSessionStorage {

    /**
     * Available options:
     *
     *  * session_name:            The cookie name (symfony by default)
     *  * session_id:              The session id (null by default)
     *  * auto_start:              Whether to start the session (true by default)
     *  * session_cookie_lifetime: Cookie lifetime
     *  * session_cookie_path:     Cookie path
     *  * session_cookie_domain:   Cookie domain
     *  * session_cookie_secure:   Cookie secure
     *  * session_cookie_httponly: Cookie http only (only for PHP >= 5.2)
     *
     * The default values for all 'session_cookie_*' options are those returned by the session_get_cookie_params() function
     *
     * @param array $options  An associative array of options
     *
     * @see sfStorage
     */
    public function initialize($options = null) {
        //@todo: for photo upload make care about secure
        if ($sessionId = $options['session_id']) {
            session_id($sessionId);
        }
        parent::initialize($options);
//        print_r($_SESSION);
    }

}
