<?php
/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of DDDMConverterclass
 *
 * @author Limitan
 */
class OZIConverter {
  public static function toOZITime($timesstamp) {
    return ($timesstamp / 86400) + 25569;
  }

  public static function fromOZITime($oziTime) {
    return (int)(($oziTime - 25569) * 86400);
  }

  public static function parseWaypoint($fileStrings,$version) {
    $locations = array();
    for($i=4;$i<sizeof($fileStrings);$i++) {
      $pointData = explode(',', $fileStrings[$i]);
      if($pointData[0] != $fileStrings[$i]) {
        $name = trim($pointData[1]);
        $locations[] = array(
            'name' => $name!=''?$name:'noname',
            'lat' => floatval($pointData[2]),
            'lng' => floatval($pointData[3]),
            'description' => $pointData[10]
        );
      }
    }
    return $locations;
  }
}