<?php use_javascript('friendShow'); ?>
<script type="text/javascript">
    app.csrf.friend = "<?php echo $csrf; ?>";
</script>

<div id="friends">
    <?php if (!$sf_user->isAnonymous() && !$profile->isFriend($sf_user->getProfile()) && $profile != $sf_user->getProfile()): ?>
        <?php echo link_to('Добавить в друзья', 'profile/add?id=' . $profile->getId(), array('class' => 'addFriend', 'user' => $profile->getId())); ?>        
    <?php endif; ?>

    <div id="accepted">
        Дружит с:
        <ul>
            <?php foreach ($profile->getFriends() as $friend): ?>
                <li><?php echo link_to($friend->getNickName(), 'profile/show?id=' . $friend->getId()); ?>
                    <?php if (!$sf_user->isAnonymous() && $profile == $sf_user->getProfile()): ?>
                        <?php echo link_to('-', 'profile/remove?id=' . $friend->getId(), array('class' => 'removeFriend', 'user' => $friend->getId())); ?>        
                    <?php endif; ?>
                </li>
            <?php endforeach; ?>
        </ul>
    </div>
    <div id="accepters">
        Хочет дружить с:
        <ul>
            <?php foreach ($profile->getAccepters() as $friend): ?>
                <li><?php echo link_to($friend->getNickName(), 'profile/show?id=' . $friend->getId()); ?>
                    <?php if (!$sf_user->isAnonymous() && $profile == $sf_user->getProfile()): ?>
                        <?php echo link_to('-', 'profile/remove?id=' . $friend->getId(), array('class' => 'removeFriend', 'user' => $friend->getId())); ?>        
                    <?php endif; ?>
                </li>
            <?php endforeach; ?>
        </ul>
    </div>
    <div id="requesters">
        Хотят дружить:
        <ul>
            <?php foreach ($profile->getRequesters() as $friend): ?>
                <li><?php echo link_to($friend->getNickName(), 'profile/show?id=' . $friend->getId()); ?>
                    <?php if (!$sf_user->isAnonymous() && $profile == $sf_user->getProfile()): ?>
                        <?php echo link_to('+', 'profile/add?id=' . $friend->getId(), array('class' => 'addFriend', 'user' => $friend->getId())); ?>        
                    <?php endif; ?>
                </li>
            <?php endforeach; ?>
        </ul>
    </div>
</div>
