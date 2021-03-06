<ul>
    <?php
    $n = 1;
    $limit = count($tagSuggestions);
    foreach ($tagSuggestions as $suggestion):
        ?>
        <?php // No extraneous whitespace here, it shows up in text()  ?>
        <li class="<?php echo ($n % 2 == 0 ? 'even' : 'odd'); ?>">
            <span class="tag-spacer left"><?php echo $suggestion['left'] ?></span>
            <a <?php echo ($n == $limit) ? 'class="last"' : '' ?><?php echo ($n == 1) ? 'class="first"' : '' ?> href="#"><?php echo $suggestion['suggested'] ?></a>
            <span class="tag-spacer right"><?php echo $suggestion['right'] ?></span>
        </li>
        <?php $n++;
    endforeach ?>
</ul>