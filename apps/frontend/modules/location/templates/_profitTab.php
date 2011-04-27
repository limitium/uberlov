<div id="profitContainer">
    <?php foreach ($profits as $profit): ?>
        <?php include_partial('profit/briefLocation', array('profit' => $profit)); ?>
    <?php endforeach; ?>
    <a href="<?php echo url_for('profit/new?location=' . $location->getId()); ?>" class="button_01">
            <span class="border_l">
                <span class="border_r">
                    <span class="btn_bg">НАПИСАТЬ</span>
                </span>
            </span>
        </a>
</div>