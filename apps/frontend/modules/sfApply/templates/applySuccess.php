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
            </dd>
        </dl>
        <dl>
            <dt><?php echo $form['password']->renderLabel() ?></dt>
            <dd>
                <?php echo $form['password']->renderError() ?>
                <?php echo $form['password'] ?>
            </dd>
        </dl>
        <dl>
            <dt><?php echo $form['email']->renderLabel() ?></dt>
            <dd>
                <?php echo $form['email']->renderError() ?>
                <?php echo $form['email'] ?>
            </dd>
        </dl>
        <dl>
            <dt><?php echo $form['email2']->renderLabel() ?></dt>
            <dd>
                <?php echo $form['email2']->renderError() ?>
                <?php echo $form['email2'] ?>
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
        </button>
    </div>
</form>