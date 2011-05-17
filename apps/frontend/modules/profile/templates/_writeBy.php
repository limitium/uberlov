<div class="createdBy">Написал<?php echo $written->getCreatedBy()->getSex() ? '' : 'а' ?>  <?php include_partial('profile/picnick', array('profile' => $written->getCreatedBy(),'size'=>isset($size)?$size:32)); ?>,
    <?php echo $written->getDateTimeObject('created_at')->format('d.m.Y') ?> в <?php echo $written->getDateTimeObject('created_at')->format('H.i') ?>
</div>