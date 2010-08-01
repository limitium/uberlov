<?php include_partial('location/location', array('location' => $profit->getLocation()))   ?>

<div class="profitFull">
    <h2><?php echo $profit->getName(); ?></h2>
    <div class="where">Ловили <?php echo $profit->getDateTimeObject('date')->format('d.m.Y'); ?> на <?php echo link_to($profit->getLocation()->getName(), 'location/show?id=' . $profit->getLocation()->getId()); ?></div>
    <table class="profitDetails">
        <thead>
            <tr>
                <th>Как</th>
                <th>Кого</th>
                <th>Сколько</th>
            </tr>
        </thead>
        <tbody>
            <?php $total = 0;
            $i = 0; ?>
            <?php foreach ($profit->getProfitDetail() as $det): ?>
            <?php $total += $det->qty;
                $i++; ?>
                <tr class="<?php echo fmod($i, 2) ? 'even' : 'odd' ?>">
                    <td><?php echo $det->getStyle(); ?></td>
                    <td><?php echo $det->getFish(); ?></td>
                    <td><?php echo $det->qty; ?></td>
                </tr>
            <?php endforeach; ?>
            </tbody>
            <tfoot>
                <tr>
                    <td></td>
                    <td></td>
                    <td><?php echo $total; ?></td>
                </tr>
            </tfoot>
        </table>
        <div class="best">Самая большая: <?php echo $profit->getFish(); ?> на <?php echo $profit->getBestWeight(); ?> кг.</div>
        <div>Использовались снасти: <?php echo $profit->getCordage(); ?></div>
        <div class="text"><?php echo $profit->getDescription(); ?></div>
        <div class="meta">
        <?php use_javascript('voting'); ?>
        <?php include_partial('vote/vote', array('obj' => $profit)); ?>
                <div>
                    <a href="" id="goToReply">□</a> Написал<?php echo $profit->getCreatedBy()->getSex() ? '' : 'а' ?> <?php echo link_to($profit->getCreatedBy()->getNickName(), 'profile/show?id=' . $profit->getCreatedBy()->getId()); ?>,
            <?php echo $profit->getDateTimeObject('created_at')->format('d.m.Y'); ?> |
                <a href="" class="commentShowAuthor" author="user<?php echo $profit->getCreatedBy(); ?>">●</a>
            </div>
        </div>
    </div>

    <div class="tabPanel">
        <ul>
            <li><span href="#" id="tabComments" class="selected">Комментарии (<i id="commentCounter"><?php echo sizeof($comments); ?></i>)</span></li>
        </ul>
    </div>

    <div id="commentContainer" class="selected" type="profit">
    <?php use_javascript('comment'); ?>
    <?php foreach ($comments as $comment): ?>
    <?php include_partial('comment/comment', array('comment' => $comment)); ?>
    <?php endforeach; ?>
    <?php include_partial('comment/form', array('form' => $commentForm, 'toward' => 'profit')) ?>
    <div id="commentReplyDefault" style="display:none">
        <a href="">Написать</a>
    </div>
</div>

