<div class="menu_block">
    <h4>Новые отчеты:</h4>
    <ul>
        <?php foreach ($profits as $profit): ?>
            <li>
                <h5>
                    <?php echo link_to($profit->getName(), 'profit/show?id=' . $profit->getId()); ?> &rarr; <?php echo link_to($profit->getLocation()->getName(), 'location/show?id=' . $profit->getLocation()->getId()); ?>
                </h5>
                <span>
                    <?php include_partial('profile/addBy', array('added' => $profit,'size'=>24)); ?>
                </span>
            </li>
        <?php endforeach; ?>
    </ul>
</div>
