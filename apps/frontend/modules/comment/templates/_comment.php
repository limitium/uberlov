<div id="comment<?php echo $comment->getId(); ?>" class="comment tree indent_<?php echo $comment->getLevel(); ?>">
    <div class="commentMessage" author="user<?php echo $comment->getCommentBy()->getId(); ?>"><?php echo $comment->getMessage(); ?></div>
    <div class="commentBar">
        <?php include_partial('vote/vote', array('obj' => $comment, 'objType' => 'comment')); ?>
        <a href="#comment=<?php echo $comment->getId(); ?>">#</a> Написал<?php echo $comment->getCommentBy()->getSex() ? '' : 'а' ?> <?php echo link_to($comment->getCommentBy()->getNickName(), 'profile/show?id=' . $comment->getCommentBy()->getId()); ?>,
        <?php echo $comment->getDateTimeObject('created_at')->format('d.m.Y') ?> <?php echo $comment->getDateTimeObject('created_at')->format('H.i') ?>
        | <a href="" class="commentReply">ответить</a>
        <?php IF ($comment->getLevel() > 1): ?>
            <a href="#comment=<?php echo $comment->getParent(); ?>" class="commentShowParent" replyTo="<?php echo $comment->getParent(); ?>">&uarr;</a>
        <?php ENDIF; ?>
            <a href="" class="commentShowAuthor" author="user<?php echo $comment->getCommentBy()->getId(); ?>">●</a>
    </div>
</div>