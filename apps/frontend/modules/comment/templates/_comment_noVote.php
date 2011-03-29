<?php use_helper('Text'); ?>
<div id="comment<?php echo $comment->getId(); ?>" class="comment tree indent_<?php echo $comment->getLevel(); ?>">
    <div class="commentMessage" author="user<?php echo $comment->getCreatedBy()->getId(); ?>"><?php echo simple_format_text($comment->getMessage()); ?></div>
    <div class="commentBar"
        <a href="#comment=<?php echo $comment->getId(); ?>">#</a> Написал<?php echo $comment->getCreatedBy()->getSex() ? '' : 'а' ?> <?php echo link_to($comment->getCreatedBy()->getNickName(), 'profile/show?id=' . $comment->getCreatedBy()->getId()); ?>,
        <?php echo $comment->getDateTimeObject('created_at')->format('d.m.Y') ?> <?php echo $comment->getDateTimeObject('created_at')->format('H.i') ?>
        | <a href="" class="commentReply">ответить</a>
        <?php IF ($comment->getLevel() > 1): ?>
            <a href="#comment=<?php echo $comment->getParent(); ?>" class="commentShowParent" replyTo="<?php echo $comment->getParent(); ?>">&uarr;</a>
        <?php ENDIF; ?>
            <a href="" class="commentShowAuthor" author="user<?php echo $comment->getCreatedBy()->getId(); ?>">●</a>
    </div>
</div>