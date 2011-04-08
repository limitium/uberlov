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
        $cookieDefaults = session_get_cookie_params();

        $options = array_merge(array(
            'session_name' => 'symfony',
            'session_id' => null,
            'auto_start' => true,
            'session_cookie_lifetime' => $cookieDefaults['lifetime'],
            'session_cookie_path' => $cookieDefaults['path'],
            'session_cookie_domain' => $cookieDefaults['domain'],
            'session_cookie_secure' => $cookieDefaults['secure'],
            'session_cookie_httponly' => isset($cookieDefaults['httponly']) ? $cookieDefaults['httponly'] : false,
            'session_cache_limiter' => null,
                ), $options);

        // initialize parent
        parent::initialize($options);

        // set session name
        $sessionName = $this->options['session_name'];

        session_name($sessionName);

        if ($sessionId = $this->options['session_id']) {
            session_id($sessionId);
        }

        $lifetime = $this->options['session_cookie_lifetime'];
        $path = $this->options['session_cookie_path'];
        $domain = $this->options['session_cookie_domain'];
        $secure = $this->options['session_cookie_secure'];
        $httpOnly = $this->options['session_cookie_httponly'];
        session_set_cookie_params($lifetime, $path, $domain, $secure, $httpOnly);

        if (null !== $this->options['session_cache_limiter']) {
            session_cache_limiter($this->options['session_cache_limiter']);
        }

        if ($this->options['auto_start'] && !self::$sessionStarted) {
            session_start();
            self::$sessionStarted = true;
        }
    }

}
