<div id="profitContainer">
    <?php foreach ($profits as $profit): ?>
    <?php include_partial('profit/brief', array('profit' => $profit)); ?>
    <?php endforeach; ?>
</div>