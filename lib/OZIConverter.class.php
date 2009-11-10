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
}