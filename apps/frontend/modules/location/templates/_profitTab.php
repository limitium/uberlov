<div id="profitContainer">
    <?php foreach ($profits as $profit): ?>
    <?php include_partial('profit/briefLocation', array('profit' => $profit)); ?>
    <?php endforeach; ?>
    <?php if ($sf_user->isAnonymous()): ?>
    Что б написать отчет надо <a href="<?php echo url_for('@sf_guard_signin');?>">войти</a> или <a
        href="<?php echo url_for('@apply');?>">зарегистрироваться</a>
    <?php else: ?>
    <a href="<?php echo url_for('profit/new?location=' . $location->getId()); ?>" class="button_01">
                <span class="border_l">
                    <span class="border_r">
                        <span class="btn_bg">НАПИСАТЬ</span>
                    </span>
                </span>
    </a>
    <?php endif; ?>

</div>