<div class="address">
    <?php echo link_to($locality->getAreaHigh()->getAreaLow()->getCountry()->getName(), 'address/country?id=' . $locality->getAreaHigh()->getAreaLow()->getCountry()->getId()); ?> &rarr; 
    <?php echo link_to($locality->getAreaHigh()->getAreaLow()->getName(), 'address/low?id=' . $locality->getAreaHigh()->getAreaLow()->getId()); ?> &rarr;
    <?php echo link_to($locality->getAreaHigh()->getName(), 'address/high?id=' . $locality->getAreaHigh()->getId()); ?> &rarr;
    <?php echo $locality->getName(); ?>
</div>
<div class="locationList">
    <ul>
        <?php foreach ($locations as $location): ?>
            <li>
            <?php echo link_to($location->getName(), 'location/show?id=' . $location->getId()); ?>
            Добавил<?php echo $location->getCreatedBy()->getSex() ? '' : 'а' ?> <?php echo link_to($location->getCreatedBy()->getNickName(), 'profile/show?id=' . $location->getCreatedBy()->getId()); ?>,
            <?php echo $location->getDateTimeObject('created_at')->format('d.m.Y'); ?> [<?php echo $location->getRating(); ?>]
        </li>
        <?php endforeach; ?>
    </ul>
</div>