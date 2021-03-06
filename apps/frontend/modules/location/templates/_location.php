<?php use_javascript('locationShow'); ?>

<div class="locationMap" position="<?php echo $location->getLatitude(); ?>;<?php echo $location->getLongitude(); ?>">
    <div class="name">
        <a class="dashed" href=""><?php echo $location->getName(); ?></a>
    </div>
    <div class="address">
        <?php include_partial('address/row', array('address' => $location->getAddress())) ?>
    </div>
    <?php include_partial('collector/map') ?>
</div>