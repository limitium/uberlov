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
        <div class="tableContainer">
            <table>
                <thead>
                    <tr>
                        <th>
                        <?php echo $form['fishes'] ?>
                        </th>
                        <th>
                        <?php echo $form['styles'] ?>
                        </th>
                        <th>
                        <?php echo $form['qty'] ?>
                    </th>
                    <th>
                        <input type="button" value="&nbsp;+&nbsp;" class="button addProfitDetail">
                    </th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>12</td>
                    <td>dsf</td>
                    <td>fdhg</td>
                    <td>-</td>
                </tr><tr>
                    <td>12</td>
                    <td>dsf</td>
                    <td>fdhg</td>
                    <td>-</td>
                </tr><tr>
                    <td>12</td>
                    <td>dsf</td>
                    <td>fdhg</td>
                    <td>-</td>
                </tr><tr>
                    <td>12</td>
                    <td>dsf</td>
                    <td>fdhg</td>
                    <td>-</td>
                </tr><tr>
                    <td>12</td>
                    <td>dsf</td>
                    <td>fdhg</td>
                    <td>-</td>
                </tr><tr>
                    <td>12</td>
                    <td>dsf</td>
                    <td>fdhg</td>
                    <td>-</td>
                </tr><tr>
                    <td>12</td>
                    <td>dsf</td>
                    <td>fdhg</td>
                    <td>-</td>
                </tr><tr>
                    <td>12</td>
                    <td>dsf</td>
                    <td>fdhg</td>
                    <td>-</td>
                </tr><tr>
                    <td>12</td>
                    <td>dsf</td>
                    <td>fdhg</td>
                    <td>-</td>
                </tr><tr>
                    <td>12</td>
                    <td>dsf</td>
                    <td>fdhg</td>
                    <td>-</td>
                </tr><tr>
                    <td>12</td>
                    <td>dsf</td>
                    <td>fdhg</td>
                    <td>-</td>
                </tr><tr>
                    <td>12</td>
                    <td>dsf</td>
                    <td>fdhg</td>
                    <td>-</td>
                </tr><tr>
                    <td>12</td>
                    <td>dsf</td>
                    <td>fdhg</td>
                    <td>-</td>
                </tr><tr>
                    <td>12</td>
                    <td>dsf</td>
                    <td>fdhg</td>
                    <td>-</td>
                </tr><tr>
                    <td>12</td>
                    <td>dsf</td>
                    <td>fdhg</td>
                    <td>-</td>
                </tr><tr>
                    <td>12</td>
                    <td>dsf</td>
                    <td>fdhg</td>
                    <td>-</td>
                </tr><tr>
                    <td>12</td>
                    <td>dsf</td>
                    <td>fdhg</td>
                    <td>-</td>
                </tr><tr>
                    <td>12</td>
                    <td>dsf</td>
                    <td>fdhg</td>
                    <td>-</td>
                </tr><tr>
                    <td>12</td>
                    <td>dsf</td>
                    <td>fdhg</td>
                    <td>-</td>
                </tr><tr>
                    <td>12</td>
                    <td>dsf</td>
                    <td>fdhg</td>
                    <td>-</td>
                </tr><tr>
                    <td>12</td>
                    <td>dsf</td>
                    <td>fdhg</td>
                    <td>-</td>
                </tr><tr>
                    <td>12</td>
                    <td>dsf</td>
                    <td>fdhg</td>
                    <td>-</td>
                </tr><tr>
                    <td>12</td>
                    <td>dsf</td>
                    <td>fdhg</td>
                    <td>-</td>
                </tr><tr>
                    <td>12</td>
                    <td>dsf</td>
                    <td>fdhg</td>
                    <td>-</td>
                </tr><tr>
                    <td>dsf</td>
                    <td>fdhg</td>
                    <td>12</td>
                    <td><input type="button" value="&nbsp;-&nbsp;" class="button removeProfitDetail"></td>
                </tr>
            </tbody>
            <tfoot>
                <tr>
                    <td colspan="2">Всего:</td>
                    <td>234</td>
                    <td>кг</td>
                </tr>
            </tfoot>
        </table>
    </div>
</div>