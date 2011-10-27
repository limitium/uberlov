<?php

include(dirname(__FILE__).'/../../bootstrap/functional.php');

$browser = new sfTestFunctional(new sfBrowser());
$test    = $browser->test();
$conn    = Doctrine::getConnectionByTableName('lcoation');

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
    'email' => 'testuser@gmail.com',
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
    'email' => 'testuser@gmail.com',
    'email2' => 'testuser@gmail.com',
    'id' => '',
  ),
))
  /*   ->get('/user/new')
  ->click('alt or value of submit here', array (
  'sfApplyApply' => 
  array (
    'username' => 'testuser',
    'password' => 'testuser',
    'email' => 'testuser@gmail.com',
    'email2' => 'testuser@gmail.com',
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
  ->call('/user/confirm/test', 'GET', array())
  ->with('request')->begin()
    ->isParameter('module', 'sfApply')
    ->isParameter('action', 'confirm')
  ->end()
  ->with('response')->begin()
    ->isStatusCode(200)
  ->end()
;

$browser
  ->call('/user/confirm/ne7ba21393a5c4b9ef81c1f2baf89fad5', 'GET', array())
  ->with('request')->begin()
    ->isParameter('module', 'sfApply')
    ->isParameter('action', 'confirm')
  ->end()
  ->with('response')->begin()
    ->isStatusCode(200)
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
  ->call('/sfJqueryReloadedPlugin/css/indicator.gif', 'GET', array())
  ->with('request')->begin()
    ->isParameter('module', 'default')
    ->isParameter('action', 'error404')
  ->end()
  ->with('response')->begin()
    ->isStatusCode(404)
  ->end()
;

$browser
  ->call('/profile/update/328', 'POST', array (
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
    'id' => '328',
  ),
  'id' => '328',
))
  /*   ->get('/profile/update/328')
  ->click('alt or value of submit here', array (
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
    'id' => '328',
  ),
  'id' => '328',
)) */ 
  ->with('request')->begin()
    ->isParameter('module', 'profile')
    ->isParameter('action', 'update')
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


$conn->rollback();