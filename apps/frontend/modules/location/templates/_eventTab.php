<div id="eventContainer">
    <?php foreach ($events as $event): ?>
        <?php include_partial('event/listItemWOloc', array('event' => $event)); ?>
    <?php endforeach; ?>
    <?php echo link_to('Добавить', 'event/new?location=' . $location->getId()); ?>
</div>