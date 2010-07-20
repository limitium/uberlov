<?php use_javascript('voting');  ?>
<?php include_partial('vote/vote', array('obj' => $location)); ?>
<p class="locaction name"><?php echo $location->getName() ?></p>
<div class="locaction description"><?php echo $location->getDescription() ?>
</div>
<div class="bottom">&nbsp;
    <div class="comments"><p class="comments_count"> <?php echo $comments; ?></p></div>
    <div class="export"><?php echo link_to('Подробнее','location/show?id='.$location->getId()) ?></div>
</div>