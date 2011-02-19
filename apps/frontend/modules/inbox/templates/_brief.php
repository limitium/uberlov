<?php use_helper('text'); ?>
<div class="inbox">
    <div class="message">
        <?php echo link_to($inbox->getName(), 'inbox/show?id=' . $inbox->getId()); ?>
        <p><?php echo simple_format_text($inbox->getMessage(), 100, '...', true); ?></p>
    </div>
    <div class="meta">
        <div>
            <?php include_partial('profile/writeBy', array('written' => $inbox)); ?> | 
            <a href="" class="inboxDelete" inbox="<?php echo $inbox->getId(); ?>">Удалить инбокс</a>
            <?php include_partial('comment/meta', array('commented' => $inbox)); ?>            
        </div>
    </div>
</div>