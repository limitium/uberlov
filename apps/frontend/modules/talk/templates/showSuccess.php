<?php use_helper('XssSafe'); ?>
<?php use_javascript('voting'); ?>

<div class="sectionMenuShow">
    <ul>
        <?php $sections = array(); ?>
        <?php foreach ($talk->getSections() as $section): ?>
            <?php $sections[] = '<li>' . link_to($section, 'talk/list?section=' . $section->getId()) . '</li>'; ?>
        <?php endforeach; ?>
        <?php echo implode($sections, ' &rarr; '); ?>
    </ul>
</div>
<div class="talkWrapper">
    <div class="talk">
        <h2><?php echo $talk->getName(); ?></h2>
        <div class="text">
            <?php echo $talk->getMessage(ESC_XSSSAFE); ?>
        </div>
        <div class="assigned-tags">
            <ul>
                <?php $tags = array();
                foreach ($talk->getTags() as $tag): ?>
                    <?php $tags[] = '<li>' . link_to($tag, 'talk/tag?tag=' . $tag) . '</li>'; ?>
                <?php endforeach ?>
                <?php echo implode(',', $tags); ?>
            </ul>
        </div>
    </div>
    <div id="talkRelated">
        <h4>Похожие обсуждения:</h4>
        <?php foreach ($related as $relTalk): ?>
            <?php if ($relTalk != $talk): ?>

                <div class="related">
                    <?php echo link_to($relTalk->getName(), 'talk/show?id=' . $relTalk->getId()); ?>
                    <div class="meta">
                        <span>
                            <?php include_partial('profile/writeBy', array('written' => $relTalk, 'size' => 24)); ?>
                        </span>
                    </div>
                </div>

            <?php endif; ?>
        <?php endforeach; ?>
    </div>
    <?php include_partial('default/ilike', array('url' => '@talk_show?id='.$talk->getId())) ?>
    <div class="meta">
        <div>
            <?php include_partial('vote/vote', array('obj' => $talk)); ?>
            <a href="" id="goToReply">□</a>
            <?php include_partial('profile/writeBy', array('written' => $talk)); ?>
            <a href="" class="commentShowAuthor" author="user<?php echo $talk->getCreatedBy(); ?>">●</a>
        </div>
    </div>
</div>
<div class="tabPanel">
    <ul>
        <li><span href="#" id="tabComments" class="selected">Комментарии (<i id="commentCounter"><?php echo sizeof($comments); ?></i>)</span></li>
    </ul>
</div>

<?php include_partial('comment/tree', array('form' => $form, 'comments' => $comments)); ?>
