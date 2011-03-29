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

    /**
     * Executes index action
     *
     * @param sfRequest $request A request object
     */
    public function executeCity(sfWebRequest $request) {
        $cities = array();

        $wiki = file_get_contents('http://ru.wikipedia.org/wiki/%D0%A1%D0%BF%D0%B8%D1%81%D0%BE%D0%BA_%D0%B3%D0%BE%D1%80%D0%BE%D0%B4%D0%BE%D0%B2_%D0%A0%D0%BE%D1%81%D1%81%D0%B8%D0%B8_%D1%81_%D0%BD%D0%B0%D1%81%D0%B5%D0%BB%D0%B5%D0%BD%D0%B8%D0%B5%D0%BC_%D0%B1%D0%BE%D0%BB%D0%B5%D0%B5_100_%D1%82%D1%8B%D1%81%D1%8F%D1%87_%D0%B6%D0%B8%D1%82%D0%B5%D0%BB%D0%B5%D0%B9');
        echo $wiki;
//        for ($i = 1; $i <= 115; $i++) {
//            fb('page ' . $i);
//            $page = file_get_contents('http://www.voiceip.ru/home/kody_gorodov/?country_id=1&p_num=' . $i);
//            $page = iconv('windows-1251', 'utf-8', $page);
//            preg_match_all("/<tr align = center><td width = 50%>(.*?) \((.*?)\)<\/td><td width = 10%>/", $page, $matchesarray);
//
//            for ($k = 0; $k < sizeof($matchesarray[0]); $k++) {
//                $city = $matchesarray[1][$k];
//                $region = $matchesarray[2][$k];
//                if (!isset($cities[$region])) {
//                    $cities[$region] = array();
//                }
//                $cities[$region][] = $city;
//            }
//        }
//        fb($cities);
//        $this->result = $cities;
    }

}
