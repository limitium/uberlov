<?php use_javascript('friendShow'); ?>
<script type="text/javascript">
    app.csrf.friend = "<?php echo $csrf; ?>";
</script>

<div class="friends">
    <?php if (!$sf_user->isAnonymous() && !$profile->isFriend($sf_user->getProfile()) && $profile != $sf_user->getProfile()): ?>
        <?php echo link_to('Добавить в друзья', 'profile/add?id=' . $profile->getId(), array('class' => 'addFriend', 'user' => $profile->getId())); ?>        
    <?php endif; ?>

    <div class="accepted">
        Дружит с:
        <ul>
            <?php foreach ($profile->getFriends() as $friend): ?>
                <li><?php include_partial('profile/picnick', array('profile' => $friend)); ?>
                    <?php if (!$sf_user->isAnonymous() && $profile == $sf_user->getProfile()): ?>
                        <?php echo link_to('-', 'profile/remove?id=' . $friend->getId(), array('class' => 'removeFriend', 'user' => $friend->getId())); ?>        
                    <?php endif; ?>
                </li>
            <?php endforeach; ?>
        </ul>
    </div>
    <div class="accepters">
        Хочет дружить с:
        <ul>
            <?php foreach ($profile->getAccepters() as $friend): ?>
                <li><?php include_partial('profile/picnick', array('profile' => $friend)); ?>
                    <?php if (!$sf_user->isAnonymous() && $profile == $sf_user->getProfile()): ?>
                        <?php echo link_to('-', 'profile/remove?id=' . $friend->getId(), array('class' => 'removeFriend', 'user' => $friend->getId())); ?>        
                    <?php endif; ?>
                </li>
            <?php endforeach; ?>
        </ul>
    </div>
    <div class="requesters">
        Хотят дружить:
        <ul>
            <?php foreach ($profile->getRequesters() as $friend): ?>
                <li><?php include_partial('profile/picnick', array('profile' => $friend)); ?>
                    <?php if (!$sf_user->isAnonymous() && $profile == $sf_user->getProfile()): ?>
                        <?php echo link_to('+', 'profile/add?id=' . $friend->getId(), array('class' => 'addFriend', 'user' => $friend->getId())); ?>        
                    <?php endif; ?>
                </li>
            <?php endforeach; ?>
        </ul>
    </div>
</div>
