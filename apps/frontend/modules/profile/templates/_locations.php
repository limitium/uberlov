<div class="locationList">
    <ul>
        <?php foreach ($locations as $location): ?>
            <li>
            <?php echo link_to($location->getName(), 'location/show?id=' . $location->getId()); ?>
            <?php include_partial('profile/addBy', array('added' => $location)); ?> [<?php echo $location->getRating(); ?>]
        </li>
        <?php endforeach; ?>
    </ul>
</div>