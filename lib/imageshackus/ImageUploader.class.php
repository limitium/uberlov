<?php

class ImageUploader extends ImageShackUploader {

    private $dkey = '89AHIPRTa819395f607c168cc2f70af2864d7466';
    private $authUrl = 'http://imageshack.us/auth.php';
    private $username = 'uberlov@gmail.com';
    private $password = 'qweqwe123';

    public function __construct() {
        parent::__construct($this->dkey);
    }

    public function login() {
        $data = http_build_query(array(
                    'format' => 'json',
                    'username' => $this->username,
                    'password' => $this->password,
                    'stay_logged_in' => 'true'));

        $ch = curl_init($this->authUrl);

        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($ch, CURLOPT_USERAGENT, 'Mozilla/5.0 (Windows; U; Windows NT 5.1; ru; rv:1.9.1.3) Gecko/20090824 Firefox/3.5.3');
        curl_setopt($ch, CURLOPT_TIMEOUT, 10);
        curl_setopt($ch, CURLOPT_REFERER, 'http://imageshack.us/');
        curl_setopt($ch, CURLOPT_POST, 1);
        curl_setopt($ch, CURLOPT_FOLLOWLOCATION, 1);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
        $cont = curl_exec($ch);
        $info = curl_getinfo($ch);
        curl_close($ch);
        $cookie;
        if (($pos = strpos($cont, 'myimages:')) > 0) {
            $cookie = substr($cont, $pos + 10, 32);
        }
        if (strlen($cookie) == 32) {
            $this->cookie = $cookie;
        } else {
            throw new Exception("Authorization imageshack.us fail :'(");
        }
        return $this;
    }

    public function upload($file) {
        if (!$this->cookie) {
            $this->login();
        }
        $response = parent::upload($file, '1280x1280', true, '', true,'image/jpeg');
        if (get_class($response) == 'SimpleXMLElement') {
            if (isset($response->links)) {
                return (object) array('file' => $response->files->image->__toString(),
            'image' => $response->links->image_link->__toString(),
            'thumb' => $response->links->thumb_link->__toString());
            }
        }
        throw new Exception('Upload image fail');
    }

}