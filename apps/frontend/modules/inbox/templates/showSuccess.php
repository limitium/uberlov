<script type="text/javascript">
    app.csrf.inbox = "<?php echo $csrf; ?>";
</script>
<?php use_javascript('inbox'); ?>
<div id="inbox">
    <h2><?php echo $inbox->getName(); ?></h2>
    <p><?php echo $inbox->getMessage(); ?></p>
    <div class="meta">
        <div>
            <a href="" id="goToReply">□</a> Написал<?php echo $inbox->getCreatedBy()->getSex() ? '' : 'а' ?> <?php echo link_to($inbox->getCreatedBy()->getNickName(), 'profile/show?id=' . $inbox->getCreatedBy()->getId()); ?>,
            <?php echo $inbox->getDateTimeObject('created_at')->format('d.m.Y'); ?> | 
            <a href="" class="commentShowAuthor" author="user<?php echo $inbox->getCreatedBy(); ?>">●</a>
        </div>
    </div>
    <div class="tabPanel">
        <ul>
            <li><span href="#" id="tabComments" class="selected">Комментарии (<i id="commentCounter"><?php echo sizeof($comments); ?></i>)</span></li>
        </ul>
    </div>

    <div id="commentContainer" class="selected" type="inbox">
        <?php use_javascript('comment'); ?>
        <?php foreach ($comments as $comment): ?>
        <?php include_partial('comment/commentNoVote', array('comment' => $comment)); ?>
        <?php endforeach; ?>
        <?php include_partial('comment/form', array('form' => $commentForm, 'toward' => 'inbox')) ?>
                <div id="commentReplyDefault" style="display:none">
                    <a href="">Написать</a>
                </div>
            </div>
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

