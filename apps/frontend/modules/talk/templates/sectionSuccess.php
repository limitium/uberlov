<h2>Новая секция</h2>
<?php $parents = array(); ?>
<?php $section = $curSection; ?>

<?php while ($section != null && !$section->getNode()->isRoot()) : ?>
<?php $parents[] = $section->getName(); ?>
<?php $section = $section->getNode()->getParent(); ?>
<?php endwhile; ?>
<?php $parents[] = 'Все'; ?>
<?php echo implode('&rarr;', array_reverse($parents)); ?>

<?php use_stylesheets_for_form($form) ?>
<?php use_javascripts_for_form($form) ?>

<form action="<?php echo url_for('talk/section') ?>" method="post" <?php $form->isMultipart() and print 'enctype="multipart/form-data" ' ?>>
    <fieldset>
        <?php if (!$form->getObject()->isNew()): ?>
            <input type="hidden" name="sf_medtod" value="put" />
        <?php endif; ?>
        <dl>
            <dt><?php echo $form['name']->renderLabel() ?></dt>
            <dd>
                <?php echo $form['name']->renderError() ?>
                <?php echo $form['name'] ?>
            </dd>
        </dl>
    </fieldset>
    <div class="form_footer">
        <?php echo $form->renderHiddenFields(false) ?>
        <button class="button_01" type="submit">
            <span class="border_l">
                <span class="border_r">
                    <span class="btn_bg">ДОБАВИТЬ</span>
                </span>
            </span>
        </button>
    </div>
</form>
