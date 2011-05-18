<?php use_helper('XssSafe'); ?>
<div id="profit<?php echo $profit->getId(); ?>" class="profitBrief">
    <h3 class="name" author="user<?php echo $profit->getCreatedBy()->getId(); ?>"><?php echo link_to($profit->getName(), 'profit/show?id=' . $profit->getId()); ?> &rarr; <?php echo link_to($profit->getLocation()->getName(), 'location/show?id=' . $profit->getLocation()->getId()); ?></h3>
    <div class="text"><?php echo truncate_text($profit->getDescription(ESC_XSSSAFE), 100, '...', true); ?></div>
    <div class="meta">
        <?php include_partial('vote/vote', array('obj' => $profit)); ?>
        <?php include_partial('profile/writeBy', array('written' => $profit)); ?> | улов <?php echo $profit->getTotalProfit(); ?> кг.
        <?php include_partial('comment/meta', array('commented' => $profit)); ?>
    </div>
</div>