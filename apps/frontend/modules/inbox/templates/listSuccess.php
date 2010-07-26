<h2>Инбоксы</h2>
<a href="<?php echo url_for('inbox/new') ?>">Написать</a>
<ul>
    <?php foreach ($inboxes as $inbox): ?>
        <li>
        <?php include_partial('inbox', array('inbox' => $inbox)) ?>
    </li>
    <?php endforeach; ?>
</ul>
