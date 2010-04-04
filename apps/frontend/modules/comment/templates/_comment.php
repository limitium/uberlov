<div id="comment<?php echo $comment->getId(); ?>" class="comment tree indent_<?php echo $comment->getLevel(); ?>">
    <div class="commentMessage"><?php echo $comment->getMessage(); ?></div>
    <div class="comment_bar">
        written asdasd,
        <?php echo $comment->getDateTimeObject('created_at')->format('d.m.Y') ?> <?php echo $comment->getDateTimeObject('created_at')->format('H.i') ?>
        | <a href="" class="commentReply">answer</a>
        <a href="<?php echo $comment->getNode()->getParent(); ?>">↑</a>
        <a href="">.</a>
    </div>
</div>