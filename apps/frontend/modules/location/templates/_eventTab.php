<div id="eventContainer">
    <?php foreach ($events as $event): ?>
    <?php include_partial('event/listItemWOloc', array('event' => $event)); ?>
    <?php endforeach; ?>
    <?php if ($sf_user->isAnonymous()): ?>
    Что б добавить событие надо <a href="<?php echo url_for('@sf_guard_signin');?>">войти</a> или <a
        href="<?php echo url_for('@apply');?>">зарегистрироваться</a>
    <?php else: ?>
    <a href="<?php echo url_for('@event_new?location=' . $location->getId()); ?>" class="button_01">
        <span class="border_l">
            <span class="border_r">
                <span class="btn_bg">ДОБАВИТЬ</span>
            </span>
        </span>
    </a>
    <?php endif; ?>
</div>