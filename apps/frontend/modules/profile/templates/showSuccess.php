<?php use_helper('Countable'); ?>
<?php use_helper('Text'); ?>
<div class="profile">
    <div class="personal">
        <div class="info">
            <?php include_partial('vote/vote', array('obj' => $profile, 'objType' => 'Profile')); ?>
            <div class="userpic">
                <?php echo image_tag($profile->getUserpic() ? '/images/userpic/' . $profile->getUserpic() : 'http://www.gravatar.com/avatar/'.md5($profile->getEmail()).'?d=wavatar&s=32') ?>
            </div>
            <p><?php echo $profile->getFirstName() ?>
                <?php echo $profile->getNickName() ?>
                <?php echo $profile->getLastName() ?>
                <?php if ($sf_user->getProfile() == $profile): ?>
                    <?php echo link_to(image_tag('/images/ui/edit.png'), 'profile/edit?id=' . $profile->getId()) ?>
                <?php endif; ?>
            </p>
            <p>Родил<?php echo $profile->getSex() ? 'ся' : 'ась' ?>: <?php echo $profile->getDateTimeObject('birth_date')->format('d.m.Y') ?></p>
            <p><?php echo simple_format_text($profile->getDescription()); ?></p>
        </div>
    </div>

    <div class="tabPanel">
        <ul>
            <li><?php echo link_to('<span href="#" id="tabProfile"' . ($view == 'profile' ? 'class="selected"' : '') . '>Профаил</span>', 'profile/show?id=' . $profile->getId()); ?></li>
            <li><?php echo link_to('<span href="#" id="tabComments"' . ($view == 'comments' ? 'class="selected"' : '') . '>Комментарии (' . sizeof($comments) . ')</span>', 'profile/show?id=' . $profile->getId() . '&view=comments'); ?></li>
            <li><?php echo link_to('<span href="#" id="tabLocations"' . ($view == 'locations' ? 'class="selected"' : '') . '>Места (' . sizeof($locations) . ')</span>', 'profile/show?id=' . $profile->getId() . '&view=locations'); ?></li>
            <li><?php echo link_to('<span href="#" id="tabProfits"' . ($view == 'profits' ? 'class="selected"' : '') . '>Отчеты (' . sizeof($profits) . ')</span>', 'profile/show?id=' . $profile->getId() . '&view=profits'); ?></li>
        </ul>
    </div>
    <?php if ($view == 'comments'): ?>
        <?php include_partial('comments', array('comments' => $comments)); ?>
    <?php elseif ($view == 'locations'): ?>
        <?php include_partial('location/location_list', array('locations' => $locations)); ?>
    <?php elseif ($view == 'profits'): ?>
        <?php include_partial('profits', array('profits' => $profits)); ?>
    <?php else: ?>
        <?php include_partial('achives', array('profile' => $profile, 'best' => $best, 'comments' => $comments, 'profits' => $profits, 'locations' => $locations, 'total' => $total, 'csrf' => $csrf)); ?>
    <?php endif; ?>
</div>