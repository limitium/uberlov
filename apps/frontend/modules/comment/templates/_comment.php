<div id="comment<?php echo $comment->getId(); ?>" class="comment tree indent_<?php echo $comment->getLevel(); ?>">
    <div class="commentMessage"><?php echo $comment->getMessage(); ?></div>
    <div class="commentBar">
        written asdasd,
        <?php echo $comment->getDateTimeObject('created_at')->format('d.m.Y') ?> <?php echo $comment->getDateTimeObject('created_at')->format('H.i') ?>
        | <a href="" class="commentReply">answer</a>
        <?php IF($comment->getLevel()>0): ?>
        <a href="" class="commentShowParent" replyTo="<?php echo $comment->getNode()->getParent(); ?>">&uarr;</a>
        <?php ENDIF; ?>
        <a href="">.</a>
    </div>
</div>