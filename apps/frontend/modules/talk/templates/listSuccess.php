<?php include_partial('talk/section', array('curSection' => $curSection)); ?>

<?php include_partial('talk/talks', array('pagerLayout' => $pagerLayout)); ?>

<?php if (isset($form)): ?>
<?php include_partial('form', array('form' => $form)) ?>
<?php endif; ?>
