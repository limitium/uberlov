<div class="address">
    <?php echo link_to($locality->getAreaHigh()->getAreaLow()->getCountry()->getName(), 'address/country?id=' . $locality->getAreaHigh()->getAreaLow()->getCountry()->getId()); ?> &rarr; 
    <?php echo link_to($locality->getAreaHigh()->getAreaLow()->getName(), 'address/low?id=' . $locality->getAreaHigh()->getAreaLow()->getId()); ?> &rarr;
    <?php echo link_to($locality->getAreaHigh()->getName(), 'address/high?id=' . $locality->getAreaHigh()->getId()); ?> &rarr;
    <?php echo $locality->getName(); ?>
</div>
<?php $locations = $pager->execute(); ?>
<?php include_partial('location/location_list', array('locations' => $locations)); ?>
<?php $pager->display(); ?>