<?php use_javascript('comment'); ?>

<?php foreach ($comments as $comment): ?>
    <?php include_partial('comment/comment_list', array('comment' => $comment)); ?>
<?php endforeach; ?>