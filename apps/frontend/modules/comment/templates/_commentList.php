<div id="comment<?php echo $comment->getId(); ?>" class="comment">
    <div class="commentMessage" author="user<?php echo $comment->getCommentBy()->getId(); ?>"><?php echo $comment->getMessage(); ?></div>
    <div class="commentBar">
        <?php include_partial('vote/vote', array('obj' => $comment, 'objType' => 'comment')); ?>
        <a href="#comment=<?php echo $comment->getId(); ?>">#</a> Написал<?php echo $comment->getCommentBy()->getSex() ? '' : 'а' ?> <?php echo link_to($comment->getCommentBy()->getNickName(), 'profile/show?id=' . $comment->getCommentBy()->getId()); ?>,
        <?php echo $comment->getDateTimeObject('created_at')->format('d.m.Y') ?> <?php echo $comment->getDateTimeObject('created_at')->format('H.i') ?>
    </div>
</div>