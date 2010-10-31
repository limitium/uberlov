<?php use_stylesheets_for_form($form) ?>
<?php use_javascripts_for_form($form) ?>

<form action="<?php echo url_for('event/' . ($form->getObject()->isNew() ? 'create' : 'update') . (!$form->getObject()->isNew() ? '?id=' . $form->getObject()->getId() : '')) ?>" method="post" <?php $form->isMultipart() and print 'enctype="multipart/form-data" ' ?>>
    <?php if (!$form->getObject()->isNew()): ?>
        <input type="hidden" name="sf_method" value="put" />
    <?php endif; ?>
        <table>
            <tfoot>
                <tr>
                    <td colspan="2">
                    <?php echo $form->renderHiddenFields(false) ?>
                    <input type="submit" value="Добавить" />
                </td>
            </tr>
        </tfoot>
        <tbody>
            <?php echo $form->renderGlobalErrors() ?>
                    <tr>
                        <th><?php echo $form['date']->renderLabel() ?></th>
                        <td>
                    <?php echo $form['date']->renderError() ?>
                    <?php echo $form['date'] ?>
                </td>
            </tr>
            <tr>
                <th><?php echo $form['name']->renderLabel() ?></th>
                <td>
                    <?php echo $form['name']->renderError() ?>
                    <?php echo $form['name'] ?>
                </td>
            </tr>
            <tr>
                <th><?php echo $form['description']->renderLabel() ?></th>
                <td>
                    <?php echo $form['description']->renderError() ?>
                    <?php echo $form['description'] ?>
                </td>
            </tr>
        </tbody>
    </table>
</form>
