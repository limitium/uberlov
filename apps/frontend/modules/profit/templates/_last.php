<div id="profitLast">
    <h4>Новые отчеты:</h4>
    <ul>
        <?php foreach ($profits as $profit): ?>
            <li>
            <?php echo link_to($profit->getName(), 'profit/show?id=' . $profit->getId()); ?> &rarr; <?php echo link_to($profit->getLocation()->getName(), 'location/show?id=' . $profit->getLocation()->getId()); ?>
            <span>Добавил<?php echo $profit->getCreatedBy()->getSex() ? '' : 'а' ?> <?php echo link_to($profit->getCreatedBy()->getNickName(), 'profile/show?id=' . $profit->getCreatedBy()->getId()); ?> <?php echo $profit->getDateTimeObject('created_at')->format('d.m.Y'); ?></span>
        </li>
        <?php endforeach; ?>
    </ul>
</div>
