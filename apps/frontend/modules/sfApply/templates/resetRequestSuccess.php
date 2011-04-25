<?php use_stylesheet('form'); ?>
<?php use_javascript('form'); ?>

<form method="post" name="sf_apply_reset_request" action="<?php echo url_for('sfApply/resetRequest') ?>"
    <fieldset>
        <dl>
            <dt><?php echo $form['username_or_email']->renderLabel() ?></dt>
            <dd>
                <?php echo $form['username_or_email']->renderError() ?>
                <?php echo $form['username_or_email'] ?>
            </dd>
        </dl>
    </fieldset>
    <div class="form_footer">
        <?php echo $form->renderHiddenFields(false) ?>
        <button class="button_01" type="submit">
            <span class="border_l">
                <span class="border_r">
                    <span class="btn_bg">СМЕНИТЬ ПАРОЛЬ</span>
                </span>
            </span>
        </button>
        может <a href="<?php echo url_for('@sf_guard_signin') ?>"><span>Вспомнил?</span></a>
    </div>
</form>