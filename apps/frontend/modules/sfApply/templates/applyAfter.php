<div>
    <?php $mail = $form->getObject()->email; ?>
    <?php $mailServer = 'www.' . substr($mail, strpos($mail, '@') + 1); ?>
    <p>
        Спасибо за регистрацию. Для подтверждения почтового адреса, Вам по электронной почте отправленно письмо. Проверьте свою почту - <a href="http://<?php echo $mailServer; ?>"><?php echo $mailServer; ?></a>.
    </p>
    <?php include_partial('sfApply/continue') ?>
</div>
