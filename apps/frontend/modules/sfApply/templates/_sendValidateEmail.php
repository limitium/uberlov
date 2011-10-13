<?php use_helper('I18N', 'Url') ?>
<?php include_partial('sfApply/mailTemplate',array("title"=>"Подтверждение изменения почтового ящика",'message'=> __("
<p>
Привет %USERNAME%!
</p><p>
Мы получили Ваш запрос на изменение почтового ящика на: %1%
</p><p>
Вы собираетесь <b>изменить</b> ваш почтовый ящик с: <b>%OLDEMAIL%</b> на <b>%NEWEMAIL%</b>
</p><p>
Для подтверждения проследуйте по ссылке:
</p><p>
%2%
</p>"
, array(
  "%1%" => link_to($sf_request->getHost(), $sf_request->getUriPrefix()),
  "%2%" => link_to(url_for("sfApply/confirm?validate=$validate", true), "sfApply/confirm?validate=$validate", array("absolute" => true)),
  "%USERNAME%" => $username,
  "%OLDEMAIL%" => $oldmail,
  "%NEWEMAIL%" => $newmail
  ),
    'sfForkedApply'))); ?>

