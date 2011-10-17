<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Syncer
 *
 * @author Администратор
 */
class Syncer {

    private static $instance;
    private $data;

    /**
     *
     * @return Syncer 
     */
    public static function create() {
        if (!self::$instance) {
            self::$instance = new self();
        }
        return self::$instance;
    }

    private function __construct() {
        $data = file_get_contents(sfConfig::get('sf_data_dir') . DIRECTORY_SEPARATOR . 'RusSyn.txt');
        foreach (explode("\r\n", $data) as $line) {
            list($word, $synonims) = explode("|", $line);
            $synonims = explode(",", $synonims);
            $this->data[" $word "] = " ".$synonims[rand(0, sizeof($synonims) - 1)]." ";
        }
    }

    public function doWell($text) {
        $k =array_keys($this->data);
        $v= array_values($this->data);
        fb(array_shift($k));
        fb(array_shift($v));
        return str_replace(array_keys($this->data), array_values($this->data), $text);
    }

}

