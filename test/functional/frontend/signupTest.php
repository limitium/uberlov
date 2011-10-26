<?php include(dirname(__FILE__).'/../../bootstrap/functional.php');

$browser = new sfTestFunctional(new sfBrowser());
$test    = $browser->test();
$conn    = Doctrine::getConnectionByTableName('location');

$conn->beginTransaction();
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
        // must be "false"
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
         // must be "false"
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
         // must be "true"
  ->end()
;

$browser
  ->call('/sfJqueryFormVal/remote/FRegistrationForm/sfValidatorDoctrineUnique', 'GET', array (
  'column' => 'email',
  'sfApplyApply' => 
  array (
    'email' => 'test@test.com',
  ),
))
  ->with('request')->begin()
    ->isParameter('module', 'sfJqueryFormVal')
    ->isParameter('action', 'remote')
  ->end()
  ->with('response')->begin()
    ->isStatusCode(200)
         // must be "true"
  ->end()
;

$browser
  ->call('/user/new', 'POST', array (
  'sfApplyApply' => 
  array (
    'username' => 'testuser',
    'password' => 'qweqwe123',
    'email' => 'test@test.com',
    'email2' => 'test@test.com',
    'id' => '',
  ),
))
  /*   ->get('/user/new')
  ->click('alt or value of submit here', array (
  'sfApplyApply' => 
  array (
    'username' => 'testuser',
    'password' => 'qweqwe123',
    'email' => 'test@test.com',
    'email2' => 'test@test.com',
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
    'password' => 'qweqwe123',
  ),
  'menu' => 'sf_guard_signin',
))
  /*   ->get('/login')
  ->click('alt or value of submit here', array (
  'signin' => 
  array (
    'username' => 'testuser',
    'password' => 'qweqwe123',
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
  ->call('/user/confirm/n681efa56a0892f7a08d4f365035d3ac4', 'GET', array())
  ->with('request')->begin()
    ->isParameter('module', 'sfApply')
    ->isParameter('action', 'confirm')
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
    ->isParameter('module', 'sfApply')
    ->isParameter('action', 'confirm')
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
    'password' => 'qweqwe123',
  ),
  'menu' => 'sf_guard_signin',
))
  /*   ->get('/login')
  ->click('alt or value of submit here', array (
  'signin' => 
  array (
    'username' => 'testuser',
    'password' => 'qweqwe123',
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
    ->isParameter('module', 'sfApply')
    ->isParameter('action', 'confirm')
  ->end()
  ->with('response')->begin()
    ->isStatusCode(200)
  ->end()
;


$conn->rollback();