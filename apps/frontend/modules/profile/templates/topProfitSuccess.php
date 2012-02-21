<?php use_javascript('voting'); ?>
<?php use_javascript('friendShow'); ?>
<?php use_stylesheet('friend'); ?>
<script type="text/javascript">
    csrf.friend = "<?php echo $csrf; ?>";
</script>
<table>
    <?php foreach ($people as $data): ?>
        <tr>
            <td class="profile_top_weight"><?php echo $data->weight; ?> кг.</td>
            <td class="profile_top_profile">
                <?php include_partial('profile/listItem', array('profile' => $data->profile, 'friends' => $friends)); ?>
            </td>
        </tr>
    <?php endforeach; ?>
</table>