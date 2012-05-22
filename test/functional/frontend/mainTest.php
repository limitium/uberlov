<?php

include(dirname(__FILE__) . '/../../bootstrap/functional.php');

$browser = new sfTestFunctional(new sfBrowser());
$test = $browser->test();
$conn = Doctrine::getConnectionByTableName('location');

$conn->beginTransaction();

$browser->
        get('/')->
        info('1 - homepage')->
        with('request')->begin()->
        isParameter('module', 'collector')->
        isParameter('action', 'locations')->
        end()->
        with('response')->begin()->
        isStatusCode(200)->
        end()
;

$browser->
        get('/data')->
        info('1.1 - locations data')->
        with('request')->begin()->
        isParameter('module', 'collector')->
        isParameter('action', 'data')->
        end()->
        with('response')->begin()->
        isStatusCode(200)->
        end()
;


$browser->
        info('2 - main links')->
        get('/')->
        info('2.1 - profits')->
        click("Отчёты")->
        with('request')->begin()->
        isParameter('module', 'profit')->
        isParameter('action', 'list')->
        end()->
        with('response')->begin()->
        isStatusCode(200)->
        end()
;
$browser->
        info('2 - main links')->
        get('/')->
        info('2.2 - talks')->
        click("Обсуждения")->
        with('request')->begin()->
        isParameter('module', 'talk')->
        isParameter('action', 'list')->
        end()->
        with('response')->begin()->
        isStatusCode(200)->
        end()
;
$browser->
        info('2 - main links')->
        get('/')->
        info('2.3 - events')->
        click("События")->
        with('request')->begin()->
        isParameter('module', 'event')->
        isParameter('action', 'list')->
        end()->
        with('response')->begin()->
        isStatusCode(200)->
        end()
;
//@todo: make submit check
//$browser->
//        info('2 - main links')->
//        get('/')->
//        info('2.4 - search')->
//        click("Поиск")->
//        with('request')->begin()->
//        isParameter('module', 'location')->
//        isParameter('action', 'search')->
//        end()->
//        with('response')->begin()->
//        isStatusCode(200)->
//        end()
//;
$browser->
        info('2 - main links')->
        get('/')->
        info('2.5 - signin')->
        click("Вход")->
        with('request')->begin()->
        isParameter('module', 'sfGuardAuth')->
        isParameter('action', 'signin')->
        end()->
        with('response')->begin()->
        isStatusCode(401)->
        end()
;
$browser->
        info('2 - main links')->
        get('/')->
        info('2.6 - signup')->
        click("Регистрация")->
        with('request')->begin()->
        isParameter('module', 'sfApply')->
        isParameter('action', 'apply')->
        end()->
        with('response')->begin()->
        isStatusCode(200)->
        end()
;

$browser
        ->info('3 -footer links')
        ->get('/')
        ->info('3.1- Top')
        ->click("По рейтингу")
        ->with('request')->begin()
        ->isParameter('module', 'collector')
        ->isParameter('action', 'top')
        ->end()
        ->with('response')->begin()
        ->isStatusCode(200)
        ->end()
;

$browser
    ->info('3 -footer links')
    ->get('/')
    ->info('3.2- Regions')
    ->click("По регионам")
    ->with('request')->begin()
    ->isParameter('module', 'collector')
    ->isParameter('action', 'regions')
    ->end()
    ->with('response')->begin()
    ->isStatusCode(200)
    ->end()
;
$browser
    ->info('3 -footer links')
    ->get('/')
    ->info('3.3 - Free')
    ->click("Бесплатная рыбалка")
    ->with('request')->begin()
    ->isParameter('module', 'collector')
    ->isParameter('action', 'listFree')
    ->end()
    ->with('response')->begin()
    ->isStatusCode(200)
    ->end()
;
$browser
    ->info('3 -footer links')
    ->get('/')
    ->info('3.4 - Paid')
    ->click("Платная рыбалка")
    ->with('request')->begin()
    ->isParameter('module', 'collector')
    ->isParameter('action', 'listPaid')
    ->end()
    ->with('response')->begin()
    ->isStatusCode(200)
    ->end()
;
$browser
    ->info('3 -footer links')
    ->get('/')
    ->info('3.5 - profits')
    ->click("Отчёты")
    ->with('request')->begin()
    ->isParameter('module', 'profit')
    ->isParameter('action', 'list')
    ->end()
    ->with('response')->begin()
    ->isStatusCode(200)
    ->end()
;
$browser
    ->info('3 -footer links')
    ->get('/')
    ->info('3.6 - profits winter')
    ->click("Зимняя рыбалка")
    ->with('request')->begin()
    ->isParameter('module', 'profit')
    ->isParameter('action', 'listWinter')
    ->end()
    ->with('response')->begin()
    ->isStatusCode(200)
    ->end()
;
$browser
    ->info('3 -footer links')
    ->get('/')
    ->info('3.7 - profits summer')
    ->click("Летняя рыбалка")
    ->with('request')->begin()
    ->isParameter('module', 'profit')
    ->isParameter('action', 'listSummer')
    ->end()
    ->with('response')->begin()
    ->isStatusCode(200)
    ->end()
;
$browser
    ->info('3 -footer links')
    ->get('/')
    ->info('3.8 - talks')
    ->click("Обсуждения")
    ->with('request')->begin()
    ->isParameter('module', 'talk')
    ->isParameter('action', 'list')
    ->end()
    ->with('response')->begin()
    ->isStatusCode(200)
    ->end()
;
$browser
    ->info('3 -footer links')
    ->get('/')
    ->info('3.9 - events')
    ->click("События")
    ->with('request')->begin()
    ->isParameter('module', 'event')
    ->isParameter('action', 'list')
    ->end()
    ->with('response')->begin()
    ->isStatusCode(200)
    ->end()
;
$browser
    ->info('3 -footer links')
    ->get('/')
    ->info('3.10 - evetns archive')
    ->click("Архив")
    ->with('request')->begin()
    ->isParameter('module', 'event')
    ->isParameter('action', 'archive')
    ->end()
    ->with('response')->begin()
    ->isStatusCode(200)
    ->end()
;
$browser
    ->info('3 -footer links')
    ->get('/')
    ->info('3.11 - people')
    ->click("Люди")
    ->with('request')->begin()
    ->isParameter('module', 'profile')
    ->isParameter('action', 'list')
    ->end()
    ->with('response')->begin()
    ->isStatusCode(200)
    ->end()
;
$browser
    ->info('3 -footer links')
    ->get('/')
    ->info('3.11 - by profit')
    ->click("По улову")
    ->with('request')->begin()
    ->isParameter('module', 'profile')
    ->isParameter('action', 'topProfit')
    ->end()
    ->with('response')->begin()
    ->isStatusCode(200)
    ->end()
;

$conn->rollback();