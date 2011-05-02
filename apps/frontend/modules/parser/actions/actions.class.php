<?php

/**
 * parser actions.
 *
 * @package    FISHERY
 * @subpackage parser
 * @author     Sergei Belov <limitium@gmail.com>
 * @version    SVN: $Id: actions.class.php 23810 2009-11-12 11:07:44Z Kris.Wallsmith $
 */
class parserActions extends sfActions {

    public function executeLoc1(sfWebRequest $request) {
        $xmldata = file_get_contents('http://fishingmap.ru/pages/read.php');
        $xml = simplexml_load_string($xmldata);
        $data = array();
        foreach ($xml->location as $loc) {
            $loc instanceof SimpleXMLElement;
            $data[] = (object) array(
                        'name' => $loc['name']->__toString(),
                        'x' => $loc['x']->__toString(),
                        'y' => $loc['y']->__toString(),
                        'mtype' => $loc['mtype']->__toString(),
            );
        }
        $this->locations =$data;
    }

    /**
     * Executes index action
     *
     * @param sfRequest $request A request object
     */
    public function executeCity(sfWebRequest $request) {
        $wiki = file_get_contents('C:\1\1.htm');

        preg_match_all('/<tr><td>.*?<\/td><td>.*?<\/td><td><a href=".*?">(.*?)<\/a><\/td><td>.*?<\/td><td>.*?<\/td><td>.*?<\/td><td>.*?<\/td><td>.*?<\/td><td>.*?<\/td><td>.*?<\/td><td>.*?<\/td><td>.*?<\/td><td>.*?<\/td><td>.*?<\/td><td>.*?<\/td><td>.*?<\/td><td>.*?<\/td><td>.*?<\/td><td>(.*?)<\/td><\/tr>/', $wiki, $matchesarray);
        $weight = array();
        for ($i = 0; $i < sizeof($matchesarray[1]); $i++) {
            $weight[$matchesarray[1][$i]] = floatval(str_replace(array(' ', ','), array('', '.'), $matchesarray[2][$i])) * 1000;
        }
        fb($weight);
        $regions = array();
        $cities = array();
        for ($i = 1; $i <= 115; $i++) {
            fb('page ' . $i);
            $page = file_get_contents('http://www.voiceip.ru/home/kody_gorodov/?country_id=1&p_num=' . $i);
            $page = iconv('windows-1251', 'utf-8', $page);
            preg_match_all("/<tr align = center><td width = 50%>(.*?) \((.*?)\)<\/td><td width = 10%>/", $page, $matchesarray2);
            for ($k = 0; $k < sizeof($matchesarray2[0]); $k++) {
                $city = $matchesarray2[1][$k];
                $region = $matchesarray2[2][$k];
                if (!isset($regions[$region])) {
                    $regions[$region] = array();
                }
                $regions[$region][] = array(
                    'name' => $city,
                    'weight' => isset($weight[$city]) ? $weight[$city] : 1
                );
                $cities[] = $city;
            }
        }

        foreach ($regions as $region => $cities) {
            $r = new Region();
            $r->country_id = 1;
            $r->name = $region;
            $r->save();

            foreach ($cities as $city) {
                try {
                    $c = new City();
                    $c->name = $city['name'];
                    $c->weight = $city['weight'];
                    $c->Region = $r;
                    $c->save();
                } catch (Exception $e) {
                    
                }
            }
        }
    }

}
