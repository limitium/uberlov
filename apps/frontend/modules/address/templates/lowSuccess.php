<?php slot('title', "Рыбалка " . $low->getName()) ?>
<div class="address">
    <?php echo link_to($low->getCountry()->getName(), '@address_country?id=' . $low->getCountry()->getId()); ?> &rarr;
    <?php echo $low->getName(); ?>
</div>
<?php $locations = $pager->execute(); ?>
    <?php include_partial('location/location_list', array('locations' => $locations)); ?>
    <div class="addressParts">
        <ul>
        <?php foreach ($highs as $high): ?>
            <li>
            <?php echo link_to($high->getName(), '@address_high?id=' . $high->getId()); ?>
        </li>
        <?php endforeach; ?>
    </ul>
</div>
<?php $pager->display(); ?>