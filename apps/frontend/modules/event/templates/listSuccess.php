<div class="eventList">
    <h2>Ближайшие события</h2>
    <?php if ($events->count()): ?>
        <ul>
            <?php foreach ($events as $event): ?>
                <li>
                    <?php include_partial('event/list', array('event' => $event)); ?>
                </li>
            <?php endforeach; ?>
        </ul>
    <?php else: ?>
        Событий нет.
    <?php endif; ?>
</div>