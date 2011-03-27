<?php use_stylesheets_for_form($form) ?>
<?php use_javascripts_for_form($form) ?>

<form action="<?php echo url_for('talk/' . ($form->getObject()->isNew() ? 'create' : 'update') . (!$form->getObject()->isNew() ? '?id=' . $form->getObject()->getId() : '')) ?>" method="post" <?php $form->isMultipart() and print 'enctype="multipart/form-data" ' ?>>
    <?php if (!$form->getObject()->isNew()): ?>
        <input type="hidden" name="sf_method" value="put" />
    <?php endif; ?>
        <table class="form">
            <tfoot>
                <tr>
                    <td colspan="2">
                    <?php echo $form->renderHiddenFields(false) ?>
                    <input type="submit" value="Обсудить!" />
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
                <th><?php echo $form['message']->renderLabel() ?></th>
                <td>
                    <?php echo $form['message']->renderError() ?>
                    <?php echo $form['message'] ?>
                </td>
            </tr>
            <tr>
                <th><?php echo $form['tags']->renderLabel() ?></th>
                <td>
                    <?php include_component('taggableComplete', 'tagWidget', array('object' => $form->getObject())) ?>
                </td>
            </tr>
        </tbody>
    </table>
</form>

<?php use_javascript('../sfDoctrineActAsTaggablePlugin/js/pkTagahead'); ?>
                    <script>
                        pkTagahead(<?php echo json_encode(url_for("talk/suggest")) ?>);
</script>