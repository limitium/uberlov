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
class DDDMConverter {
  public static function DDToDM($dd) {
    $remain = $dd - (int)($dd);
    $mins = 0.6 * $remain;
    return (int)($dd) + $mins;
  }
  public static function DMToDD($dm) {
    $mins = $dm - (int)($dm);
    $remain = $mins / 0.6;
    return (int)($dm) + $remain;
  }
}