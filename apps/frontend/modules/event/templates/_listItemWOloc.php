<?php use_helper('XssSafe'); ?>
<div class="eventListItem">
    <h3>
        <?php echo $event->getDateTimeObject('date')->format('d.m.Y') ?> <?php echo link_to($event->getName(), 'event/show?id=' . $event->getId()); ?>
    </h3>
    <div class="meta">
        <?php include_partial('vote/vote', array('obj' => $event)); ?>
        <?php include_partial('profile/addBy', array('added' => $event)); ?>
        <?php include_partial('comment/meta', array('commented' => $event, 'toward' => 'event')); ?>
    </div>
</div>