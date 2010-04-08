<?php use_stylesheets_for_form($form) ?>
<?php use_javascripts_for_form($form) ?>

<form action="<?php echo url_for('profile/'.($form->getObject()->isNew() ? 'create' : 'update').(!$form->getObject()->isNew() ? '?id='.$form->getObject()->getId() : '')) ?>" method="post" <?php $form->isMultipart() and print 'enctype="multipart/form-data" ' ?>>
<?php if (!$form->getObject()->isNew()): ?>
<input type="hidden" name="sf_method" value="put" />
<?php endif; ?>
  <table>
    <tfoot>
      <tr>
        <td colspan="2">
          <?php echo $form->renderHiddenFields(false) ?>
          &nbsp;<a href="<?php echo url_for('profile/index') ?>">Back to list</a>
          <?php if (!$form->getObject()->isNew()): ?>
            &nbsp;<?php echo link_to('Delete', 'profile/delete?id='.$form->getObject()->getId(), array('method' => 'delete', 'confirm' => 'Are you sure?')) ?>
          <?php endif; ?>
          <input type="submit" value="Save" />
        </td>
      </tr>
    </tfoot>
    <tbody>
      <?php echo $form->renderGlobalErrors() ?>
      <tr>
        <th><?php echo $form['nick_name']->renderLabel() ?></th>
        <td>
          <?php echo $form['nick_name']->renderError() ?>
          <?php echo $form['nick_name'] ?>
        </td>
      </tr>
      <tr>
        <th><?php echo $form['first_name']->renderLabel() ?></th>
        <td>
          <?php echo $form['first_name']->renderError() ?>
          <?php echo $form['first_name'] ?>
        </td>
      </tr>
      <tr>
        <th><?php echo $form['last_name']->renderLabel() ?></th>
        <td>
          <?php echo $form['last_name']->renderError() ?>
          <?php echo $form['last_name'] ?>
        </td>
      </tr>
      <tr>
        <th><?php echo $form['birth_date']->renderLabel() ?></th>
        <td>
          <?php echo $form['birth_date']->renderError() ?>
          <?php echo $form['birth_date'] ?>
        </td>
      </tr>
      <tr>
        <th><?php echo $form['userpic']->renderLabel() ?></th>
        <td>
          <?php echo $form['userpic']->renderError() ?>
          <?php echo $form['userpic'] ?>
        </td>
      </tr>
      <tr>
        <th><?php echo $form['user_id']->renderLabel() ?></th>
        <td>
          <?php echo $form['user_id']->renderError() ?>
          <?php echo $form['user_id'] ?>
        </td>
      </tr>
      <tr>
        <th><?php echo $form['created_at']->renderLabel() ?></th>
        <td>
          <?php echo $form['created_at']->renderError() ?>
          <?php echo $form['created_at'] ?>
        </td>
      </tr>
      <tr>
        <th><?php echo $form['updated_at']->renderLabel() ?></th>
        <td>
          <?php echo $form['updated_at']->renderError() ?>
          <?php echo $form['updated_at'] ?>
        </td>
      </tr>
      <tr>
        <th><?php echo $form['wishes_list']->renderLabel() ?></th>
        <td>
          <?php echo $form['wishes_list']->renderError() ?>
          <?php echo $form['wishes_list'] ?>
        </td>
      </tr>
      <tr>
        <th><?php echo $form['my_firends_list']->renderLabel() ?></th>
        <td>
          <?php echo $form['my_firends_list']->renderError() ?>
          <?php echo $form['my_firends_list'] ?>
        </td>
      </tr>
      <tr>
        <th><?php echo $form['my_firends2_list']->renderLabel() ?></th>
        <td>
          <?php echo $form['my_firends2_list']->renderError() ?>
          <?php echo $form['my_firends2_list'] ?>
        </td>
      </tr>
      <tr>
        <th><?php echo $form['fishes_list']->renderLabel() ?></th>
        <td>
          <?php echo $form['fishes_list']->renderError() ?>
          <?php echo $form['fishes_list'] ?>
        </td>
      </tr>
      <tr>
        <th><?php echo $form['styles_list']->renderLabel() ?></th>
        <td>
          <?php echo $form['styles_list']->renderError() ?>
          <?php echo $form['styles_list'] ?>
        </td>
      </tr>
    </tbody>
  </table>
</form>
