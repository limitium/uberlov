<ul class="tagCounter">
    <?php foreach ($tags as $name => $count): ?>
        <li>
            <?php echo link_to($name, 'talk/tag?tag=' . $name); ?> х <?php echo $count; ?>
        </li>
    <?php endforeach; ?>
</ul>
<?php include_partial('talk/list', array('pager' => $pager)); ?>