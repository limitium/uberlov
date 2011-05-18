<div class="menu_block">
    <h4>Ближайшие события:</h4>
    <ul>
        <?php foreach ($events as $event): ?>
            <li>
                <h5>
                    <?php echo $event->getDateTimeObject('date')->format('d.m.Y') ?> <?php echo link_to($event->getName(), 'event/show?id=' . $event->getId()); ?>
                </h5>
                <span>
                    <?php include_partial('profile/addBy', array('added' => $event,'size'=>24)); ?>
                </span>
            </li>
        <?php endforeach; ?>
    </ul>
</div>
