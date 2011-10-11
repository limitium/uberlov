<?php use_stylesheets_for_form($form) ?>
<?php use_javascripts_for_form($form) ?>
<h2>Регистрация</h2>
<?php if ($form->hasGlobalErrors()): ?>
    <ul class="error_list">
        <?php foreach ($form->getGlobalErrors() as $name => $error): ?>
            <li><?php echo $name . ': ' . $error ?></li>
        <?php endforeach; ?>
    </ul>
<?php endif; ?>

<form method="post" action="<?php echo url_for('sfApply/apply') ?>">
    <fieldset>
        <dl>
            <dt><?php echo $form['username']->renderLabel() ?></dt>
            <dd>
                <?php echo $form['username']->renderError() ?>
                <?php echo $form['username'] ?>
                <div class="field_info">Под этим именем Вас будут знать здесь.</div>
            </dd>
        </dl>
        <dl>
            <dt><?php echo $form['password']->renderLabel() ?></dt>
            <dd>
                <?php echo $form['password']->renderError() ?>
                <?php echo $form['password'] ?>
                <div class="field_info">Пароль не менее 6 знаков, а лучше с цифрами!</div>
            </dd>
        </dl>
        <dl>
            <dt><?php echo $form['email']->renderLabel() ?></dt>
            <dd>
                <?php echo $form['email']->renderError() ?>
                <?php echo $form['email'] ?>
                <div class="field_info">Сюда мы будем присылать Вам уведомления, если захотите.</div>
            </dd>
        </dl>
        <dl>
            <dt><?php echo $form['email2']->renderLabel() ?></dt>
            <dd>
                <?php echo $form['email2']->renderError() ?>
                <?php echo $form['email2'] ?>
                <div class="field_info">Главное не ошибиться.</div>
            </dd>
        </dl>
    </fieldset>
    <div class="form_footer">
        <?php echo $form->renderHiddenFields(false) ?>
        <button class="button_01" type="submit">
            <span class="border_l">
                <span class="border_r">
                    <span class="btn_bg">Я С ВАМИ</span>
                </span>
            </span>
        </button> или <a href="<?php echo url_for('@resetRequest') ?>"><span>уже зарегистрирован?</span></a>
    </div>
</form>