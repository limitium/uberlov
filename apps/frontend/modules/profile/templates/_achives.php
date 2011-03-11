<div class="achieves">
    <div>
        <?php use_javascript('voting'); ?>
        <p>
            С нами с <?php echo $profile->getDateTimeObject('created_at')->format('d.m.Y') ?>.
        </p>
        <p>Добавил<?php echo $profile->getSex() ? '' : 'а' ?> <?php echo sizeof($locations) ?> мест,
            написал<?php echo $profile->getSex() ? '' : 'а' ?> <?php echo comments2text(sizeof($comments)) ?> и
            <?php echo profits2text(sizeof($profits)) ?>.</p>
        <p>Имеет силу голоса <?php echo $profile->getForce(); ?>.</p>
        <br />
        <br />
        <p>Поймал <?php echo $total; ?>кг рыбы
            <?php if ($best['qty'] > 0): ?>
                и самую большую <?php echo $best['name']; ?> на <?php echo $best['qty']; ?>кг поймал на "<?php echo link_to($best['location']->getName(), 'location/show?id=' . $best['location']->getId()); ?>"
            <?php endif; ?>
            .</p>
        <br />
        <?php if ($profile->getFishes()->count()): ?>
            <p>
                Любимая рыба:
            </p>
            <ul>
                <?php foreach ($profile->getFishes() as $fish): ?>
                    <li><?php echo $fish->getFish(); ?></li>
                <?php endforeach; ?>
            </ul>
        <?php endif; ?>
        <?php if ($profile->getStyles()->count()): ?>
            <p>
                Любимые стили:
            </p>
            <ul>
                <?php foreach ($profile->getStyles() as $style): ?>
                    <li><?php echo $style->getStyle(); ?></li>
                <?php endforeach; ?>
            </ul>
        <?php endif; ?>
    </div>

    <?php if (!$sf_user->isAnonymous()): ?>
        <?php if ($sf_user->getProfile() != $profile): ?>
            <?php echo link_to('Написать инбокс', 'inbox/new?whom=' . $profile->getNickName()); ?>        
        <?php endif; ?>
    <?php endif; ?>


    <?php include_partial('friends', array('profile' => $profile, 'csrf' => $csrf)); ?>
</div>