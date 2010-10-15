<?php use_helper('text'); ?>
<div id="commentContainer" class="selected" type="<?php echo $for; ?>">
    <?php use_javascript('comment'); ?>
    <?php foreach ($comments as $comment): ?>
    <?php include_partial('comment/' . (isset($noVote) ? 'commentNoVote' : 'comment'), array('comment' => $comment)); ?>
    <?php endforeach; ?>
    <?php include_partial('comment/form', array('form' => $form, 'toward' => $for)) ?>
    <div id="commentReplyDefault" style="display:none">
        <a href="">Написать</a>
    </div>
</div>