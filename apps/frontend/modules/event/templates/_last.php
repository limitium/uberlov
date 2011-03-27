<div id="eventLast">
    <h4>Ближайщие события:</h4>
    <ul>
        <?php foreach ($events as $event): ?>
            <li>
            <?php echo link_to($event->getName(), 'event/show?id=' . $event->getId()); ?> &rarr; <?php echo link_to($event->getLocation()->getName(), 'location/show?id=' . $event->getLocation()->getId()); ?>
            <span><?php include_partial('profile/addBy', array('added' => $event)); ?></span>
        </li>
        <?php endforeach; ?>
    </ul>
</div>
