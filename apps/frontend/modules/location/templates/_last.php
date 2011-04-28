<div class="menu_block">
    <h4>Новые места:</h4>
    <ul>
        <?php foreach ($locations as $location): ?>
            <li>
                <h5>
                    <?php echo link_to($location->getName(), 'location/show?id=' . $location->getId()); ?>
                </h5>
                <span>
                    <?php include_partial('profile/addBy', array('added' => $location,'size'=>24)); ?>
                </span>
            </li>
        <?php endforeach; ?>
    </ul>
</div>
