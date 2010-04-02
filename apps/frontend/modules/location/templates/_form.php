<?php use_stylesheets_for_form($form) ?>
<?php use_javascripts_for_form($form) ?>
<form action="<?php echo url_for('location/'.($form->getObject()->isNew() ? 'create' : 'update').(!$form->getObject()->isNew() ? '?id='.$form->getObject()->getId() : '')) ?>" method="post" <?php $form->isMultipart() and print 'enctype="multipart/form-data" ' ?>>
    <?php if (!$form->getObject()->isNew()): ?>
    <input type="hidden" name="sf_method" value="put" />
    <?php endif; ?>
    <table>
        <tfoot>
            <tr>
                <td colspan="2">
                    <?php echo $form->renderHiddenFields() ?>
                    <?php if (!$form->getObject()->isNew()): ?>
                    &nbsp;<?php echo link_to('Delete', 'location/delete?id='.$form->getObject()->getId(), array('method' => 'delete', 'confirm' => 'Are you sure?')) ?>
                    <?php endif; ?>
                    <input type="submit" class="button" value="Save" />
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
                <th><?php echo $form['depth']->renderLabel() ?></th>
                <td>
                    <?php echo $form['depth']->renderError() ?>
                    <?php echo $form['depth'] ?>
                </td>
            </tr>
            <tr>
                <th><?php echo $form['location_flow']->renderLabel() ?></th>
                <td>
                    <?php echo $form['location_flow']->renderError() ?>
                    <?php echo $form['location_flow'] ?>
                </td>
            </tr>
            <tr>
                <th><?php echo $form['location_fundus']->renderLabel() ?></th>
                <td>
                    <?php echo $form['location_fundus']->renderError() ?>
                    <?php echo $form['location_fundus'] ?>
                </td>
            </tr>
            <tr>
                <th><?php echo $form['location_relief']->renderLabel() ?></th>
                <td>
                    <?php echo $form['location_relief']->renderError() ?>
                    <?php echo $form['location_relief'] ?>
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