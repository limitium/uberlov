<h2>Инбоксы</h2>
<div class="inboxContainer">
    <a href="<?php echo url_for('inbox/new') ?>">Написать</a>
    <ul>
        <?php foreach ($inboxes as $inbox): ?>
            <li>
            <?php include_partial('brief', array('inbox' => $inbox)) ?>
        </li>
        <?php endforeach; ?>
    </ul>
</div>