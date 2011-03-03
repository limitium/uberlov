<div class="eventList">
    <h2>Ближайшие события</h2>
    <?php if ($events->count()): ?>
        <ul>
            <?php foreach ($events as $event): ?>
                <li>
                    <?php echo $event->getDateTimeObject('date')->format('d.m.Y') ?>
                    <?php echo link_to($event->getName(), 'event/show?id=' . $event->getId()); ?>
                    на
                    <?php echo link_to($event->getLocation()->getName(), 'location/show?id=' . $event->getLocation()->getId()); ?>
                    <?php //include_partial('profile/addBy', array('added' => $event)); ?>
                </li>
            <?php endforeach; ?>
        </ul>
    <?php else: ?>
        Событий нет.
    <?php endif; ?>
</div>