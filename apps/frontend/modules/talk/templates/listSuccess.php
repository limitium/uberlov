<?php include_partial('talk/section', array('curSection' => $curSection)); ?>

<?php foreach ($pagerLayout->execute() as $talk): ?>
    <div class="talkBrief">
        <h4><?php echo $talk->name; ?></h4>
        <p><?php echo $talk->message; ?></p>
        <div class="meta">
        <?php $talk->getCreatedBy()->renderCreator() ?>
        <?php echo $talk->getDateTimeObject('created_at')->format('d.m.Y'); ?>
        | <?php echo link_to('комментариев ' . ($talk->getCommentTalk()->count() - 1), 'inbox/show?id=' . $talk->getId()); ?>
    </div>
</div>
<?php endforeach; ?>
<?php $pagerLayout->display(array('section' => $curSection['id'])); ?>
        
