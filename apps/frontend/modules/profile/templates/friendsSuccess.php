<?php use_javascript('friendShow'); ?>
<?php use_stylesheet('friend'); ?>
<script type="text/javascript">
    csrf.friend = "<?php echo $csrf; ?>";
</script>

<?php if (!$profile->getRequesters()->count() && !$profile->getFriends()->count()): ?>
    <h2>Вы тут пока одиноки.</h2>
<?php endif; ?>
<div class="friends">
    <div class="requesters<?php echo $profile->getRequesters()->count() ? '' : ' empty'; ?>">
        <h2>Хотят дружить:</h2>
        <ul>
            <?php foreach ($profile->getRequesters() as $friend): ?>
                <li>
                    <?php include_partial('profile/listItem', array('profile' => $friend, 'add' => 1, 'remove' => 1)); ?>
                </li>
            <?php endforeach; ?>
        </ul>
    </div>



    <div class="accepted<?php echo $profile->getFriends()->count() ? '' : ' empty'; ?>">
        <h2>Мои друзья:</h2>
        <ul>
            <?php foreach ($profile->getFriends() as $friend): ?>
                <li>
                    <?php include_partial('profile/listItem', array('profile' => $friend, 'remove' => 1)); ?>
                </li>
            <?php endforeach; ?>
        </ul>
    </div>
</div>