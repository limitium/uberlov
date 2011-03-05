<div id="profitContainer">
    <?php foreach ($profits as $profit): ?>
        <?php include_partial('profit/briefLocation', array('profit' => $profit)); ?>
    <?php endforeach; ?>
    <?php echo link_to('Написать', 'profit/new?location=' . $location->getId()); ?>
</div>