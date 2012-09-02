<?php echo link_to($address->getCountry()->getName(), 'address/country?id=' . $address->getCountry()->getId()); ?>
<?php
$low = $address->getAreaLow();
if ($low && !$low->isNew()): ?>
 →  <?php echo link_to($low->getName(), 'address/low?id=' . $low->getId()); ?>
<?php endif; ?>
<?php
$high = $address->getAreaHigh();
if ($high && !$high->isNew()):?>
 → <?php echo link_to($high->getName(), 'address/high?id=' . $high->getId()); ?>
<?php endif; ?>
<?php
$locality = $address->getLocality();
if ($locality && !$locality->isNew()): ?>
 → <?php echo link_to($locality->getName(), 'address/locality?id=' . $locality->getId()); ?>
<?php endif; ?>