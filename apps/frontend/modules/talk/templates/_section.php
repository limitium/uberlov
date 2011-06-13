<?php use_javascript('talk'); ?>
<div class="sectionMenu">
    <h4>Раздел:</h4>
    <?php echo link_to('Все', 'talk/list'); ?>
    <?php echo link_to('□', 'talk/list', array('class'=>'section_max')); ?>
    <?php echo link_to('_', 'talk/list', array('class'=>'section_min')); ?>
    <?php $tree = Doctrine_Core::getTable('TalkSection')->getTree()->fetchTree(); ?>
    <?php $tree instanceof Doctrine_Tree_NestedSet; ?>

    <?php foreach ($tree->toHierarchy() as $section) : ?>
        <?php include_partial('talk/section_node', array('node' => $section, 'curSection' => $curSection)); ?>
    <?php endforeach; ?>
    <?php if ($sf_user->hasCredential('admin')): ?>
        <?php echo link_to('Добавить', '@talk_section' . ($curSection ? '?parent=' . $curSection->getId() : '')); ?>
    <?php endif; ?>
</div>