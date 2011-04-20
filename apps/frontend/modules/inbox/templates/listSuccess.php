<script type="text/javascript">
    app.csrf.inbox = "<?php echo $csrf; ?>";
</script>
<?php use_javascript('inbox'); ?>
<?php use_helper('Text'); ?>
<?php $inboxes = $pager->execute(); ?>

<div class="inboxContainer">
    <?php if (count($inboxes)) : ?>
        <a class="non_extensible_button button_01" href="<?php echo url_for('inbox/new') ?>">  
        <span class="border_l png_fix">
            <span class="border_r png_fix">
                <span class="btn_bg png_fix">
                    НАПИСАТЬ
                </span>
            </span>
        </span>
        </a>

        <ul>
            <?php foreach ($inboxes as $inbox): ?>
                <li>
                    <?php include_partial('brief', array('inbox' => $inbox)) ?>
                </li>
            <?php endforeach; ?>
        </ul>
    <?php else: ?>
        Инбоксов нет.
    <?php endif; ?>
    <?php $pager->display(); ?>
</div>

