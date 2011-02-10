<?php $toward = $commented->getTable()->getTableName(); ?>
<?php $method = 'getComment' . ucfirst($toward); ?>
<?php $size = $commented->$method()->count() - 1; ?>
<div class="commentMeta">
    <?php echo link_to('комментариев ' . ($size >= 0 ? $size : 0), $toward . '/show?id=' . $commented->getId()); ?>
</div>