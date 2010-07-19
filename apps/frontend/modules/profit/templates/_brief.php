<div id="profit<?php echo $profit->getId(); ?>" class="profitBrief">
    <div class="name" author="user<?php echo $profit->getCreatedBy()->getId(); ?>"><?php echo link_to($profit->getName(), 'profit/show?id=' . $profit->getId()); ?></div>
    <div class="message"><?php echo $profit->getBriefDescription(); ?></div>
    <div class="bar">
        <?php include_partial('vote/vote', array('obj' => $profit)); ?>
        Добавил<?php echo $profit->getCreatedBy()->getSex() ? '' : 'а' ?> <?php echo link_to($profit->getCreatedBy()->getNickName(), 'profile/show?id=' . $profit->getCreatedBy()->getId()); ?>,
        <?php echo $profit->getDateTimeObject('created_at')->format('d.m.Y') ?> <?php echo $profit->getDateTimeObject('created_at')->format('H.i') ?>
        | <?php echo link_to('комментариев ' . sizeOf($profit->getCommentProfit()), 'profit/show?id=' . $profit->getId()); ?> | улов <?php echo $profit->getTotalProfit(); ?> кг.
    </div>
</div>