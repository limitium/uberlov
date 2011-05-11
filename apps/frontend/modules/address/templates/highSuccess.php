<div class="address">
    <?php echo link_to($high->getAreaLow()->getCountry()->getName(), '@address_country?id=' . $high->getAreaLow()->getCountry()->getId()); ?> &rarr; 
    <?php echo link_to($high->getAreaLow()->getName(), '@address_low?id=' . $high->getAreaLow()->getId()); ?> &rarr;
    <?php echo $high->getName(); ?>
</div>
<?php $locations = $pager->execute(); ?>
<?php include_partial('location/location_list', array('locations' => $locations)); ?>
<div class="addressParts">
    <ul>
        <?php foreach ($localities as $locality): ?>
            <li>
            <?php echo link_to($locality->getName(), '@address_locality?id=' . $locality->getId()); ?>
        </li>
        <?php endforeach; ?>
    </ul>
</div>
<?php $pager->display(); ?>