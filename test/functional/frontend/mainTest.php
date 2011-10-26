<?php

include(dirname(__FILE__) . '/../../bootstrap/functional.php');

$browser = new sfTestFunctional(new sfBrowser());

$browser->
        get('/')->
        info('1 - homepage')->
        with('request')->begin()->
        isParameter('module', 'collector')->
        isParameter('action', 'map')->
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
        isParameter('module', 'talks')->
        isParameter('action', 'list')->
        end()->
        with('response')->begin()->
        isStatusCode(200)->
        end()
;
$browser->
        info('2 - main links')->
        get('/')->
        info('2.3 - talks')->
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
        info('2.4 - events')->
        click("События")->
        with('request')->begin()->
        isParameter('module', 'event')->
        isParameter('action', 'list')->
        end()->
        with('response')->begin()->
        isStatusCode(200)->
        end()
;
$browser->
        info('2 - main links')->
        get('/')->
        info('2.5 - search')->
        click("Поиск")->
        with('request')->begin()->
        isParameter('module', 'location')->
        isParameter('action', 'search')->
        end()->
        with('response')->begin()->
        isStatusCode(200)->
        end()
;
$browser->
        info('2 - main links')->
        get('/')->
        info('2.6 - signin')->
        click("Вход")->
        with('request')->begin()->
        isParameter('module', 'sfGuardAuth')->
        isParameter('action', 'signin')->
        end()->
        with('response')->begin()->
        isStatusCode(200)->
        end()
;
$browser->
        info('2 - main links')->
        get('/')->
        info('2.7 - signup')->
        click("Регистрация")->
        with('request')->begin()->
        isParameter('module', 'sfGuardAuth')->
        isParameter('action', 'apply')->
        end()->
        with('response')->begin()->
        isStatusCode(200)->
        end()
;
