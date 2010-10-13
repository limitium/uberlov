<?php use_helper('jQuery') ?>

<div class="assigned-tags">
    <?php if (count($object->getTags())): ?>
        <ul>
        <?php foreach ($object->getTags() as $tag): ?>
            <li>
                <span><?php echo $tag ?></span>
            </li>
        <?php endforeach ?>
        </ul>
    <?php endif ?>
</div>

<div class="add-tags">
    <input class="add-text tag-input" name="talk[tags]" type="text" />
</div>