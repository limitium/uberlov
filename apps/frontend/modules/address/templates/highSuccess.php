<div class="address">
    <?php echo link_to($high->getAreaLow()->getCountry()->getName(), 'address/country?id=' . $high->getAreaLow()->getCountry()->getId()); ?> &rarr; 
    <?php echo link_to($high->getAreaLow()->getName(), 'address/low?id=' . $high->getAreaLow()->getId()); ?> &rarr;
    <?php echo $high->getName(); ?>
</div>
<div>
    <ul>
        <?php foreach ($localities as $locality): ?>
            <li>
            <?php echo link_to($locality->getName(), 'address/locality?id=' . $locality->getId()); ?>
        </li>
        <?php endforeach; ?>
    </ul>
</div>