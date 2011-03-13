<div class="createdBy">Добавил<?php echo $added->getCreatedBy()->getSex() ? '' : 'а' ?> <?php include_partial('profile/picnick', array('profile' => $added->getCreatedBy())); ?>,
    <?php echo $added->getDateTimeObject('created_at')->format('d.m.Y') ?> в <?php echo $added->getDateTimeObject('created_at')->format('H.i') ?>
</div>