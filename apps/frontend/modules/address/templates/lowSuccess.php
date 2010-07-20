<div class="address">
    <?php echo link_to($low->getCountry()->getName(), 'address/country?id=' . $low->getCountry()->getId()); ?> &rarr;
    <?php echo $low->getName(); ?>
</div>
<div>
    <ul>
        <?php foreach ($highs as $high): ?>
            <li>
            <?php echo link_to($high->getName(), 'address/high?id=' . $high->getId()); ?>
        </li>
        <?php endforeach; ?>
    </ul>
</div>