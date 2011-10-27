<?php

include(dirname(__FILE__).'/../../bootstrap/functional.php');

$browser = new sfTestFunctional(new sfBrowser());
$test    = $browser->test();
$conn    = Doctrine::getConnectionByTableName('location');

$conn->beginTransaction();

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
  ->info('user not registered')
  ->with('form')->begin()
    ->hasErrors(true)
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
    ->info("user name limitium busy")
    ->matches("/false/")
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
    ->info("user name testuser free")
    ->matches("/true/")
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
    ->matches("/false/")
    ->info("email limitium busy")
  ->end()
;

$browser
  ->call('/sfJqueryFormVal/remote/FRegistrationForm/sfValidatorDoctrineUnique', 'GET', array (
  'column' => 'email',
  'sfApplyApply' => 
  array (
    'email' => 'testuser@gmail.com',
  ),
))
  ->with('request')->begin()
    ->isParameter('module', 'sfJqueryFormVal')
    ->isParameter('action', 'remote')
  ->end()
  ->with('response')->begin()
    ->isStatusCode(200)
    ->info("email testuser free")
    ->matches("/true/")
  ->end()
;

$browser->get('/user/new')
  ->click('.button_01', array (
  'sfApplyApply' => 
  array (
    'username' => 'testuser',
    'password' => 'testuser',
    'email' => 'testuser@gmail.com',
    'email2' => 'testuser@gmail.com',
    'id' => '',
  ), array('_with_csrf' => true)
)) 
  ->info("create user")
  ->with('request')->begin()
    ->isParameter('module', 'sfApply')
    ->isParameter('action', 'apply')
  ->end()
  ->with('form')->begin()
    ->hasErrors(false)
  ->end()
  ->with('response')->begin()
    ->isStatusCode(200)
  //->debug()
    ->checkElement('#mail_server')
  ->end();
  //Ошибка в процессе отправки почты. Пожалуйста, попробуйте еще раз позже. 
        
$browser
  ->call('/user/confirm/test', 'GET', array())
  ->with('request')->begin()
    ->isParameter('module', 'sfApply')
    ->isParameter('action', 'confirm')
  ->end()
  ->with('response')->begin()
    ->isStatusCode(200)
    ->matches("/является не правильным/")
  ->end()
;

$testuser = Doctrine_Query::create()->from('sfGuardUserProfile p')
        ->leftJoin("p.User u")
        ->where("u.username = 'testuser'")
        ->fetchOne();
$browser
  ->info("validate user:" . $testuser->getUser()->username)
  ->info("validate key:".$testuser->validate)
  ->call('/user/confirm/'.$testuser->validate, 'GET', array())
  ->with('request')->begin()
    ->isParameter('module', 'sfApply')
    ->isParameter('action', 'confirm')
  ->end()
  ->with('response')->begin()
    ->isStatusCode(200)
    ->info("user validated!")
    ->matches("/Теперь Вы вошли на сайт/")
  ->end()
;

$browser
  ->call('/my_edit', 'GET', array())
  ->with('request')->begin()
    ->isParameter('module', 'profile')
    ->isParameter('action', 'editMy')
  ->end()
;

$browser
  ->with('request')->begin()
    ->isForwardedTo('profile', 'edit')
  ->end()
  ->with('response')->begin()
    ->isStatusCode(200)
  ->end()
;

$browser
  ->call('/profile/city', 'GET', array (
  'q' => 'моск',
  'limit' => '10',
  'timestamp' => '1319706599403',
))
  ->with('request')->begin()
    ->isParameter('module', 'profile')
    ->isParameter('action', 'city')
  ->end()
  ->with('response')->begin()
    ->isStatusCode(200)
  ->end()
;

$browser
  /*
  ->call('/profile/update/'.$testuser->user_id, 'POST', array (
  'sf_medtod' => 'put',
  'profile' => 
  array (
    'first_name' => 'tetst',
    'last_name' => 'test',
    'birth_date' => '12.10.2011',
    'city_id' => '2242',
    'description' => '
<p>test</p>',
    'sex' => 'on',
    'id' => $testuser->user_id,
  ),
  'id' => $testuser->user_id,
))*/
  ->get('/my_edit')
  ->click('.button_01', array (
  'sf_medtod' => 'put',
  'profile' => 
  array (
    'first_name' => 'tetst',
    'last_name' => 'test',
    'birth_date' => '12.10.2011',
    'city_id' => '2242',
    'description' => '
<p>test</p>',
    'sex' => 'on',
    'id' => $testuser->user_id,
  ),
  array('_with_csrf' => true),
  'id' => $testuser->user_id,
)) 
  ->with('request')->begin()
    ->isParameter('module', 'profile')
    ->isParameter('action', 'update')
  ->end()
;
$browser
  ->with('form')->begin()
    ->hasErrors(false)
  ->end()
  ->with('response')->begin()
    ->isRedirected(1)
    ->isStatusCode(302)        
  ->end()
  ->followRedirect()
;

$browser
  ->with('request')->begin()
    ->isParameter('module', 'profile')
    ->isParameter('action', 'show')
  ->end()
  ->with('response')->begin()
    ->isStatusCode(200)
  ->end()
;

$browser
  ->call('/logout', 'GET', array())
  ->with('request')->begin()
    ->isParameter('module', 'sfGuardAuth')
    ->isParameter('action', 'signout')
  ->end()
;
$browser
  ->with('response')->begin()
    ->isRedirected(1)
    ->isStatusCode(302)
  ->end()
  ->followRedirect()
;

$browser
  ->with('request')->begin()
    ->isParameter('module', 'collector')
    ->isParameter('action', 'locations')
  ->end()
  ->with('response')->begin()
    ->isStatusCode(200)
  ->end()
;

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
  /*->call('/login', 'POST', array (
  'signin' => 
  array (
    'username' => 'testuser',
    'password' => 'testuser',
  ),
  'menu' => 'sf_guard_signin',
))*/
     ->get('/login')
  ->click('.button_01', array (
  'signin' => 
  array (
    'username' => 'testuser',
    'password' => 'testuser',
  ),
  array('_with_csrf' => true),
  'menu' => 'sf_guard_signin',
))  
  ->with('request')->begin()
    ->isParameter('module', 'sfGuardAuth')
    ->isParameter('action', 'signin')
  ->end()
;
$browser
  ->with('form')->begin()
        ->hasErrors(false)
  ->end()
  ->with('response')->begin()
    ->isRedirected(1)
    ->isStatusCode(302)
  ->end()
  ->followRedirect()
;

$browser
  ->with('request')->begin()
    ->isParameter('module', 'collector')
    ->isParameter('action', 'locations')
  ->end()
  ->with('response')->begin()
    ->isStatusCode(200)
  ->end()
;


$conn->rollback();