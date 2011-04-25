<?php $people = $pager->execute(); ?>
<ul>
    <?php foreach ($people as $user): ?>
        <?php $profile = $user->getProfile(); ?>
        <div>
            <div class="meta">
                <div>Кто:</div>
            <?php include_partial('profile/picnick', array('profile' => $profile,'size'=>48)); ?> <?php echo link_to($profile->getFirstName() . ' '  . $profile->getLastName(), 'profile/show?id=' . $profile->getId()); ?>
                <div>Откуда:</div>
                <span><?php echo'Обнинск' ?></span>
            </div>
        </div>
    <?php endforeach; ?>
</ul>
<?php $pager->display(); ?>
