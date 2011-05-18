<?php use_helper('XssSafe'); ?>
<?php use_helper('Text'); ?>
<div class="inbox">
    <div class="message">
        <?php echo link_to($inbox->getName(), 'inbox/show?id=' . $inbox->getId()); ?>
        <p><?php echo truncate_text($inbox->getMessage(ESC_XSSSAFE), 100, '...', true); ?></p>
    </div>
    <div class="meta">
        <div>
            <?php include_partial('profile/writeBy', array('written' => $inbox)); ?> | 
            <a href="" class="inboxDelete" inbox="<?php echo $inbox->getId(); ?>">Удалить инбокс</a>
            <?php include_partial('comment/meta', array('commented' => $inbox)); ?>            
        </div>
    </div>
</div>