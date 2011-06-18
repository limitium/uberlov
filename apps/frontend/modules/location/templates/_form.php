<?php use_stylesheets_for_form($form) ?>
<?php use_javascripts_for_form($form) ?>
<?php if ($form->hasGlobalErrors()): ?>
    <ul class="error_list">
        <?php foreach ($form->getGlobalErrors() as $name => $error): ?>
            <li><?php echo $name . ': ' . $error ?></li>
        <?php endforeach; ?>
    </ul>
<?php endif; ?>

<form class="location_form" action="<?php echo url_for('location/' . ($form->getObject()->isNew() ? 'create' : 'update') . (!$form->getObject()->isNew() ? '?id=' . $form->getObject()->getId() : '')) ?>" method="post" <?php $form->isMultipart() and print 'enctype="multipart/form-data" ' ?>>
    <fieldset>
        <dl>
            <dt><?php echo $form['name']->renderLabel() ?></dt>
            <dd>
                <?php echo $form['name']->renderError() ?>
                <?php echo $form['name'] ?>
            </dd>
        </dl>
        <dl>
            <dt><?php echo $form['location_type_id']->renderLabel() ?></dt>
            <dd>
                <?php echo $form['location_type_id']->renderError() ?>
                <?php echo $form['location_type_id'] ?>
            </dd>
        </dl>
        <dl>
            <dt><?php echo $form['depth']->renderLabel() ?></dt>
            <dd>
                <?php echo $form['depth']->renderError() ?>
                <?php echo $form['depth'] ?>
            </dd>
            <dl>
                <dt><?php echo $form['location_flow_id']->renderLabel() ?></dt>
                <dd>
                    <?php echo $form['location_flow_id']->renderError() ?>
                    <?php echo $form['location_flow_id'] ?>
                </dd>
            </dl>
            <dl>
                <dt><?php echo $form['location_fundus_id']->renderLabel() ?></dt>
                <dd>
                    <?php echo $form['location_fundus_id']->renderError() ?>
                    <?php echo $form['location_fundus_id'] ?>
                </dd>
            </dl>
    </fieldset>
    <fieldset class="right_inputs">
        <?php if($form->getObject()->isNew() || !$sf_user->isAnonymous() && $sf_user->getProfile()->id == $form->getObject()->created_by ):?>
        <dl>
            <dt><?php echo $form['location_scope_id']->renderLabel() ?></dt>
            <dd>
                <?php echo $form['location_scope_id']->renderError() ?>
                <?php echo $form['location_scope_id'] ?>
            </dd>
        </dl>
        <?php endif; ?>
        <dl>
            <dt><?php echo $form['location_relief_id']->renderLabel() ?></dt>
            <dd>
                <?php echo $form['location_relief_id']->renderError() ?>
                <?php echo $form['location_relief_id'] ?>
            </dd>
        </dl>
        <dl>
            <dt><?php echo $form['is_free']->renderLabel() ?></dt>
            <dd>
                <?php echo $form['is_free']->renderError() ?>
                <?php echo $form['is_free'] ?>
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
            <dt><?php echo $form['description']->renderLabel() ?></dt>
            <dd>
                <?php echo $form['description']->renderError() ?>
                <?php echo $form['description'] ?>
            </dd>
        </dl>
    </fieldset>
    <?php if (!$form->getObject()->isNew()): ?>
        <?php include_partial('photo/upload', array('object' => $form->getObject())) ?>
    <?php endif; ?>
    <div class="form_footer">
        <?php if (!$form->getObject()->isNew()): ?>
            <input type="hidden" name="sf_medtod" value="put" />
        <?php endif; ?>
        <?php echo $form->renderHiddenFields(false) ?>
        <button class="button_01" type="submit">
            <span class="border_l">
                <span class="border_r">
                    <span class="btn_bg"><?php echo $form->getObject()->isNew() ? 'ДОБАВИТЬ' : 'СОХРАНИТЬ'; ?></span>
                </span>
            </span>
        </button>
            <?php echo $form->getObject()->isNew()?'':link_to('Назад', 'location/show?id=' . $form->getObject()->getId()); ?>
    </div>
</form>