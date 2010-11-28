<?php use_stylesheets_for_form($form) ?>
<?php use_javascripts_for_form($form) ?>

<form action="<?php echo url_for('profile/' . ($form->getObject()->isNew() ? 'create' : 'update') . (!$form->getObject()->isNew() ? '?id=' . $form->getObject()->getId() : '')) ?>" method="post" <?php $form->isMultipart() and print 'enctype="multipart/form-data" ' ?>>
    <?php if (!$form->getObject()->isNew()): ?>
        <input type="hidden" name="sf_method" value="put" />
    <?php endif; ?>
        <table>
            <tfoot>
                <tr>
                    <td colspan="2">
                    <?php echo $form->renderHiddenFields(false) ?>
                    <input type="submit" value="Save" />
                </td>
            </tr>
        </tfoot>
        <tbody>
            <?php echo $form->renderGlobalErrors() ?>
                    <tr>
                        <th><?php echo $form['nick_name']->renderLabel() ?></th>
                        <td>
                    <?php echo $form['nick_name']->renderError() ?>
                    <?php echo $form['nick_name'] ?>
                </td>
            </tr>
            <tr>
                <th><?php echo $form['first_name']->renderLabel() ?></th>
                <td>
                    <?php echo $form['first_name']->renderError() ?>
                    <?php echo $form['first_name'] ?>
                </td>
            </tr>
            <tr>
                <th><?php echo $form['last_name']->renderLabel() ?></th>
                <td>
                    <?php echo $form['last_name']->renderError() ?>
                    <?php echo $form['last_name'] ?>
                </td>
            </tr>
            <tr>
                <th><?php echo $form['birth_date']->renderLabel() ?></th>
                <td>
                    <?php echo $form['birth_date']->renderError() ?>
                    <?php echo $form['birth_date'] ?>
                </td>
            </tr>
            <tr>
                <th><?php echo $form['userpic']->renderLabel() ?></th>
                <td>
                    <?php echo $form['userpic']->renderError() ?>
                    <?php echo $form['userpic'] ?>
                </td>
            </tr>
        </tbody>
    </table>
</form>
