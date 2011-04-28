<div class="menu_block">
    <h4>Ближайшие события:</h4>
    <ul>
        <?php foreach ($events as $event): ?>
            <li>
                <h5>
                    <?php echo link_to($event->getName(), 'event/show?id=' . $event->getId()); ?> &rarr; <?php echo link_to($event->getLocation()->getName(), 'location/show?id=' . $event->getLocation()->getId()); ?>
                </h5>
                <span>
                    <?php include_partial('profile/addBy', array('added' => $event,'size'=>24)); ?>
                </span>
            </li>
        <?php endforeach; ?>
    </ul>
</div>
