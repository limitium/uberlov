<?php if(!$sf_user->isAnonymous()): ?>
<?php use_javascript('markerModule'); ?>
<?php use_javascript('eventModule'); ?>
<?php use_javascript('profitModule'); ?>
<?php use_javascript('voting'); ?>
<?php endif; ?>

<?php use_javascript('fullMapModule'); ?>
<?php include_partial('map') ?>
<script type="text/javascript">
    user_ip = "<?php echo $ip; ?>";
</script>
