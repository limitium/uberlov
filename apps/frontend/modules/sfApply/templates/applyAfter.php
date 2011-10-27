<div>
    <?php $mail = $form->getObject()->email; ?>
    <?php $mailServer = substr($mail, strpos($mail, '@') + 1); ?>
    <p>
        Спасибо за регистрацию. Для подтверждения почтового адреса, Вам по электронной почте отправленно письмо. Проверьте свою почту - <a id="mail_server" href="http://<?php echo $mailServer; ?>">http://<?php echo $mailServer; ?></a>.
    </p>
    <?php echo link_to(__("Continue",array(),'sfForkedApply'),  '@homepage') ?>
</div>
