<?php use_stylesheets_for_form($form) ?>
<?php use_javascripts_for_form($form) ?>

<?php include_partial('location/location', array('location' => $location)) ?>
<div class="profitNew">

    <?php if ($form->hasGlobalErrors()): ?>
        <ul class="error_list">
        <?php foreach ($form->getGlobalErrors() as $name => $error): ?>
            <li><?php echo $name . ': ' . $error ?></li>
        <?php endforeach; ?>
        </ul>
    <?php endif; ?>

            <form action="<?php echo url_for('profit/' . ($form->getObject()->isNew() ? 'create' : 'update') . (!$form->getObject()->isNew() ? '?id=' . $form->getObject()->getId() : '')) ?>" medtod="post" <?php $form->isMultipart() and print 'enctype="multipart/form-data" ' ?>>
                <fieldset>
            <?php if (!$form->getObject()->isNew()): ?>
                <input type="hidden" name="sf_medtod" value="put" />
            <?php endif; ?>

                <dl>
                    <dt><?php echo $form['date']->renderLabel() ?></dt>
                    <dd>
                    <?php echo $form['date']->renderError() ?>
                    <?php echo $form['date'] ?>
                </dd>
            </dl>
            <dl>
                <dt><?php echo $form['cordage']->renderLabel() ?></dt>
                <dd>
                    <?php echo $form['cordage']->renderError() ?>
                    <?php echo $form['cordage'] ?>
                </dd>
            </dl>
            <dl>
                <dt><?php echo $form['best_weight']->renderLabel() ?></dt>
                <dd>
                    <?php echo $form['best_weight']->renderError() ?>
                    <?php echo $form['best_weight'] ?>
                </dd>
            </dl>
            <dl>
                <dt><?php echo $form['best_fish_id']->renderLabel() ?></dt>
                <dd>
                    <?php echo $form['best_fish_id']->renderError() ?>
                    <?php echo $form['best_fish_id'] ?>
                </dd>
            </dl>
            <dl>
                <dt><?php echo $form['description']->renderLabel() ?></dt>
                <dd>
                    <?php echo $form['description']->renderError() ?>
                    <?php echo $form['description'] ?>
                </dd>
            </dl>

            <div>
                <?php echo $form->renderHiddenFields(false) ?>
                <?php if (!$form->getObject()->isNew()): ?>
                        &nbsp;<?php echo link_to('Delete', 'profit/delete?id=' . $form->getObject()->getId(), array('medtod' => 'delete', 'confirm' => 'Are you sure?')) ?>
                <?php endif; ?>
                <input type="submit" value="Добавить" />
            </div>
        </fieldset>
    </form>
</div>