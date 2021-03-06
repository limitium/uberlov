<?php use_helper('XssSafe') ?>
<div id="comment<?php echo $comment->getId(); ?>" class="comment">
    <div class="commentMessage" author="user<?php echo $comment->getCreatedBy()->getId(); ?>"><?php echo $comment->getMessage(ESC_XSSSAFE); ?></div>
    <div class="commentBar">
        <?php include_partial('vote/vote', array('obj' => $comment, 'objType' => 'Comment')); ?>
        <?php $component = substr($comment->getTable()->getComponentName(), 7);
        $getter = "get" . $component; ?>
        <a href="<?php echo url_for(strtolower($component == "FishEvent" ? "Event" : $component) . "/show?id=" . $comment->$getter()->id); ?>#comment=<?php echo $comment->getId(); ?>">#</a> <?php include_partial('profile/writeBy', array('written' => $comment)); ?>
    </div>
</div>