<?php use_helper('text'); ?>
<?php include_partial('talk/section', array('curSection' => $curSection)); ?>

<?php foreach ($talks as $talk): ?>
    <div class="talkBrief">
    <?php echo link_to($talk->getName(), 'talk/show?id=' . $talk->getId()); ?>
    <p>
        <?php echo truncate_text($talk->getMessage(), 100, '...', true); ?>
    </p>
    <div class="assigned-tags">
        <ul>
            <?php foreach ($talk->getTagging() as $tagging): ?>
                <li>
                    <span><?php echo $tagging->getTag()->getName() ?></span>
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
<?php $pagerLayout->display(array('section' => $curSection['id'])); ?>

<?php if (isset($form)): ?>
<?php include_partial('form', array('form' => $form)) ?>
<?php endif; ?>
