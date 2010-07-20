<div class="locationLast">
    <h4>Новые места:</h4>
    <ul>
        <?php foreach ($locations as $location): ?>
            <li>
            <?php echo link_to($location->getName(), 'location/show?id=' . $location->getId()); ?>
            <span>Добавил<?php echo $location->getCreatedBy()->getSex() ? '' : 'а' ?> <?php echo link_to($location->getCreatedBy()->getNickName(), 'profile/show?id=' . $location->getCreatedBy()->getId()); ?> <?php echo $location->getDateTimeObject('created_at')->format('d.m.Y'); ?></span>
        </li>
        <?php endforeach; ?>
    </ul>
</div>
