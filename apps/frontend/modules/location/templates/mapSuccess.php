<?php use_javascript('voting'); ?>
<?php include_partial('vote/vote', array('obj' => $location)); ?>
<p class="locaction name"><?php echo $location->getName() ?></p>
<div class="locaction description"><?php echo $location->getDescription() ?>
</div>
<div class="bottom">&nbsp;
    <div class="comments"><p class="comments_count"> <?php echo $comments; ?></p></div>
    <?php echo link_to('Подробнее', 'location/show?id=' . $location->getId()) ?>
    <hr />
    <div class="events">
        <?php $events = $location->getFishEvent(); ?>
        <ul>
            <?php foreach ($events as $event) : ?>
                <li><?php echo $event->getDateTimeObject('date')->format('d.m.Y'); ?> - <?php echo link_to($event->getName(), 'event/show?id=' . $event->getId()) ?></li>
            <?php endforeach; ?>
        </ul>
    </div>
</div>