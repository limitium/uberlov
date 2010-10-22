<div class="inbox">
    <div class="message">
        <?php echo link_to($inbox->getName(), 'inbox/show?id=' . $inbox->getId()); ?>
        <p><?php echo $inbox->getMessage(); ?></p>
    </div>
    <div class="meta">
        <div>
            <a href="" id="goToReply">□</a> <?php include_partial('profile/writeBy', array('written' => $inbox)); ?>
            | <?php echo link_to('комментариев ' . ($inbox->getCommentInbox()->count() - 1), 'inbox/show?id=' . $inbox->getId()); ?> |
            <a href="" class="inboxDelete" inbox="<?php echo $inbox->getId(); ?>">Удалить инбокс</a>
        </div>
    </div>
</div>