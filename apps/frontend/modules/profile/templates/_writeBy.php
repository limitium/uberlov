<span class="createdBy">
<?php include_partial('profile/picnick', array('profile' => $written->getCreatedBy(),'size'=>isset($size)?$size:32)); ?>
<span class="when"><?php echo $written->getDateTimeObject('created_at')->format('d.m.Y') ?> в <?php echo $written->getDateTimeObject('created_at')->format('H.i') ?></span>
</span>