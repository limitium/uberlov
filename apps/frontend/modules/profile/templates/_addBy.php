<div class="createdBy">Добавил<?php echo $add->getCreatedBy()->getSex() ? '' : 'а' ?> <?php echo link_to($add->getCreatedBy()->getNickName(), 'profile/show?id=' . $add->getCreatedBy()->getId()); ?>,
    <?php echo $add->getDateTimeObject('created_at')->format('d.m.Y') ?> <?php echo $add->getDateTimeObject('created_at')->format('H.i') ?>
</div>