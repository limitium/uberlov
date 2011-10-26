<?php

include(dirname(__FILE__).'/../../bootstrap/functional.php');

$browser = new sfTestFunctional(new sfBrowser());
$test    = $browser->test();
$conn    = Doctrine::getConnectionByTableName('location');

$conn->beginTransaction();
$browser
  ->call('/data', 'GET', array())
  ->with('request')->begin()
    ->isParameter('module', 'collector')
    ->isParameter('action', 'data')
  ->end()
  ->with('response')->begin()
    ->isStatusCode(200)
  ->end()
;

$browser
  ->call('/login', 'GET', array())
  ->with('request')->begin()
    ->isParameter('module', 'sfGuardAuth')
    ->isParameter('action', 'signin')
  ->end()
  ->with('response')->begin()
    ->isStatusCode(401)
  ->end()
;

$browser
  ->call('/sfJqueryFormVal/FloginForm.js', 'GET', array())
  ->with('request')->begin()
    ->isParameter('module', 'sfJqueryFormVal')
    ->isParameter('action', 'index')
  ->end()
  ->with('response')->begin()
    ->isStatusCode(200)
  ->end()
;

$browser
  ->call('/login', 'POST', array (
  'signin' => 
  array (
    'username' => 'testuser',
    'password' => 'testuser',
  ),
  'menu' => 'sf_guard_signin',
))
  /*   ->get('/login')
  ->click('alt or value of submit here', array (
  'signin' => 
  array (
    'username' => 'testuser',
    'password' => 'testuser',
  ),
  'menu' => 'sf_guard_signin',
)) */ 
  ->with('request')->begin()
    ->isParameter('module', 'sfGuardAuth')
    ->isParameter('action', 'signin')
  ->end()
  ->with('response')->begin()
    ->isStatusCode(200)
  ->end()
;

$browser
  ->call('/sfJqueryFormVal/FloginForm.js', 'GET', array())
  ->with('request')->begin()
    ->isParameter('module', 'sfJqueryFormVal')
    ->isParameter('action', 'index')
  ->end()
  ->with('response')->begin()
    ->isStatusCode(200)
  ->end()
;

$browser
  ->call('/user/new', 'GET', array())
  ->with('request')->begin()
    ->isParameter('module', 'sfApply')
    ->isParameter('action', 'apply')
  ->end()
  ->with('response')->begin()
    ->isStatusCode(200)
  ->end()
;

$browser
  ->call('/sfJqueryFormVal/FRegistrationForm.js', 'GET', array())
  ->with('request')->begin()
    ->isParameter('module', 'sfJqueryFormVal')
    ->isParameter('action', 'index')
  ->end()
  ->with('response')->begin()
    ->isStatusCode(200)
  ->end()
;

$browser
  ->call('/sfJqueryFormVal/remote/FRegistrationForm/sfValidatorDoctrineUnique', 'GET', array (
  'column' => 'username',
  'sfApplyApply' => 
  array (
    'username' => 'limitium',
  ),
))
  ->with('request')->begin()
    ->isParameter('module', 'sfJqueryFormVal')
    ->isParameter('action', 'remote')
  ->end()
  ->with('response')->begin()
    ->isStatusCode(200)
  ->end()
;

$browser
  ->call('/sfJqueryFormVal/remote/FRegistrationForm/sfValidatorDoctrineUnique', 'GET', array (
  'column' => 'username',
  'sfApplyApply' => 
  array (
    'username' => 'testuser',
  ),
))
  ->with('request')->begin()
    ->isParameter('module', 'sfJqueryFormVal')
    ->isParameter('action', 'remote')
  ->end()
  ->with('response')->begin()
    ->isStatusCode(200)
  ->end()
;

$browser
  ->call('/sfJqueryFormVal/remote/FRegistrationForm/sfValidatorDoctrineUnique', 'GET', array (
  'column' => 'email',
  'sfApplyApply' => 
  array (
    'email' => 'limitium@gmail.com',
  ),
))
  ->with('request')->begin()
    ->isParameter('module', 'sfJqueryFormVal')
    ->isParameter('action', 'remote')
  ->end()
  ->with('response')->begin()
    ->isStatusCode(200)
  ->end()
;

$browser
  ->call('/sfJqueryFormVal/remote/FRegistrationForm/sfValidatorDoctrineUnique', 'GET', array (
  'column' => 'email',
  'sfApplyApply' => 
  array (
    'email' => 'test@test.test',
  ),
))
  ->with('request')->begin()
    ->isParameter('module', 'sfJqueryFormVal')
    ->isParameter('action', 'remote')
  ->end()
  ->with('response')->begin()
    ->isStatusCode(200)
  ->end()
;

$browser
  ->call('/user/new', 'POST', array (
  'sfApplyApply' => 
  array (
    'username' => 'testuser',
    'password' => 'testuser',
    'email' => 'test@test.test',
    'email2' => 'test@test.test',
    'id' => '',
  ),
))
  /*   ->get('/user/new')
  ->click('alt or value of submit here', array (
  'sfApplyApply' => 
  array (
    'username' => 'testuser',
    'password' => 'testuser',
    'email' => 'test@test.test',
    'email2' => 'test@test.test',
    'id' => '',
  ),
)) */ 
  ->with('request')->begin()
    ->isParameter('module', 'sfApply')
    ->isParameter('action', 'apply')
  ->end()
  ->with('response')->begin()
    ->isStatusCode(200)
  ->end()
;

$browser
  ->call('/user/confirm/qweqwe', 'GET', array())
  ->with('request')->begin()
    ->isParameter('module', 'sfApply')
    ->isParameter('action', 'confirm')
  ->end()
  ->with('response')->begin()
    ->isStatusCode(200)
  ->end()
;

$browser
  ->call('/user/confirm/n4a8721003a6167b8ed8494575bf070ea', 'GET', array())
  ->with('request')->begin()
    ->isParameter('module', 'sfApply')
    ->isParameter('action', 'confirm')
  ->end()
  ->with('response')->begin()
    ->isStatusCode(200)
  ->end()
;

$browser
  ->call('/favicon.ico', 'GET', array())
  ->with('request')->begin()
    ->isParameter('module', 'default')
    ->isParameter('action', 'error404')
  ->end()
  ->with('response')->begin()
    ->isStatusCode(404)
  ->end()
;

$browser
  ->call('/favicon.ico', 'GET', array())
  ->with('request')->begin()
    ->isParameter('module', 'default')
    ->isParameter('action', 'error404')
  ->end()
  ->with('response')->begin()
    ->isStatusCode(404)
  ->end()
;

$browser
  ->call('/profile/edit_email', 'GET', array())
  ->with('request')->begin()
    ->isParameter('module', 'profile')
    ->isParameter('action', 'show')
  ->end()

$conn->rollback();