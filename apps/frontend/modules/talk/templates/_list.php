<?php use_helper('Text'); ?>
<?php use_helper('XssSafe'); ?>
<?php foreach ($pager->execute() as $talk): ?>
    <div class="talkBrief">
        <h2><?php echo link_to($talk->getName(), 'talk/show?id=' . $talk->getId()); ?></h2>
        <div class="text">
            <?php echo truncate_text($talk->getMessage(ESC_XSSSAFE),500) ?>
        </div>
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
            <?php include_partial('vote/vote', array('obj' => $talk)); ?> 
            <?php include_partial('profile/writeBy', array('written' => $talk)); ?>
            <?php include_partial('comment/meta', array('commented' => $talk)); ?>
        </div>
    </div>
<?php endforeach; ?>
<?php $pager->display(); ?>