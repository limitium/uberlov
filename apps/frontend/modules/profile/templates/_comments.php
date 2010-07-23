<div id="commentContainer" class="selected" type="location">
    <?php use_javascript('comment'); ?>
    <?php foreach ($comments as $comment): ?>
    <?php include_partial('comment/commentList', array('comment' => $comment)); ?>
    <?php endforeach; ?>
</div>