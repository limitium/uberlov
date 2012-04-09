<?php use_helper('Text'); ?>
<?php use_javascript('comment'); ?>

<div id="commentContainer" class="selected" type="<?php echo $form->getToward(); ?>">


    <?php foreach ($comments as $comment): ?>
    <?php include_partial('comment/comment_' . (isset($type) ? $type : 'full'), array('comment' => $comment)); ?>
    <?php endforeach; ?>

    <?php if ($sf_user->isAnonymous()): ?>
        Что б комментировать надо <a href="<?php echo url_for('@sf_guard_signin');?>">войти</a> или <a href="<?php echo url_for('@apply');?>">зарегистрироваться</a>
    <?php else: ?>
    <?php include_partial('comment/form', array('form' => $form)) ?>
    <div id="commentReplyDefault" style="display:none">
        <a href="">Написать</a>
    </div>
    <?php endif; ?>
</div>