<?php use_helper('jQuery'); ?>
<?php use_stylesheets_for_form($form) ?>
<?php use_javascripts_for_form($form) ?>
<?php use_stylesheet('/ht/www/sfJqueryReloadedPlugin/css/JqueryAutocomplete') ?>

<?php if ($form->hasGlobalErrors()): ?>
        <ul class="error_list">
            <?php foreach ($form->getGlobalErrors() as $name => $error): ?>
                <li><?php echo $name . ': ' . $error ?></li>
            <?php endforeach; ?>
        </ul>
    <?php endif; ?>

    <form action="<?php echo url_for('profile/update?id=' . $form->getObject()->getId()) ?>" method="post" <?php $form->isMultipart() and print 'enctype="multipart/form-data" ' ?>>
        <fieldset>
            <?php if (!$form->getObject()->isNew()): ?>
                <input type="hidden" name="sf_medtod" value="put" />
            <?php endif; ?>
            <dl>
                <dt><?php echo $form['first_name']->renderLabel() ?></dt>
                <dd>
                    <?php echo $form['first_name']->renderError() ?>
                    <?php echo $form['first_name'] ?>
                </dd>
            </dl>
            <dl>
                <dt><?php echo $form['last_name']->renderLabel() ?></dt>
                <dd>
                    <?php echo $form['last_name']->renderError() ?>
                    <?php echo $form['last_name'] ?>
                </dd>
            </dl>
            <dl>
                <dt><?php echo $form['birth_date']->renderLabel() ?></dt>
                <dd>
                    <?php echo $form['birth_date']->renderError() ?>
                    <?php echo $form['birth_date'] ?>
                </dd>
            </dl>
            <dl>
                <dt><?php echo $form['city_id']->renderLabel() ?></dt>
                <dd>
                    <?php echo $form['city_id']->renderError() ?>
                    <?php echo $form['city_id'] ?>
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
                <dt><?php echo $form['sex']->renderLabel() ?></dt>
                <dd>
                    <?php echo $form['sex']->renderError() ?>
                    <?php echo $form['sex'] ?>
                </dd>
            </dl>
            <dl>
                <dt><?php echo $form['userpic']->renderLabel() ?></dt>
                <dd>
                    <?php echo $form['userpic']->renderError() ?>
                    <?php echo $form['userpic'] ?>
                </dd>
            </dl>
            <dl>
                <dt><?php echo $form['userpic']->renderLabel() ?></dt>
                <dd>
                    <?php echo $form['userpic']->renderError() ?>
                    <?php echo jq_input_auto_complete_tag('zzz', 'eee', url_for("profile/city"),
                            array(),
                            array('formatItem'=> 'function(data, i, n, value) {return "<div>" + data[0]+"</div><div>"+data[1]+"</div>";}',
                                'formatResult'=>'function(data, value){return data[0];}') 
                            ) ;?>
                </dd>
            </dl>
        </fieldset>
        <div class="form_footer">
            <?php echo $form->renderHiddenFields(false) ?>
            <button class="button_01" type="submit">
                <span class="border_l">
                    <span class="border_r">
                        <span class="btn_bg">СОХРАНИТЬ</span>
                    </span>
                </span>
            </button>
        </div>
    </form>
