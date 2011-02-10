<?php use_helper('text'); ?>
<?php use_javascript('comment'); ?>

<div id="commentContainer" class="selected" type="<?php echo $for; ?>">    


    <?php foreach ($comments as $comment): ?>
        <?php include_partial('comment/types/' . isset($type) ? $type : 'full', array('comment' => $comment)); ?>
    <?php endforeach; ?>

    <?php include_partial('comment/form', array('form' => $form, 'toward' => $for)) ?>
    <div id="commentReplyDefault" style="display:none">
        <a href="">Написать</a>
    </div>
</div>