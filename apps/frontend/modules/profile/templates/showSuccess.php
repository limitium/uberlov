<?php use_helper('Countable'); ?>
<div class="profile">
    <div class="personal">
        <div class="userpic">
            <img alt="" src="<?php echo $profile->getUserpic() ? $profile->getUserpic() : '/images/userpic/' . ($profile->getSex() ? 'male' : 'female') . '.png' ?>" />
        </div>
        <div class="info">
            <p><?php echo $profile->getFirstName() ?>
                <?php echo $profile->getNickName() ? '[' . $profile->getNickName() . ']' : '' ?>
                <?php echo $profile->getLastName() ?>
                <?php if ($sf_user->getProfile() == $profile): ?>
                    <a href="<?php echo url_for('profile/edit?id=' . $profile->getId()) ?>"><img alt="" src="/images/ui/edit.png" /></a>
                <?php endif; ?>
                </p>
                <p>Родил<?php echo $profile->getSex() ? 'ся' : 'ась' ?>: <?php echo $profile->getDateTimeObject('birth_date')->format('d.m.Y') ?></p>
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
    <?php include_partial('locations', array('locations' => $locations)); ?>
    <?php elseif ($view == 'profits'): ?>
    <?php include_partial('profits', array('profits' => $profits)); ?>
    <?php else: ?>
    <?php include_partial('achives', array('profile' => $profile, 'best' => $best, 'comments' => $comments, 'profits' => $profits, 'locations' => $locations, 'total' => $total)); ?>
    <?php endif; ?>
</div>