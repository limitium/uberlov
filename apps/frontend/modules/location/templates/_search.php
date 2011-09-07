<?php use_stylesheets_for_form($form) ?>
<?php use_javascripts_for_form($form) ?>
<?php if ($form->hasGlobalErrors()): ?>
    <ul class="error_list">
        <?php foreach ($form->getGlobalErrors() as $name => $error): ?>
            <li><?php echo $name . ': ' . $error ?></li>
        <?php endforeach; ?>
    </ul>
<?php endif; ?>

<form class="search_form" action="<?php echo url_for('location/search') ?>" method="get" <?php $form->isMultipart() and print 'enctype="multipart/form-data" ' ?>>
    <?php echo $form['query']->renderError() ?>
    <?php echo $form['query'] ?>
    <button class="button_01" type="submit">
        <span class="border_l">
            <span class="border_r">
                <span class="btn_bg">ИСКАТЬ</span>
            </span>
        </span>
    </button>
    <?php echo $form->renderHiddenFields(false) ?>

</form>