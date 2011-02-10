<div id="profitLast">
    <h4>Новые отчеты:</h4>
    <ul>
        <?php foreach ($profits as $profit): ?>
            <li>
            <?php echo link_to($profit->getName(), 'profit/show?id=' . $profit->getId()); ?> &rarr; <?php echo link_to($profit->getLocation()->getName(), 'location/show?id=' . $profit->getLocation()->getId()); ?>
            <span><?php include_partial('profile/addBy', array('added' => $profit)); ?></span>
        </li>
        <?php endforeach; ?>
    </ul>
</div>
