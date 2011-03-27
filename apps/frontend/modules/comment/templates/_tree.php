<?php use_helper('text'); ?>
<?php use_javascript('comment'); ?>

<div id="commentContainer" class="selected" type="<?php echo $form->getToward(); ?>">


    <?php foreach ($comments as $comment): ?>
    <?php include_partial('comment/comment_' . (isset($type) ? $type : 'full'), array('comment' => $comment)); ?>
    <?php endforeach; ?>

    <?php include_partial('comment/form', array('form' => $form)) ?>
    <div id="commentReplyDefault" style="display:none">
        <a href="">Написать</a>
    </div>
</div>