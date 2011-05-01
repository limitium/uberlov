<h2>Редактирование <?php echo $form->getObject()->getNickName(); ?></h2>
<?php use_javascript('tabPanel'); ?>
<div class="tabPanel">
    <ul>
        <li><span href="#" id="profileTab" class="selected">Профаил</span></li>
        <li><span href="#" id="settingsTab">Настройки</span></li>
        <li><span href="#" id="passwordTab">Смена пароля</span></li>
        <li><span href="#" id="mailTab">Смена ящика</span></li>
    </ul>
</div>
<?php include_partial('editProfileTab', array('form' => $form)); ?>
<?php include_partial('editSettingsTab', array()); ?>
<?php include_partial('editPasswordTab', array('form'=>$resetform)); ?>
<?php include_partial('editMailTab', array('form' => $mailForm, 'profile' => $form->getObject())); ?>
