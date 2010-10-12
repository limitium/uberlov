<?php include_partial('talk/section', array('curSection' => $curSection)); ?>

<?php foreach ($pagerLayout->execute() as $talk): ?>
    <div class="talkBrief">
    <?php echo link_to($talk->getName(), 'talk/show?id=' . $talk->getId()); ?>
    <div class="meta">
        <?php include_partial('profile/writeBy', array('written' => $talk)); ?>
        <?php include_partial('comment/commentMeta', array('commented' => $talk)); ?>
    </div>
</div>
<?php endforeach; ?>
<?php $pagerLayout->display(array('section' => $curSection['id'])); ?>

<?php if (isset($form)): ?>
<?php include_partial('form', array('form' => $form)) ?>
<?php include_component('taggableComplete', 'tagWidget', array('object' => $form->getObject())) ?>
<?php endif; ?>
<?        include_javascripts_for_form($form) ?>
<script>
pkTagahead(<?php echo json_encode(url_for("taggableComplete/complete")) ?>);
</script>
