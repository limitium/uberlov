<?php if (!$sf_user->isAnonymous()): ?>
    <?php if ($sf_user->getProfile() != $location->getCreatedBy()): ?>
|
        <?php if ($sf_user->getProfile()->isWishes($location->getId())): ?>
            <a class="fromWishes" location="<?php echo $location->getId(); ?>" href="">убрать</a>
        <?php else: ?>
            <a class="toWishes" location="<?php echo $location->getId(); ?>" href="">в мои места</a>
        <?php endif; ?>

    <?php endif; ?>
<?php endif; ?>