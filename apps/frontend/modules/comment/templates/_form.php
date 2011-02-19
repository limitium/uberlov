<?php use_stylesheets_for_form($form) ?>
<?php use_javascripts_for_form($form) ?>

<div id="newComment">
    <form action="<?php echo url_for('comment/' . $toward) ?>" method="post" <?php $form->isMultipart() and print 'enctype="multipart/form-data" ' ?>>
        <table>
            <tfoot>
                <tr>
                    <td colspan="2">
                        <?php echo $form->renderHiddenFields(false) ?>
                        <input type="submit" value="Бульк" />
                    </td>
                </tr>
            </tfoot>
            <tbody>
                <?php echo $form->renderGlobalErrors() ?>
                <tr>
                    <td>
                        <?php echo $form['message']->renderError() ?>
                        <?php echo $form['message'] ?>
                    </td>
                </tr>
            </tbody>
        </table>
    </form>
</div>