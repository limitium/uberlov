<?php use_stylesheets_for_form($form) ?>
<?php use_javascripts_for_form($form) ?>

<div class="inbox">

    <?php if ($form->hasGlobalErrors()): ?>
        <ul class="error_list">
        <?php foreach ($form->getGlobalErrors() as $name => $error): ?>
            <li><?php echo $name . ': ' . $error ?></li>
        <?php endforeach; ?>
        </ul>
    <?php endif; ?>

            <form action="<?php echo url_for('inbox/' . ($form->getObject()->isNew() ? 'create' : 'update') . (!$form->getObject()->isNew() ? '?id=' . $form->getObject()->getId() : '')) ?>" medtod="post" <?php $form->isMultipart() and print 'enctype="multipart/form-data" ' ?>>
                <fieldset>
            <?php if (!$form->getObject()->isNew()): ?>
                <input type="hidden" name="sf_medtod" value="put" />
            <?php endif; ?>
                <dl>
                    <dt>Тема:</dt>
                    <dd>
                    <?php echo $form['name']->renderError() ?>
                    <?php echo $form['name'] ?>
                </dd>
            </dl>
            <dl>
                <dt>Кому:<span>можно указать несколько получателей через запятую</span></dt>
                <dd>
                    <?php echo $form['ibnox_list']->renderError() ?>
                    <?php echo $form['ibnox_list'] ?>
                </dd>
            </dl>
            <dl>
                <dt>Сообщение:</dt>
                <dd>
                    <?php echo $form['message']->renderError() ?>
                    <?php echo $form['message'] ?>
                </dd>
            </dl>
            <div>
                <?php echo $form->renderHiddenFields(false) ?>
                <input type="submit" value="Отправить" />
            </div>
        </fieldset>
    </form>
</div>