<?php use_stylesheets_for_form($form) ?>
<?php use_javascripts_for_form($form) ?>
<?php if ($form->hasGlobalErrors()): ?>
    <ul class="error_list">
        <?php foreach ($form->getGlobalErrors() as $name => $error): ?>
            <li><?php echo $name . ': ' . $error ?></li>
        <?php endforeach; ?>
    </ul>
<?php endif; ?>

<form action="<?php echo url_for('talk/create') ?>" method="post">
    <fieldset>        
        <dl>
            <dt><?php echo $form['name']->renderLabel() ?></dt>
            <dd>
                <?php echo $form['name']->renderError() ?>
                <?php echo $form['name'] ?>
            </dd>
        </dl>
        <dl>
            <dt><?php echo $form['message']->renderLabel() ?></dt>
            <dd>
                <?php echo $form['message']->renderError() ?>
                <?php echo $form['message'] ?>
            </dd>
        </dl>
        <dl>
            <dt><?php echo $form['tags']->renderLabel() ?></dt>
            <dd>
                <?php echo $form['tags']->renderError() ?>
                <?php include_component('taggableComplete', 'tagWidget', array('object' => $form->getObject())) ?>
            </dd>
        </dl>
    </fieldset>
    <div class="form_footer">
        <?php echo $form->renderHiddenFields(false) ?>
        <button class="button_01" type="submit">
            <span class="border_l">
                <span class="border_r">
                    <span class="btn_bg">ОБСУДИТЬ</span>
                </span>
            </span>
        </button>
    </div>
</form>


<script>
    tagSuggest = <?php echo json_encode(url_for("talk/suggest")) ?>;
</script>
<?php use_javascript('../sfDoctrineActAsTaggablePlugin/js/pkTagahead'); ?>
<?php use_javascript('pkTagahead'); ?>