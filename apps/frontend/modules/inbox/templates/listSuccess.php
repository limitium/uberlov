<script type="text/javascript">
    app.csrf.inbox = "<?php echo $csrf; ?>";
</script>
<?php use_javascript('inbox'); ?>
<?php use_helper('Text'); ?>
<?php $inboxes = $pager->execute(); ?>
<h2>Последние отчёты</h2>

<div class="inboxContainer">
    <?php if (count($inboxes)) : ?>
        <a href="<?php echo url_for('inbox/new') ?>">Написать</a>
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

