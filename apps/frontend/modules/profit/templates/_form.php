<?php use_stylesheets_for_form($form) ?>
<?php use_javascripts_for_form($form) ?>

<form action="<?php echo url_for('profit/'.($form->getObject()->isNew() ? 'create' : 'update').(!$form->getObject()->isNew() ? '?id='.$form->getObject()->getId() : '')) ?>" method="post" <?php $form->isMultipart() and print 'enctype="multipart/form-data" ' ?>>
<?php if (!$form->getObject()->isNew()): ?>
<input type="hidden" name="sf_method" value="put" />
<?php endif; ?>
  <table>
    <tfoot>
      <tr>
        <td colspan="2">
          <?php echo $form->renderHiddenFields(false) ?>
          &nbsp;<a href="<?php echo url_for('profit/index') ?>">Back to list</a>
          <?php if (!$form->getObject()->isNew()): ?>
            &nbsp;<?php echo link_to('Delete', 'profit/delete?id='.$form->getObject()->getId(), array('method' => 'delete', 'confirm' => 'Are you sure?')) ?>
          <?php endif; ?>
          <input type="submit" value="Save" />
        </td>
      </tr>
    </tfoot>
    <tbody>
      <?php echo $form->renderGlobalErrors() ?>
      <tr>
        <th><?php echo $form['location_id']->renderLabel() ?></th>
        <td>
          <?php echo $form['location_id']->renderError() ?>
          <?php echo $form['location_id'] ?>
        </td>
      </tr>
      <tr>
        <th><?php echo $form['begin']->renderLabel() ?></th>
        <td>
          <?php echo $form['begin']->renderError() ?>
          <?php echo $form['begin'] ?>
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
