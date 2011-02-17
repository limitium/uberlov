<h1>Редактирование <?php echo $form->getObject()->getNickName(); ?></h1>
<div class="tabPanel">
    <ul>
        <li><span href="#" id="tabComments" class="selected">Профаил</span></li>
        <li><span href="#" id="tabProfits">Смена пароля</span></li>
        <li><span href="#" id="tabEvents">Смена ящика</span></li>
    </ul>
</div>
<?php include_partial('form', array('form' => $form)) ?>
