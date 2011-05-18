<?php use_stylesheets_for_form($form) ?>
<?php use_javascripts_for_form($form) ?>

<form action="<?php echo url_for('event/' . ($form->getObject()->isNew() ? 'create' : 'update') . (!$form->getObject()->isNew() ? '?id=' . $form->getObject()->getId() : '')) ?>" method="post" <?php $form->isMultipart() and print 'enctype="multipart/form-data" ' ?>>
    <fieldset>
        <?php if (!$form->getObject()->isNew()): ?>
            <input type="hidden" name="sf_medtod" value="put" />
        <?php endif; ?>
        <dl>
            <dt><?php echo $form['name']->renderLabel() ?></dt>
            <dd>
                <?php echo $form['name']->renderError() ?>
                <?php echo $form['name'] ?>
            </dd>
        </dl>
        <dl>
            <dt><?php echo $form['date']->renderLabel() ?></dt>
            <dd>
                <?php echo $form['date']->renderError() ?>
                <?php echo $form['date'] ?>
            </dd>
        </dl>
        <dl>
            <dt><?php echo $form['fish_event_type_id']->renderLabel() ?></dt>
            <dd>
                <?php echo $form['fish_event_type_id']->renderError() ?>
                <?php echo $form['fish_event_type_id'] ?>
            </dd>
        </dl>
        <dl>
            <dt><?php echo $form['contact']->renderLabel() ?></dt>
            <dd>
                <?php echo $form['contact']->renderError() ?>
                <?php echo $form['contact'] ?>
            </dd>
        </dl>
            <dl>
            <dt><?php echo $form['description']->renderLabel() ?></dt>
            <dd>
                <?php echo $form['description']->renderError() ?>
                <?php echo $form['description'] ?>
            </dd>
        </dl>
        <dl>
            <dt><?php echo $form['price']->renderLabel() ?></dt>
            <dd>
                <?php echo $form['price']->renderError() ?>
                <?php echo $form['price'] ?>
            </dd>
        </dl>
        <dl>
            <dt><?php echo $form['schedule']->renderLabel() ?></dt>
            <dd>
                <?php echo $form['schedule']->renderError() ?>
                <?php echo $form['schedule'] ?>
            </dd>
        </dl>
        <dl>
            <dt><?php echo $form['rules']->renderLabel() ?></dt>
            <dd>
                <?php echo $form['rules']->renderError() ?>
                <?php echo $form['rules'] ?>
            </dd>
        </dl>
        <dl>
            <dt><?php echo $form['users']->renderLabel() ?></dt>
            <dd>
                <?php echo $form['users']->renderError() ?>
                <?php echo $form['users'] ?>
            </dd>
        </dl>
    </fieldset>
    <div class="form_footer">
        <?php echo $form->renderHiddenFields(false) ?>
        <button class="button_01" type="submit">
            <span class="border_l">
                <span class="border_r">
                    <span class="btn_bg"><?php echo $form->getObject()->isNew() ? 'ДОБАВИТЬ' : 'СОХРАНИТЬ'; ?></span>
                </span>
            </span>
        </button>
        <?php echo $form->getObject()->isNew() ? '' : link_to('Назад', 'profit/show?id=' . $form->getObject()->getId()); ?>
    </div>
</form>
