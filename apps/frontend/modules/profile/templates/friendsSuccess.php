<?php use_javascript('friendShow'); ?>
<?php use_stylesheet('friend'); ?>
<script type="text/javascript">
    app.csrf.friend = "<?php echo $csrf; ?>";
</script>

<div class="friends">
    <div class="requesters<?php echo $profile->getRequesters()->count() ? '' : ' empty'; ?>">
        <h2>Хотят дружить:</h2>
        <ul>
            <?php foreach ($profile->getRequesters() as $friend): ?>
                <li>
                    <?php include_partial('profile/listItem', array('profile' => $friend,'links'=>array('+','-'))); ?>
                </li>
            <?php endforeach; ?>
        </ul>
    </div>



    <div class="accepted<?php echo $profile->getFriends()->count() > 0 ? '' : ' empty'; ?>">
        <h2>Мои друзья:</h2>
        <ul>
            <?php foreach ($profile->getFriends() as $friend): ?>
                <li>
                    <?php include_partial('profile/listItem', array('profile' => $friend,'links'=>array('-'))); ?>
                </li>
            <?php endforeach; ?>
        </ul>
    </div>
</div>