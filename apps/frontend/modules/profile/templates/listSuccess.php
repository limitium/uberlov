<?php use_javascript('voting'); ?>
<?php use_javascript('friendShow'); ?>
<?php use_stylesheet('friend'); ?>
<script type="text/javascript">
    csrf.friend = "<?php echo $csrf; ?>";
</script>

<?php $people = $pager->execute(); ?>
<?php foreach ($people as $user): ?>
    <?php $profile = $user->getProfile(); ?>
    <?php include_partial('profile/listItem', array('profile' => $profile, 'friends' => $friends)); ?>
<?php endforeach; ?>
<?php $pager->display(); ?>
