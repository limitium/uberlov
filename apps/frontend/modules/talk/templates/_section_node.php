<?php if (sizeof($node['__children']) > 0): ?>
    <ul>
    <?php foreach ($node['__children'] as $child) : ?>
        <li class="section">
        <?php if ($curSection['id'] == $child['id']): ?>
            <b><?php echo $child['name']; ?></b>
        <?php else: ?>
        <?php echo link_to($child['name'], 'talk/list?section=' . $child['id']); ?>
        <?php endif; ?>
        <?php include_partial('talk/section_node', array('node' => $child, 'curSection' => $curSection)); ?>
            </li>
    <?php endforeach; ?>
            </ul>
<?php endif; ?>