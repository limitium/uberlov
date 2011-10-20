<?php use_helper('Text') ?>
<?php use_helper('XssSafe') ?>
<div class="menu_block">
    <h4>О чем говорят:</h4>
    <ul>
        <?php foreach ($comments as $comment): ?>
            <li>
                <div class="commentLast">
                    <?php $component = substr($comment->getTable()->getComponentName(), 7);
                    $getter = "get" . $component; ?>
                    <h5>
                        <a href="<?php echo url_for(strtolower($component == "FishEvent" ? "Event" : $component) . "/show?id=" . $comment->$getter()->id); ?>#comment=<?php echo $comment->getId(); ?>"><?php echo truncate_text($comment->getMessage(ESC_XSSSAFE), 100); ?></a>
                    </h5>
                    <span>
                        <?php include_partial('profile/writeBy', array('written' => $comment, 'size' => 24)); ?>
                    </span>
                </div>
            </li>
        <?php endforeach; ?>
    </ul>
</div>



