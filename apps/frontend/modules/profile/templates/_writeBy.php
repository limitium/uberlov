<div class="createdBy">Написал<?php echo $written->getCreatedBy()->getSex() ? '' : 'а' ?> <?php echo link_to($written->getCreatedBy()->getNickName(), 'profile/show?id=' . $written->getCreatedBy()->getId()); ?>,
    <?php echo $written->getDateTimeObject('created_at')->format('d.m.Y') ?> <?php echo $written->getDateTimeObject('created_at')->format('H.i') ?>
</div>