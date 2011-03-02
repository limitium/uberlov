<div class="createdBy">Добавил<?php echo $added->getCreatedBy()->getSex() ? '' : 'а' ?> <?php echo link_to($added->getCreatedBy()->getNickName(), 'profile/show?id=' . $added->getCreatedBy()->getId()); ?>,
    <?php echo $added->getDateTimeObject('created_at')->format('d.m.Y') ?> в <?php echo $added->getDateTimeObject('created_at')->format('H.i') ?>
</div>