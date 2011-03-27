<?php use_helper('text'); ?>

<script type="text/javascript">
    app.csrf.inbox = "<?php echo $csrf; ?>";
</script>
<?php use_javascript('inbox'); ?>

<div id="inbox">
    <h2><?php echo $inbox->getName(); ?></h2>
    <div class=qweqwe"><?php echo simple_format_text($inbox->getMessage()); ?></div>
    <div class="meta">
        <div>
            <a href="" id="goToReply">□</a> 
            <?php include_partial('profile/writeBy', array('written' => $inbox)); ?>
            <a href="" class="commentShowAuthor" author="user<?php echo $inbox->getCreatedBy()->getId(); ?>">●</a>
        </div>
    </div>
    <div class="tabPanel">
        <ul>
            <li><span href="#" id="tabComments" class="selected">Комментарии (<i id="commentCounter"><?php echo sizeof($comments); ?></i>)</span></li>
        </ul>
    </div>

    <?php include_partial('comment/tree', array('form' => $form, 'comments' => $comments, 'type' => 'noVote')); ?>
</div>

<div id="inboxControl">
    <a href="" class="inboxDelete" inbox="<?php echo $inbox->getId(); ?>">Удалить инбокс</a>
    <?php if ($inbox->isOwner()): ?>
        Добавить
        <input id="inboxAdd" type="text" />
    <?php endif; ?>
    Подписчики:
    <ul>
        <?php foreach ($inboxed as $profile): ?>
            <li profile="<?php echo $profile->getId(); ?>"><?php echo link_to($profile->getNickName(), 'profile/show?id=' . $profile->getId()); ?><?php if ($inbox->isOwner()): ?><a href="" class="delete"> x </a><?php endif; ?></li>
            <?php endforeach; ?>
    </ul>
</div>

