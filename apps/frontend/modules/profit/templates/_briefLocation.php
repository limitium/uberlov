<?php use_helper('XssSafe'); ?>
<div id="profit<?php echo $profit->getId(); ?>" class="profitBrief">
    <h2 author="user<?php echo $profit->getCreatedBy()->getId(); ?>"><?php echo link_to($profit->getDateTimeObject('date')->format('d.m.Y').' '.$profit->getName(), 'profit/show?id=' . $profit->getId()); ?></h2>
    <?php echo $profit->getDescription(ESC_XSSSAFE); ?>
    <div class="meta">
        <?php include_partial('vote/vote', array('obj' => $profit)); ?>
        <?php include_partial('profile/writeBy', array('written' => $profit)); ?> | улов <?php echo $profit->getTotalProfit(); ?> кг. |
        <?php include_partial('comment/meta', array('commented' => $profit)); ?>
    </div>
</div>