<?php use_helper('Countable'); ?>
<div class="profile">
    <div class="personal">
        <div class="userpic">
            <img alt="" src="<?php echo $profile->getUserpic() ? $profile->getUserpic() : '/images/userpic/' . ($profile->getSex() ? 'male' : 'female') . '.png' ?>" />
        </div>
        <div class="info">
            <p><?php echo $profile->getFirstName() ?>
                <?php echo $profile->getNickName() ? '[' . $profile->getNickName() . ']' : '' ?>
                <?php echo $profile->getLastName() ?>
                <a href="<?php echo url_for('profile/edit?id=' . $profile->getId()) ?>"><img alt="" src="/images/ui/edit.png" /></a>
            </p>
            <p>С нами с <?php echo $profile->getDateTimeObject('created_at')->format('d.m.Y') ?>.</p>
        </div>
    </div>

    <div class="tabPanel">
        <ul>
            <li><span href="#" id="tabProfile" class="selected">Профаил</span></li>
            <li><span href="#" id="tabComments">Комментарии (<i id="commentCounter"><?php echo $comments; ?></i>)</span></li>
            <li><span href="#" id="tabProfits">Отчеты (<i id="profitCounter"><?php echo $profits; ?></i>)</span></li>
        </ul>
    </div>

    <div class="achieves">
        <div>
            <?php use_javascript('voting'); ?>
                <p>
                    Родил<?php echo $profile->getSex() ? 'ся' : 'ась' ?>: <?php echo $profile->getDateTimeObject('birth_date')->format('j F Y') ?>
                </p>
                <p>Добавил<?php echo $profile->getSex() ? '' : 'а' ?> <?php echo $locations ?> мест,
                    написал<?php echo $profile->getSex() ? '' : 'а' ?> <?php echo comments2text($comments) ?> и
                <?php echo profits2text($profits) ?>.</p>
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
    </div>
</div>