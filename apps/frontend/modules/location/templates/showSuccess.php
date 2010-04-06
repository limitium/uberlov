<?php include_partial('vote/vote', array('obj' => $location,'objType' => 'location')); ?>

<p class="loc_name"><?php echo $location->getName() ?></p>
<div class="loc_discr"><?php echo $location->getDescription() ?>
</div>
<div class="bottom">&nbsp;
    <div class="comments"><p class="comments_count"> <?php echo $comments; ?></p></div>
    <div class="export"><?php echo link_to('Подробнее','location/details?id='.$location->getId()) ?></div>
</div>