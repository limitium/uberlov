<?php include_partial('location/location', array('location' => $profit->getLocation())) ?>

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
        <div class="best">Самая большая: <?php echo $profit->getFish(); ?> на <?php echo $profit->getWeight(); ?> кг.</div>
        <div>Использовались снасти: <?php echo $profit->getCordage(); ?></div>
        <div class="text"><?php echo $profit->getDescription(); ?></div>
        <div class="meta">
        <?php use_javascript('voting'); ?>
        <?php include_partial('vote/vote', array('obj' => $profit)); ?>
                <div>
                    <a href="" id="goToReply">□</a> <?php include_partial('profile/writeBy', array('written' => $profit)); ?> |
                <a href="" class="commentShowAuthor" author="user<?php echo $profit->getCreatedBy(); ?>">●</a>
            </div>
        </div>
    </div>

    <div class="tabPanel">
        <ul>
            <li><span href="#" id="tabComments" class="selected">Комментарии (<i id="commentCounter"><?php echo sizeof($comments); ?></i>)</span></li>
        </ul>
    </div>

<?php include_partial('comment/comments', array('for' => 'profit', 'form' => $form, 'comments' => $comments)); ?>


