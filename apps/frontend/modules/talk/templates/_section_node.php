<?php if (sizeof($node['__children']) > 0): ?>
    <ul>
    <?php foreach ($node['__children'] as $child) : ?>
        <li class="section">
        <?php include_partial('talk/section_node', array('node' => $child, 'curSection' => $curSection)); ?>
        <?php if ($curSection['id'] == $child['id']): ?>
            <b><?php echo $child['name']; ?></b>
        <?php else: ?>
        <?php echo link_to($child['name'], 'talk/list?section=' . $child['id']); ?>
        <?php endif; ?>
            </li>
    <?php endforeach; ?>
            </ul>
<?php endif; ?>