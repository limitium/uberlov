<div id="profitContainer">
    <?php foreach ($profits as $profit): ?>
    <?php include_partial('profit/briefList', array('profit' => $profit)); ?>
    <?php endforeach; ?>
</div>