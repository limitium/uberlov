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
    <?php if (!$form->getObject()->isNew()): ?>
        <input type="hidden" name="sf_method" value="put" />
    <?php endif; ?>
        <table>
            <tfoot>
                <tr>
                    <td colspan="2">
                    <?php echo $form->renderHiddenFields(false) ?>
                    <input type="submit" value="Создать" />
                </td>
            </tr>
        </tfoot>
        <tbody>
            <?php echo $form->renderGlobalErrors() ?>
                    <tr>
                        <th><?php echo $form['name']->renderLabel() ?></th>
                        <td>
                    <?php echo $form['name']->renderError() ?>
                    <?php echo $form['name'] ?>
                </td>
            </tr>
        </tbody>
    </table>
</form>
