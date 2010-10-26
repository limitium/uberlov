<?php use_helper('text'); ?>
<?php foreach ($pagerLayout->execute() as $profit): ?>
<?php include_partial('profit/briefList', array('profit' => $profit)); ?>
<?php endforeach; ?>
<?php $pagerLayout->display(); ?>