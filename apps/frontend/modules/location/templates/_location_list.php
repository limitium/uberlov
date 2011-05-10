<div class="locationList">
    <ul>
        <?php foreach ($locations as $location): ?>
            <li>
                <h4><?php echo link_to($location->getName(), 'location/show?id=' . $location->getId()); ?></h4>                
                <div class="meta"><?php include_partial('profile/addBy', array('added' => $location)); ?></div>
            </li>
        <?php endforeach; ?>
    </ul>
</div>