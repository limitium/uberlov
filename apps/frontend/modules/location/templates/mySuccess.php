<script type="text/javascript">
    app.csrf.wishlist = "<?php echo $csrf; ?>";
</script>
<?php use_javascript('wishes'); ?>

<div id="locationMy">
    <h4>Мои места:</h4>
    <ul>
        <?php foreach ($locations as $location): ?>
            <li>
                <?php echo link_to($location->getName(), 'location/show?id=' . $location->getId()); ?>
                <?php include_partial('profile/addBy', array('added' => $location)); ?>
                <?php include_partial('location/wish', array('location' => $location)); ?>
            </li>
        <?php endforeach; ?>
    </ul>
</div>
