<?php use_helper('Text'); ?>
<div id="profit<?php echo $profit->getId(); ?>" class="profitBrief">
    <div class="name" author="user<?php echo $profit->getCreatedBy()->getId(); ?>"><?php echo link_to($profit->getName(), 'profit/show?id=' . $profit->getId()); ?> &rarr; <?php echo link_to($profit->getLocation()->getName(), 'location/show?id=' . $profit->getLocation()->getId()); ?></div>
    <?php echo simple_format_text(truncate_text($profit->getDescription(), 100, '...', true)); ?>
    <div class="bar">
        <?php include_partial('vote/vote', array('obj' => $profit)); ?>
        <?php include_partial('profile/writeBy', array('written' => $profit)); ?> | улов <?php echo $profit->getTotalProfit(); ?> кг.
        <?php include_partial('comment/meta', array('commented' => $profit)); ?>
    </div>
</div>