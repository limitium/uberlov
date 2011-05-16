<?php use_helper('XssSafe'); ?>
<?php use_helper('Text'); ?>
<?php foreach ($pager->execute() as $talk): ?>
    <div class="talkBrief">
        <?php echo link_to($talk->getName(), 'talk/show?id=' . $talk->getId()); ?>
        <?php echo simple_format_text(truncate_text($talk->getMessage(ESC_XSSSAFE), 100, '...', true)); ?>
        <div class="assigned-tags">
            <ul>
                <?php $tags = array();
                foreach ($talk->getTagging() as $tagging): ?>
                    <?php $tags[] = '<li>' . link_to($tagging->getTag()->getName(), 'talk/tag?tag=' . $tagging->getTag()->getName()) . '</li>'; ?>
                <?php endforeach ?>
                <?php echo implode(',', $tags); ?>
            </ul>
        </div>
        <div class="meta">
            <?php include_partial('profile/writeBy', array('written' => $talk)); ?>
            <?php include_partial('comment/meta', array('commented' => $talk)); ?>
        </div>
    </div>
<?php endforeach; ?>
<?php $pager->display(); ?>