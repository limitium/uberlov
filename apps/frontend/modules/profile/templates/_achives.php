<div class="achieves">
    <div>
        <?php use_javascript('voting'); ?>
        <p>
            Родил<?php echo $profile->getSex() ? 'ся' : 'ась' ?>: <?php echo $profile->getDateTimeObject('birth_date')->format('j F Y') ?>
        </p>
        <p>Добавил<?php echo $profile->getSex() ? '' : 'а' ?> <?php echo sizeof($locations) ?> мест,
            написал<?php echo $profile->getSex() ? '' : 'а' ?> <?php echo comments2text(sizeof($comments)) ?> и
            <?php echo profits2text(sizeof($profits)) ?>.</p>
        <p>Заработал<?php echo $profile->getSex() ? '' : 'а' ?> карму <?php include_partial('vote/vote', array('obj' => $profile, 'objType' => 'profile')); ?>
            и имеет силу голоса <?php echo $profile->getForce(); ?>.</p>
        <p>Поймал <?php echo $total; ?>кг рыбы
            <?php if ($best['qty'] > 0): ?>
                и самую большую <?php echo $best['name']; ?> на <?php echo $best['qty']; ?>кг поймал на "<?php echo link_to($best['location']->getName(), 'location/show?id=' . $best['location']->getId()); ?>"
            <?php endif; ?>
                .</p>
        <?php if ($profile->getFishes()->count()): ?>
                    <p>
                        Любимая рыба:
                    </p>
                    <ul>
            <?php foreach ($profile->getFishes() as $fish): ?>
                        <li><?php echo $fish; ?></li>
            <?php endforeach; ?>
                    </ul>
        <?php endif; ?>
        <?php if ($profile->getStyles()->count()): ?>
                            <p>
                                Любимые стили:
                            </p>
                            <ul>
            <?php foreach ($profile->getStyles() as $style): ?>
                                <li><?php echo $style; ?></li>
            <?php endforeach; ?>
                            </ul>
        <?php endif; ?>
                            </div>
    <?php echo link_to1('Написать инбокс', 'inbox/new?whom=' . $profile->getNickName()); ?>
</div>