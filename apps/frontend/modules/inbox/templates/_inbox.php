<div class="inbox">
    <div class="message">
        <h4><?php echo link_to($inbox->getName(), 'inbox/show?id=' . $inbox->getId()); ?></h4>
        <?php echo $inbox->getMessage(); ?>
    </div>
    <div class="meta">
        <div>
            <a href="" id="goToReply">□</a> Написал<?php echo $inbox->getCreatedBy()->getSex() ? '' : 'а' ?> <?php echo link_to($inbox->getCreatedBy()->getNickName(), 'profile/show?id=' . $inbox->getCreatedBy()->getId()); ?>,
            <?php echo $inbox->getDateTimeObject('created_at')->format('d.m.Y'); ?>
        </div>
    </div>
</div>