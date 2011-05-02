<?php use_helper('Text'); ?>
<?php use_helper('XssSafe') ?>
<div id="comment<?php echo $comment->getId(); ?>" class="comment tree indent_<?php echo $comment->getLevel(); ?>">
    <div class="commentMessage" author="user<?php echo $comment->getCreatedBy()->getId(); ?>"><?php echo simple_format_text($comment->getMessage(ESC_XSSSAFE)); ?></div>
    <div class="commentBar">
        <?php include_partial('vote/vote', array('obj' => $comment, 'objType' => 'Comment')); ?>
        <a class="commentAnchor" href="#comment=<?php echo $comment->getId(); ?>">#</a>
        <?php include_partial('profile/writeBy', array('written' => $comment)); ?>
        | <a class="commentReply" href="">ответить</a>
        <?php IF ($comment->getLevel() > 1): ?>
            <a href="#comment=<?php echo $comment->getParent(); ?>" class="commentShowParent" replyTo="<?php echo $comment->getParent(); ?>">&uarr;</a>
        <?php ENDIF; ?>
            <a href="" class="commentShowAuthor" author="user<?php echo $comment->getCreatedBy()->getId(); ?>">●</a>
    </div>
</div>