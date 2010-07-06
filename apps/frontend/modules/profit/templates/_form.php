<?php use_stylesheets_for_form($form) ?>
<?php use_javascripts_for_form($form) ?>
<div class="profit">
    <form action="<?php echo url_for('profit/' . ($form->getObject()->isNew() ? 'create' : 'update') . (!$form->getObject()->isNew() ? '?id=' . $form->getObject()->getId() : '')) ?>" method="post" <?php $form->isMultipart() and print 'enctype="multipart/form-data" ' ?>>
        <?php if (!$form->getObject()->isNew()): ?>
            <input type="hidden" name="sf_method" value="put" />
        <?php endif; ?>
            <table>
                <tfoot>
                    <tr>
                        <td colspan="2">
                        <?php echo $form->renderHiddenFields(false) ?>
                        <?php if (!$form->getObject()->isNew()): ?>
                            &nbsp;<?php echo link_to('Delete', 'profit/delete?id=' . $form->getObject()->getId(), array('method' => 'delete', 'confirm' => 'Are you sure?')) ?>
                        <?php endif; ?>
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
                        <th><?php echo $form['cordage']->renderLabel() ?></th>
                        <td>
                        <?php echo $form['cordage']->renderError() ?>
                        <?php echo $form['cordage'] ?>
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
        <div>
        <?php echo $form['styles'] ?>
        <?php echo $form['fishes'] ?>
        <?php echo $form['qty'] ?>
        <a href="" id="addProfitDetail">Поймал</a>
        <table>
        </table>
    </div>
</div>