<?php use_stylesheets_for_form($form) ?>
<?php use_javascripts_for_form($form) ?>
<form class ="location form" action="<?php echo url_for('location/'.($form->getObject()->isNew() ? 'create' : 'update').(!$form->getObject()->isNew() ? '?id='.$form->getObject()->getId() : '')) ?>" method="post" <?php $form->isMultipart() and print 'enctype="multipart/form-data" ' ?>>
    <?php if (!$form->getObject()->isNew()): ?>
    <input type="hidden" name="sf_method" value="put" />
    <?php endif; ?>
    <table>
        <tfoot>
            <tr>
                <td colspan="2">
                    <?php echo $form->renderHiddenFields() ?>
                    <input type="submit" class="button" value="Сохранить" />
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
            <tr>
                <th><?php echo $form['location_type_id']->renderLabel() ?></th>
                <td>
                    <?php echo $form['location_type_id']->renderError() ?>
                    <?php echo $form['location_type_id'] ?>
                </td>
            </tr>
            <tr>
                <th><?php echo $form['depth']->renderLabel() ?></th>
                <td>
                    <?php echo $form['depth']->renderError() ?>
                    <?php echo $form['depth'] ?>
                </td>
            </tr>
            <tr>
                <th><?php echo $form['location_flow_id']->renderLabel() ?></th>
                <td>
                    <?php echo $form['location_flow_id']->renderError() ?>
                    <?php echo $form['location_flow_id'] ?>
                </td>
            </tr>
            <tr>
                <th><?php echo $form['location_fundus_id']->renderLabel() ?></th>
                <td>
                    <?php echo $form['location_fundus_id']->renderError() ?>
                    <?php echo $form['location_fundus_id'] ?>
                </td>
            </tr>
            <tr>
                <th><?php echo $form['location_relief_id']->renderLabel() ?></th>
                <td>
                    <?php echo $form['location_relief_id']->renderError() ?>
                    <?php echo $form['location_relief_id'] ?>
                </td>
            </tr>
            <tr>
                <th><?php echo $form['location_scope_id']->renderLabel() ?></th>
                <td>
                    <?php echo $form['location_scope_id']->renderError() ?>
                    <?php echo $form['location_scope_id'] ?>
                </td>
            </tr>
            <tr>
                <th><?php echo $form['is_free']->renderLabel() ?></th>
                <td>
                    <?php echo $form['is_free']->renderError() ?>
                    <?php echo $form['is_free'] ?>
                </td>
            </tr>
            <tr>
                <th><?php echo $form['price']->renderLabel() ?></th>
                <td>
                    <?php echo $form['price']->renderError() ?>
                    <?php echo $form['price'] ?>
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