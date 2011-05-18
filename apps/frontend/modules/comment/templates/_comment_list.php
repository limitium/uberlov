<?php use_helper('XssSafe') ?>
<div id="comment<?php echo $comment->getId(); ?>" class="comment">
    <div class="commentMessage" author="user<?php echo $comment->getCreatedBy()->getId(); ?>"><?php echo $comment->getMessage(ESC_XSSSAFE); ?></div>
    <div class="commentBar">
        <?php include_partial('vote/vote', array('obj' => $comment, 'objType' => 'Comment')); ?>
        <a href="#comment=<?php echo $comment->getId(); ?>">#</a> <?php include_partial('profile/writeBy', array('written' => $comment)); ?>,
        <?php echo $comment->getDateTimeObject('created_at')->format('d.m.Y') ?> <?php echo $comment->getDateTimeObject('created_at')->format('H.i') ?>
    </div>
</div>