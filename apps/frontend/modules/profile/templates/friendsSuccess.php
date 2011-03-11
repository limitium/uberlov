<?php use_javascript('friendShow'); ?>
<script type="text/javascript">
    app.csrf.friend = "<?php echo $csrf; ?>";
</script>

<div id="fiendsMy">
    <h4>Мои друзья:</h4>
    <?php foreach ($sf_user->getProfile()->getFriends() as $friend): ?>
        <div><?php echo link_to($friend->getNickName(), 'profile/show?id=' . $friend->getId()); ?>
            <?php echo link_to('убрать', 'profile/remove?id=' . $friend->getId(), array('class' => 'removeFriend', 'user' => $friend->getId())); ?>        
            <?php echo link_to('написать инбокс', 'profile/remove?id=' . $friend->getId(), array('class' => 'removeFriend', 'user' => $friend->getId())); ?>        
        </div>
    <?php endforeach; ?>
</div>