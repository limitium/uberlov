<?php use_helper('text'); ?>
<div class="sectionMenuShow">
    <ul>
        <?php foreach ($talk->getSections() as $section): ?>
            <li>
            <?php echo link_to($section, 'talk/list?section=' . $section->getId()); ?>
        </li>        
        <?php endforeach; ?>
        </ul>
    </div>

    <div id="talk">
        <h2><?php echo $talk->getName(); ?></h2>
    <?php echo simple_format_text($talk->getMessage()); ?>
            <div class="assigned-tags">
                <ul>
            <?php foreach ($talk->getTags() as $tag): ?>
                <li>
                    <span><?php echo link_to($tag, 'tag/word?word=' . $tag); ?></span>
                </li>
            <?php endforeach ?>
            </ul>
        </div>
        <div class="meta">
            <div><?php use_javascript('voting'); ?>
            <?php include_partial('vote/vote', array('obj' => $talk)); ?>
                <a href="" id="goToReply">□</a>
            <?php include_partial('profile/writeBy', array('written' => $talk)); ?>
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
<?php slot('extra'); ?>
                <div id="talkRelated">
                    <h4>Похожие обсуждения:</h4>
    <?php foreach ($related as $relTalk): ?>
    <?php if ($relTalk != $talk): ?>

                        <div>
        <?php echo link_to($relTalk->getName(), 'talk/show?id=' . $relTalk->getId()); ?>
                        <div class="meta">
                            <span><?php echo link_to($relTalk->getCreatedBy()->getNickName(), 'profile/show?id=' . $relTalk->getCreatedBy()->getId()); ?> <?php echo $relTalk->getDateTimeObject('created_at')->format('d.m.Y'); ?></span>
                        </div>
                    </div>

    <?php endif; ?>
    <?php endforeach; ?>
                    </div>
<?php end_slot(); ?>
