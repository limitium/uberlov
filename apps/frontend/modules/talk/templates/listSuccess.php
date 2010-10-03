<?php include_partial('talk/section', array('curSection' => $curSection)); ?>

<?php foreach ($pagerLayout->execute() as $talk): ?>
    <div class="talkBrief">
    <?php echo $talk->name; ?>
</div>
<?php endforeach; ?>
<?php $pagerLayout->display(array('section' => $curSection['id'])); ?>
        
