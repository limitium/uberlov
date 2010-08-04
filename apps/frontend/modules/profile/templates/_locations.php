<div class="locationList">
    <ul>
        <?php foreach ($locations as $location): ?>
            <li>
            <?php echo link_to($location->getName(), 'location/show?id=' . $location->getId()); ?>
            Добавил<?php echo $location->getCreatedBy()->getSex() ? '' : 'а' ?> <?php echo link_to($location->getCreatedBy()->getNickName(), 'profile/show?id=' . $location->getCreatedBy()->getId()); ?>,
            <?php echo $location->getDateTimeObject('created_at')->format('d.m.Y'); ?> [<?php echo $location->getRating(); ?>]
        </li>
        <?php endforeach; ?>
    </ul>
</div>