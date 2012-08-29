<?php

include(dirname(__FILE__).'/../../bootstrap/functional.php');

$browser = new sfTestFunctional(new sfBrowser());
$test    = $browser->test();
$conn    = Doctrine::getConnectionByTableName('location');

$conn->beginTransaction();

$browser
    ->call('/location/831', 'GET', array())
    ->with('request')->begin()
    ->isParameter('module', 'location')
    ->isParameter('action', 'show')
    ->end()
    ->with('response')->begin()
    ->isStatusCode(200)
    ->end()
;

$browser
    ->call('/profit/13', 'GET', array())
    ->with('request')->begin()
    ->isParameter('module', 'profit')
    ->isParameter('action', 'show')
    ->end()
    ->with('response')->begin()
    ->isStatusCode(200)
    ->end()
;
$browser
    ->call('/event/22', 'GET', array())
    ->with('request')->begin()
    ->isParameter('module', 'event')
    ->isParameter('action', 'show')
    ->end()
    ->with('response')->begin()
    ->isStatusCode(200)
    ->end()
;


$conn->rollback();