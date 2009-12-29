<?php use_stylesheets_for_form($form) ?>
<?php use_javascripts_for_form($form) ?>

<form action="<?php echo url_for('collector/import') ?>" method="post" <?php $form->isMultipart() and print 'enctype="multipart/form-data" ' ?>>
  <table>
    <tfoot>
      <tr>
        <td colspan="2">
          <?php echo $form->renderHiddenFields() ?>
          <input type="submit" class="button" value="Save" />
        </td>
      </tr>
    </tfoot>
    <tbody>
      <?php echo $form->renderGlobalErrors() ?>
      <tr>
        <th><?php echo $form['importer']->renderLabel() ?></th>
        <td>
          <?php echo $form['importer']->renderError() ?>
          <?php echo $form['importer'] ?>
        </td>
      </tr>
      <tr>
        <th><?php echo $form['file']->renderLabel() ?></th>
        <td>
          <?php echo $form['file']->renderError() ?>
          <?php echo $form['file'] ?>
        </td>
      </tr>
    </tbody>
  </table>
</form>