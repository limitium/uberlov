<?php include_partial('talk/section', array('curSection' => $curSection)); ?>
<p>Для фильтрации нужно выбрать категорию. Добавить обсуждение можно только в крайних категориях</p>
<?php include_partial('talk/list', array('pagerLayout' => $pagerLayout)); ?>

<?php if (isset($form)): ?>
<?php include_partial('form', array('form' => $form)) ?>
<?php endif; ?>
