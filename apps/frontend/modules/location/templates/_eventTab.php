<div id="eventContainer">
    <?php foreach ($events as $event): ?>
        <?php include_partial('event/listItemWOloc', array('event' => $event)); ?>
    <?php endforeach; ?>
    <a href="<?php echo url_for('@event_new?location=' . $location->getId()); ?>" class="button_01">
    <span class="border_l">
        <span class="border_r">
            <span class="btn_bg">ДОБАВИТЬ</span>
        </span>
    </span>
    </a>
</div>