<div class="tagCounter">
    <?php foreach ($tags as $name => $count): ?>
        <div>
        <?php echo link_to($name, 'talk/tag?tag=' . $name); ?> х <?php echo $count; ?>
    </div>
<?php endforeach; ?>
</div>
<?php include_partial('talk/list', array('pager' => $pager)); ?>