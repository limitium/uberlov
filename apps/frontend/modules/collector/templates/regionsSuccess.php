<h4>Все регионы:</h4>
<ul class="contries">
    <?php foreach ($countries as $country): ?>
        <?php $areasLow = $country->getAreaLow();
        if ($areasLow->count()): ?>
            <li>
                <h3><?php echo $country->getName(); ?></h3>
                <ul class="regions">
                    <?php foreach ($areasLow as $areaLow): ?>
                        <li>
                            <?php echo link_to($areaLow->getName(),'address/low?id='.$areaLow->getId()); ?>
                        </li>
                    <?php endforeach; ?>
                </ul>
            </li>
        <?php endif; ?>
    <?php endforeach; ?>
</ul>
