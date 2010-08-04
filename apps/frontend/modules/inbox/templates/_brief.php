<div class="inbox">
    <div class="message">
        <?php echo link_to($inbox->getName(), 'inbox/show?id=' . $inbox->getId()); ?>
        <p><?php echo $inbox->getMessage(); ?></p>
    </div>
    <div class="meta">
        <div>
            <a href="" id="goToReply">□</a> Написал<?php echo $inbox->getCreatedBy()->getSex() ? '' : 'а' ?> <?php echo link_to($inbox->getCreatedBy()->getNickName(), 'profile/show?id=' . $inbox->getCreatedBy()->getId()); ?>,
            <?php echo $inbox->getDateTimeObject('created_at')->format('d.m.Y'); ?>
            | <?php echo link_to('комментариев ' . ($inbox->getCommentInbox()->count() - 1), 'inbox/show?id=' . $inbox->getId()); ?> |
            <a href="" class="inboxDelete" inbox="<?php echo $inbox->getId(); ?>">Удалить инбокс</a>
        </div>
    </div>
</div>