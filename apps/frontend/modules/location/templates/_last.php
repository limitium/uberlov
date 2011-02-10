<div id="locationLast">
    <h4>Новые места:</h4>
    <ul>
        <?php foreach ($locations as $location): ?>
            <li>
            <?php echo link_to($location->getName(), 'location/show?id=' . $location->getId()); ?>
            <span><?php include_partial('profile/addBy', array('added' => $location)); ?></span>
        </li>
        <?php endforeach; ?>
    </ul>
</div>
