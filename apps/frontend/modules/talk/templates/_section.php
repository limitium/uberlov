<div class="sectionMenu">
    <h4>Раздел:</h4>
    <?php echo link_to('Все', 'talk/list'); ?>
    <?php
    $tree = Doctrine_Core::getTable('TalkSection')
                    ->createQuery('c')
                    ->execute(); ?>
    <?php $tree instanceof Doctrine_Tree_NestedSet; ?>

    <?php foreach ($tree->toHierarchy() as $section) : ?>
    <?php include_partial('talk/section_node', array('node' => $section, 'curSection' => $curSection)); ?>
    <?php endforeach; ?>
</div>