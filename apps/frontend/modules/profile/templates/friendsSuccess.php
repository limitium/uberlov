<?php use_javascript('friendShow'); ?>
<?php use_stylesheet('friend'); ?>
<script type="text/javascript">
    app.csrf.friend = "<?php echo $csrf; ?>";
</script>
<div id="fiendsMy">
    <?php if($friends->count()): ?>
    <h2>Мои друзья:</h2>
    <?php foreach ($firends as $friend): ?>
        <div>
            <?php echo link_to(image_tag($friend->getUserpic() ? '/images/userpic/' . $friend->getUserpic() : '/images/userpic/' . ($friend->getSex() ? 'male' : 'female') . '.png'), 'profile/show?id=' . $friend->getId(), array('class' => 'userpic')); ?>
            <div class="meta">
                <div>Кто:</div>
                <?php echo link_to($friend->getFirstName() . ' ' . $friend->getNickName() . ' ' . $friend->getLastName(), 'profile/show?id=' . $friend->getId()); ?>
                <div>Откуда:</div>
                <span><?php echo'Обнинск' ?></span>
            </div>
            <div class="actions">
                <?php echo link_to('убрать', 'profile/remove?id=' . $friend->getId(), array('class' => 'removeFriend', 'user' => $friend->getId())); ?>        
                <?php echo link_to('написать инбокс', 'profile/remove?id=' . $friend->getId(), array('class' => 'removeFriend', 'user' => $friend->getId())); ?>        
            </div>
        </div>
    <?php endforeach; ?>
    <?php else: ?>
    <h2>Тут вы еще одиноки.</h2>
    <?php endif; ?>
</div>