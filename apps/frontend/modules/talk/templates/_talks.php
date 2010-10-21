<?php use_helper('text'); ?>
<?php foreach ($pagerLayout->execute() as $talk): ?>
    <div class="talkBrief">
    <?php echo link_to($talk->getName(), 'talk/show?id=' . $talk->getId()); ?>
    <?php echo simple_format_text(truncate_text($talk->getMessage(), 100, '...', true)); ?>
    <div class="assigned-tags">
        <ul>
            <?php foreach ($talk->getTagging() as $tagging): ?>
                <li>
                    <span><?php echo link_to($tagging->getTag()->getName(), 'tag/word?word=' . $tagging->getTag()->getName()); ?></span>
                </li>
            <?php endforeach ?>
            </ul>
        </div>
        <div class="meta">
        <?php include_partial('profile/writeBy', array('written' => $talk)); ?>
        <?php include_partial('comment/commentMeta', array('commented' => $talk)); ?>
            </div>
        </div>
<?php endforeach; ?>
<?php $pagerLayout->display(); ?>