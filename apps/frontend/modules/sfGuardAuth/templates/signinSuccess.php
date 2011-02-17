<?php use_stylesheets_for_form($form) ?>
<?php use_javascripts_for_form($form) ?>

<form action="<?php echo url_for('@sf_guard_signin') ?>" method="post" <?php $form->isMultipart() and print 'enctype="multipart/form-data" ' ?>>
    <table class="form">
        <tfoot>
            <tr>
                <td colspan="2">
                    <?php echo $form->renderHiddenFields(false) ?>
                    <input type="submit" value="Войти" />
                </td>
            </tr>
        </tfoot>
        <tbody>
            <?php echo $form->renderGlobalErrors() ?>
            <tr>
                <th><?php echo $form['username']->renderLabel() ?></th>
                <td>
                    <?php echo $form['username']->renderError() ?>
                    <?php echo $form['username'] ?>
                </td>
            </tr>
            <tr>
                <th><?php echo $form['password']->renderLabel() ?></th>
                <td>
                    <?php echo $form['password']->renderError() ?>
                    <?php echo $form['password'] ?>
                </td>
            </tr>
            <tr>
                <th><?php echo $form['remember']->renderLabel() ?></th>
                <td>
                    <?php echo $form['remember']->renderError() ?>
                    <?php echo $form['remember'] ?>
                </td>
            </tr>
        </tbody>
    </table>
</form>
<a href="<?php echo url_for('@resetRequest') ?>"><?php echo 'Забыл?' ?></a>
