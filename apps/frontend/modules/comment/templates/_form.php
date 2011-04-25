<?php use_stylesheets_for_form($form) ?>
<?php use_javascripts_for_form($form) ?>

<div id="newComment">
    <form action="<?php echo url_for('comment/for?component=' . $form->getCommentedName()) ?>" method="post" <?php $form->isMultipart() and print 'enctype="multipart/form-data" ' ?>>
        <fieldset>
            <dl>
                <dt><?php echo $form['message']->renderLabel() ?></dt>
                <dd>
                    <?php echo $form['message']->renderError() ?>
                    <?php echo $form['message'] ?>
                </dd>
            </dl>
        </fieldset>
        <div class="form_footer">
            <?php echo $form->renderHiddenFields(false) ?>
            <button class="button_01" type="submit">
                <span class="border_l">
                    <span class="border_r">
                        <span class="btn_bg">ОТПРАВИТЬ</span>
                    </span>
                </span>
            </button>
        </div>
    </form>
</div>