<?php use_javascript('friendShow'); ?>
<script type="text/javascript">
    app.csrf.friend = "<?php echo $csrf; ?>";
</script>

<div class="friends">
    <?php if (!$sf_user->isAnonymous() && !$profile->isFriend($sf_user->getProfile()) && $profile != $sf_user->getProfile()): ?>
        <?php echo link_to('Добавить в друзья', 'profile/add?id=' . $profile->getId(), array('class' => 'addFriend self', 'user' => $profile->getId())); ?>        
    <?php endif; ?>

    <div class="accepted<?php echo $profile->getFriends()->count() > 0 ? '' : ' empty'; ?>">
        Дружит с:
        <ul>
            <?php foreach ($profile->getFriends() as $friend): ?>
                <li><?php include_partial('profile/picnick', array('profile' => $friend)); ?>
                    <?php if (false && !$sf_user->isAnonymous() && $profile == $sf_user->getProfile()): ?>
                        <?php echo link_to('-', 'profile/remove?id=' . $friend->getId(), array('class' => 'removeFriend', 'user' => $friend->getId(), 'title' => 'Удалить из друзей')); ?>        
                    <?php endif; ?>
                </li>
            <?php endforeach; ?>
        </ul>
    </div>
    <div class="accepters<?php echo $profile->getAccepters()->count() ? '' : ' empty'; ?>">
        Хочет дружить с:
        <ul>
            <?php foreach ($profile->getAccepters() as $friend): ?>
                <li><?php include_partial('profile/picnick', array('profile' => $friend)); ?>
                    <?php if (false && !$sf_user->isAnonymous() && $profile == $sf_user->getProfile()): ?>
                        <?php echo link_to('-', 'profile/remove?id=' . $friend->getId(), array('class' => 'removeFriend', 'user' => $friend->getId(), 'title' => 'Удалить хотелку')); ?>        
                    <?php endif; ?>
                </li>
            <?php endforeach; ?>
        </ul>
    </div>
    <div class="requesters<?php echo $profile->getRequesters()->count() ? '' : ' empty'; ?>">
        Хотят дружить:
        <ul>
            <?php foreach ($profile->getRequesters() as $friend): ?>
                <li><?php include_partial('profile/picnick', array('profile' => $friend)); ?>
                    <?php if (false && !$sf_user->isAnonymous() && $profile == $sf_user->getProfile()): ?>
                        <?php echo link_to('+', 'profile/add?id=' . $friend->getId(), array('class' => 'addFriend', 'user' => $friend->getId(), 'title' => 'Принять дружбу')); ?>        
                        <?php echo link_to('-', 'profile/remove?id=' . $friend->getId(), array('class' => 'removeFriend', 'user' => $friend->getId(), 'title' => 'Удалить хотелку')); ?>        
                    <?php endif; ?>
                </li>
            <?php endforeach; ?>
        </ul>
    </div>
</div>
