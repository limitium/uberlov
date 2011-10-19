<?php use_helper('Text'); ?>
<?php use_javascript('voting'); ?>
<?php $events = $pager->execute(); ?>
<div class="eventList">
    <h2>Прошедние события</h2>

    <?php if (count($events)) : ?>
        <ul>
        <?php foreach ($events as $event): ?>
        <?php include_partial('event/listItem', array('event' => $event)); ?>
        <?php endforeach; ?>
        </ul>
    <?php else: ?>
                Событий не было.
    <?php endif; ?>
    <?php $pager->display(); ?>
</div>