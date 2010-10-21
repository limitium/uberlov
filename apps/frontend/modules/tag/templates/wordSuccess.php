<div class="tagCounter">
    <?php foreach ($tags as $name => $count): ?>
        <div>
        <?php echo link_to($name, 'tag/word?word=' . $name); ?> х <?php echo $count; ?>
    </div>
<?php endforeach; ?>
</div>
<?php include_partial('talk/talks', array('pagerLayout' => $pagerLayout)); ?>