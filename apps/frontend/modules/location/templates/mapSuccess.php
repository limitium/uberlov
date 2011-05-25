<?php use_helper('XssSafe'); ?>
<div class="map_location">
    <div class="location_header">
        <?php include_partial('vote/vote', array('obj' => $location)); ?>
        <h2><?php echo $location->getName() ?></h2>    
    </div>
    <div class="text">
        <?php echo $location->getDescription(ESC_XSSSAFE) ?>
    </div>
    <div class="location_footer">
        комментариев <?php echo sizeof($location->getCommentLocation()); ?> | отчетов <?php echo sizeof($location->getProfit()); ?> | событий <?php echo sizeof($location->getFishEvent()); ?> |  <?php echo link_to('подробнее', 'location/show?id=' . $location->getId()) ?>
    </div>
</div>