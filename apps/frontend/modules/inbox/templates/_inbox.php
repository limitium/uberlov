<div class="inbox">
    <div class="message">
        <h4><?php echo $inbox->getName(); ?></h4>
        <?php echo $inbox->getMessage(); ?>
    </div>
    <div class="meta">
        <div>
            <a href="" id="goToReply">□</a> Добавил<?php echo $location->getCreatedBy()->getSex() ? '' : 'а' ?> <?php echo link_to($location->getCreatedBy()->getNickName(), 'profile/show?id=' . $location->getCreatedBy()->getId()); ?>,
            <?php echo $location->getDateTimeObject('created_at')->format('d.m.Y'); ?>
            <a href="" class="commentShowAuthor" author="user<?php echo $location->getCreatedBy(); ?>">●</a>
        </div>
    </div>
</div>