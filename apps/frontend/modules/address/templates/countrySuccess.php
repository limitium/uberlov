<div class="address">
    <?php echo $country->getName(); ?>
</div>
<div>
    <ul>
        <?php foreach ($lows as $low): ?>
            <li>
            <?php echo link_to($low->getName(), 'address/low?id=' . $low->getId()); ?>
        </li>
        <?php endforeach; ?>
    </ul>
</div>