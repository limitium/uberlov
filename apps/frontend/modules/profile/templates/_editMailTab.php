<div id="mailContainer">
    <?php use_stylesheets_for_form($form) ?>
    <p>На ваш текущий ящик <b><?php echo $profile->getEmail(); ?></b> придет письмо с подверждением о смене почтового ящика.</p>
    <form method="post" action="<?php echo url_for("profile/editEmail") ?>" name="sf_apply_email_edit_form">
        <fieldset>
            <dl>
                <dt><?php echo $form['email']->renderLabel() ?></dt>
                <dd>
                    <?php echo $form['email']->renderError() ?>
                    <?php echo $form['email'] ?>
                </dd>
            </dl>
        </fieldset>
        <div class="form_footer">
            <button class="button_01" type="submit">
                <?php echo $form->renderHiddenFields(false) ?>
                <span class="border_l">
                    <span class="border_r">
                        <span class="btn_bg">ИЗМЕНИТЬ</span>
                    </span>
                </span>
            </button>
        </div>
    </form>
</div>