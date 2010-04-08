<?php
/**
 * Функция склонения числительных в русском языке
 *
 * @param int    $number Число которое нужно просклонять
 * @param array  $titles Массив слов для склонения
 * @return string
 **/
function declOfNum($number, $titles)
{
    $cases = array (2, 0, 1, 1, 1, 2);
    return $number." ".$titles[ ($number%100>4 && $number%100<20)? 2 : $cases[min($number%10, 5)] ];
}
 
function comments2text($number){
    return declOfNum($number, array('комментарий', 'комментария', 'комментариев'));;
}
function locations2text($number){
    return declOfNum($number, array('место', 'места', 'мест'));;
}
function reports2text($number){
    return declOfNum($number, array('отчет', 'отчета', 'отчетов'));;
}
