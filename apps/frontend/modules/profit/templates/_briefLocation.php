<?php use_helper('XssSafe'); ?>
<?php use_helper('Text'); ?>
<div id="profit<?php echo $profit->getId(); ?>" class="profitBrief">
    <h2 author="user<?php echo $profit->getCreatedBy()->getId(); ?>"><?php echo link_to($profit->getDateTimeObject('date')->format('d.m.Y').' '.$profit->getName(), 'profit/show?id=' . $profit->getId()); ?></h2>
    <?php echo truncate_text($profit->getDescription(ESC_XSSSAFE), 200, '...', true); ?>
    <div class="meta">
        <?php include_partial('vote/vote', array('obj' => $profit)); ?>
        <?php include_partial('profile/writeBy', array('written' => $profit)); ?> | улов <?php echo $profit->getTotalProfit(); ?> кг.
        <?php include_partial('comment/meta', array('commented' => $profit)); ?>
    </div>
</div>