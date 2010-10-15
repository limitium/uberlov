<?php use_helper('text'); ?>
<div id="talk">
    <h2><?php echo $talk->getName(); ?></h2>
    <?php echo simple_format_text($talk->getMessage()); ?>
    <div class="assigned-tags">
        <ul>
            <?php foreach ($talk->getTags() as $tag): ?>
                <li>
                    <span><?php echo $tag; ?></span>
                </li>
            <?php endforeach ?>
            </ul>
        </div>
        <div class="meta">
            <div><?php use_javascript('voting'); ?>
            <?php include_partial('vote/vote', array('obj' => $talk)); ?>
                <a href="" id="goToReply">□</a> Написал<?php echo $talk->getCreatedBy()->getSex() ? '' : 'а' ?> <?php echo link_to($talk->getCreatedBy()->getNickName(), 'profile/show?id=' . $talk->getCreatedBy()->getId()); ?>,
            <?php echo $talk->getDateTimeObject('created_at')->format('d.m.Y'); ?> |
                <a href="" class="commentShowAuthor" author="user<?php echo $talk->getCreatedBy(); ?>">●</a>
            </div>
        </div>
        <div class="tabPanel">
            <ul>
                <li><span href="#" id="tabComments" class="selected">Комментарии (<i id="commentCounter"><?php echo sizeof($comments); ?></i>)</span></li>
            </ul>
        </div>

    <?php include_partial('comment/comments', array('for' => 'talk', 'form' => $form, 'comments' => $comments)); ?>
</div>

