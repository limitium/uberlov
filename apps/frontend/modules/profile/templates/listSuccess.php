<?php use_javascript('voting'); ?>
<?php $people = $pager->execute(); ?>
    <?php foreach ($people as $user): ?>
        <?php $profile = $user->getProfile(); ?>
        <div class="user_list">
            <div>
                <?php include_partial('vote/vote', array('obj' => $profile, 'objType' => 'Profile')); ?>
                <a class="userpic" href="<?php echo url_for('profile/show?id=' . $profile->getId()); ?>"><?php echo image_tag($profile->getUserpic() ? '/images/userpic/' . $profile->getUserpic() : 'http://www.gravatar.com/avatar/' . md5($profile->getEmail()) . '?d=wavatar&s=48', array('width' => 48, 'height' => 48)); ?><b class="s48"></b></a>
            </div>
            <div class="name">
                <?php echo link_to($profile->getNickName(), 'profile/show?id=' . $profile->getId()); ?>
                <?php echo link_to($profile->getFirstName() . ' ' . $profile->getLastName(), 'profile/show?id=' . $profile->getId()); ?>
            </div>
            <div class="info">
                <span><?php echo'Обнинск' ?></span>
            </div>
            <div class="actions">
                <?php echo link_to('убрать', 'profile/remove?id=' . $profile->getId(), array('class' => 'removeFriend', 'user' => $profile->getId())); ?>        
                <?php echo link_to('написать инбокс', 'profile/remove?id=' . $profile->getId(), array('class' => 'removeFriend', 'user' => $profile->getId())); ?>        
            </div>
        </div>
    <?php endforeach; ?>
<?php $pager->display(); ?>
