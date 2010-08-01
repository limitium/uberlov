<div class="inbox">
    <h2><?php echo $inbox->getName(); ?></h2>
    <p><?php echo $inbox->getMessage(); ?></p>
    <div class="meta">
        <div>
            <a href="" id="goToReply">□</a> Написал<?php echo $inbox->getCreatedBy()->getSex() ? '' : 'а' ?> <?php echo link_to($inbox->getCreatedBy()->getNickName(), 'profile/show?id=' . $inbox->getCreatedBy()->getId()); ?>,
            <?php echo $inbox->getDateTimeObject('created_at')->format('d.m.Y'); ?> | 
            <a href="" class="commentShowAuthor" author="user<?php echo $inbox->getCreatedBy(); ?>">●</a>
        </div>
    </div>
    <div class="tabPanel">
        <ul>
            <li><span href="#" id="tabComments" class="selected">Комментарии (<i id="commentCounter"><?php echo sizeof($comments); ?></i>)</span></li>
        </ul>
    </div>

    <div id="commentContainer" class="selected" type="inbox">
        <?php use_javascript('comment'); ?>
        <?php foreach ($comments as $comment): ?>
        <?php include_partial('comment/comment', array('comment' => $comment)); ?>
        <?php endforeach; ?>
        <?php include_partial('comment/form', array('form' => $commentForm, 'toward' => 'inbox')) ?>
        <div id="commentReplyDefault" style="display:none">
            <a href="">Написать</a>
        </div>
    </div>
</div>

