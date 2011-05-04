<?php use_helper('Text'); ?>
<?php use_helper('XssSafe'); ?>
<div class="map_location">
    <div class="location_header">
        <?php include_partial('vote/vote', array('obj' => $location)); ?>
        <h2><?php echo $location->getName() ?></h2>    
    </div>
    <div class="description">
        <?php echo simple_format_text(truncate_text($location->getDescription(ESC_XSSSAFE), 200, '...', true)) ?>
    </div>
    <div class="location_footer">
        комментариев <?php echo $comments; ?> | отчетов 0 | событий 0 |  <?php echo link_to('подробнее', 'location/show?id=' . $location->getId()) ?>
        <div class="comments"><p class="comments_count"> <?php echo $comments; ?></p></div>
       
        <div class="events">
            <?php $events = $location->getFishEvent(); ?>
            <ul>
                <?php foreach ($events as $event) : ?>
                    <li><?php echo $event->getDateTimeObject('date')->format('d.m.Y'); ?> - <?php echo link_to($event->getName(), 'event/show?id=' . $event->getId()) ?></li>
                <?php endforeach; ?>
            </ul>
        </div>
    </div>
</div>