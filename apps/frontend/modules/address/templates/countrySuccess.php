<?php slot('title', "Рыбалка " . $country->getName()) ?>
<div class="address">
    <?php echo $country->getName(); ?>
</div>
<?php $locations = $pager->execute(); ?>
<?php include_partial('location/location_list', array('locations' => $locations)); ?>
<div class="addressParts">
    <ul>    
        <?php foreach ($lows as $low): ?>
            <li>    
                <?php echo link_to($low->getName(), '@address_low?id=' . $low->getId()); ?>
            </li>
        <?php endforeach; ?>
    </ul>    
</div>
<?php $pager->display(); ?>