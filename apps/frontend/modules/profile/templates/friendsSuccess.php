<?php use_javascript('friendShow'); ?>
<?php use_stylesheet('friend'); ?>
<script type="text/javascript">
    app.csrf.friend = "<?php echo $csrf; ?>";
</script>

<div id="fiendsMy">
    <div class="requesters<?php echo $profile->getRequesters()->count() ? '' : ' empty'; ?>">
        <h2>Хотят дружить:</h2>
        <ul>
            <?php foreach ($profile->getRequesters() as $friend): ?>
                <li>
                    <?php include_partial('profile/listItem', array('profile' => $friend)); ?>
                </li>
            <?php endforeach; ?>
        </ul>
    </div>



    <div class="accepted<?php echo $profile->getFriends()->count() > 0 ? '' : ' empty'; ?>">
        <h2>Мои друзья:</h2>
        <ul>
            <?php foreach ($profile->getFriends() as $friend): ?>
                <li><?php include_partial('profile/picnick', array('profile' => $friend)); ?>
                    <?php if (!$sf_user->isAnonymous() && $profile == $sf_user->getProfile()): ?>
                        <?php echo link_to('-', 'profile/remove?id=' . $friend->getId(), array('class' => 'removeFriend', 'user' => $friend->getId(), 'title' => 'Удалить из друзей')); ?>        
                    <?php endif; ?>
                </li>
            <?php endforeach; ?>
        </ul>
    </div>
</div>