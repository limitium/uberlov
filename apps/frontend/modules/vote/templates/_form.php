<?php use_stylesheets_for_form($form) ?>
<?php use_javascripts_for_form($form) ?>

<form action="<?php echo url_for('vote/'.($form->getObject()->isNew() ? 'create' : 'update').(!$form->getObject()->isNew() ? '?id='.$form->getObject()->getId() : '')) ?>" method="post" <?php $form->isMultipart() and print 'enctype="multipart/form-data" ' ?>>
<?php if (!$form->getObject()->isNew()): ?>
<input type="hidden" name="sf_method" value="put" />
<?php endif; ?>
  <table>
    <tfoot>
      <tr>
        <td colspan="2">
          <?php echo $form->renderHiddenFields(false) ?>
          &nbsp;<a href="<?php echo url_for('vote/index') ?>">Back to list</a>
          <?php if (!$form->getObject()->isNew()): ?>
            &nbsp;<?php echo link_to('Delete', 'vote/delete?id='.$form->getObject()->getId(), array('method' => 'delete', 'confirm' => 'Are you sure?')) ?>
          <?php endif; ?>
          <input type="submit" value="Save" />
        </td>
      </tr>
    </tfoot>
    <tbody>
      <?php echo $form->renderGlobalErrors() ?>
      <tr>
        <th><?php echo $form['profile_id']->renderLabel() ?></th>
        <td>
          <?php echo $form['profile_id']->renderError() ?>
          <?php echo $form['profile_id'] ?>
        </td>
      </tr>
      <tr>
        <th><?php echo $form['value']->renderLabel() ?></th>
        <td>
          <?php echo $form['value']->renderError() ?>
          <?php echo $form['value'] ?>
        </td>
      </tr>
      <tr>
        <th><?php echo $form['is_up']->renderLabel() ?></th>
        <td>
          <?php echo $form['is_up']->renderError() ?>
          <?php echo $form['is_up'] ?>
        </td>
      </tr>
      <tr>
        <th><?php echo $form['toward']->renderLabel() ?></th>
        <td>
          <?php echo $form['toward']->renderError() ?>
          <?php echo $form['toward'] ?>
        </td>
      </tr>
      <tr>
        <th><?php echo $form['location_id']->renderLabel() ?></th>
        <td>
          <?php echo $form['location_id']->renderError() ?>
          <?php echo $form['location_id'] ?>
        </td>
      </tr>
      <tr>
        <th><?php echo $form['comment_id']->renderLabel() ?></th>
        <td>
          <?php echo $form['comment_id']->renderError() ?>
          <?php echo $form['comment_id'] ?>
        </td>
      </tr>
      <tr>
        <th><?php echo $form['profit_id']->renderLabel() ?></th>
        <td>
          <?php echo $form['profit_id']->renderError() ?>
          <?php echo $form['profit_id'] ?>
        </td>
      </tr>
    </tbody>
  </table>
</form>
