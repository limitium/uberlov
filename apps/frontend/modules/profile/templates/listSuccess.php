<?php use_javascript('voting'); ?>
<?php $people = $pager->execute(); ?>
<?php foreach ($people as $user): ?>
    <?php $profile = $user->getProfile(); ?>
    <?php include_partial('profile/listItem', array('profile' => $profile)); ?>
<?php endforeach; ?>
<?php $pager->display(); ?>
