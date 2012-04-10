<?php slot('title', "Зимняя рыбалка") ?>
<?php use_helper('Text'); ?>
<?php $profits = $pager->execute(); ?>
<h2>Отчёты о зимней рыбалке</h2>

<?php if (count($profits)) : ?>
<?php foreach ($profits as $profit): ?>
<?php include_partial('profit/briefList', array('profit' => $profit)); ?>
<?php endforeach; ?>
<?php else: ?>
            Отчётов нет.
<?php endif; ?>
<?php $pager->display(); ?>