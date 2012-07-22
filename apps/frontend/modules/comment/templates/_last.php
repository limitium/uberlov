<?php use_helper('Text') ?>
<?php use_helper('XssSafe') ?>
<div class="menu_block">
    <h4>О чем говорят:</h4>
    <ul>
        <?php foreach ($comments as $comment): ?>
            <li>
                <div class="commentLast">
                    <h5>
                        <a href="<?php echo url_for($comment->getToward(). "/show?id=" . $comment->getTowardId()); ?>#comment=<?php echo $comment->getId(); ?>"><?php echo truncate_text(strip_tags($comment->getMessage(ESC_XSSSAFE)), 100); ?></a>
                    </h5>
                    <?php include_partial('profile/writeBy', array('written' => $comment, 'size' => 24)); ?>
                </div>
            </li>
        <?php endforeach; ?>
    </ul>
</div>



