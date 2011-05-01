<div id="passwordContainer">
    <p>
        Вы можете изменить пароль, используя форму ниже.
    </p>
    <form method="post" action="<?php echo url_for("sfApply/reset") ?>" name="sf_apply_reset_form" id="sf_apply_reset_form">
        <fieldset>
            <dl>
                <dt><?php echo $form['password']->renderLabel() ?></dt>
                <dd>
                    <?php echo $form['password']->renderError() ?>
                    <?php echo $form['password'] ?>
                </dd>
            </dl>
            <dl>
                <dt><?php echo $form['password2']->renderLabel() ?></dt>
                <dd>
                    <?php echo $form['password2']->renderError() ?>
                    <?php echo $form['password2'] ?>
                </dd>
            </dl>
        </fieldset>
        <div class="form_footer">
            <?php echo $form->renderHiddenFields(false) ?>
            <button class="button_01" type="submit">
                <span class="border_l">
                    <span class="border_r">
                        <span class="btn_bg">ИЗМЕНИТЬ</span>
                    </span>
                </span>
            </button>
        </div>
    </form>
</div>