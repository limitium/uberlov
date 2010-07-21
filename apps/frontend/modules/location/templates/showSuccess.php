<?php include_partial('location/location', array('location' => $location)) ?>

<div class="location">
    <div class="stat">
        <table>
            <tr><th>Глубина:</th><td><?php echo $location->getDepth() ?></td></tr>
            <tr><th>Течение:</th><td><?php echo $location->getLocationFlow() ?></td></tr>
            <tr><th>Рельеф:</th><td><?php echo $location->getLocationRelief() ?></td></tr>
            <tr><th>Дно:</th><td><?php echo $location->getLocationFundus() ?></td></tr>
            <tr><th>Наловили:</th><td><?php echo $location->getTotalProfit() ?></td></tr>
        </table>
        <?php if ($location->getIsFree()): ?>
            <p>Бесплатное</p>
        <?php else: ?>
                <p><?php echo $location->getPrice() ?></p>
        <?php endif; ?>
            </div>
            <div class="photo">
                <img alt="" src="<?php echo $location->getPhoto() ? $location->getPhoto() : '/images/location/default.jpg' ?>" />
            </div>

            <div class="description"><?php echo $location->getDescription(); ?></div>

            <div class="meta">
        <?php use_javascript('voting'); ?>
        <?php include_partial('vote/vote', array('obj' => $location)); ?>
                <div>
                    <a href="" id="goToReply">□</a> Добавил<?php echo $location->getCreatedBy()->getSex() ? '' : 'а' ?> <?php echo link_to($location->getCreatedBy()->getNickName(), 'profile/show?id=' . $location->getCreatedBy()->getId()); ?>,
            <?php echo $location->getDateTimeObject('created_at')->format('d.m.Y'); ?> | <?php echo link_to('тут не так', 'location/edit?id=' . $location->getCreatedBy()->getId()); ?> | <a href="">в мои места</a>
                <a href="" class="commentShowAuthor" author="user<?php echo $location->getCreatedBy(); ?>">●</a>
            </div>
        </div>
    </div>

    <div class="tabPanel">
        <ul>
            <li><span href="#" id="tabComments" class="selected">Комментарии (<i id="commentCounter"><?php echo sizeof($comments); ?></i>)</span></li>
            <li><span href="#" id="tabProfits">Отчеты (<i id="profitCounter"><?php echo sizeof($profits); ?></i>)</span></li>
        </ul>
    </div>


    <div id="commentContainer" class="selected" type="location">
    <?php use_javascript('comment'); ?>
    <?php foreach ($comments as $comment): ?>
    <?php include_partial('comment/comment', array('comment' => $comment)); ?>
    <?php endforeach; ?>
    <?php $cl = new CommentLocation();
                    $cl->setLocation($location->getRawValue()) ?>
    <?php include_partial('comment/form', array('form' => new CommentLocationForm($cl), 'toward' => 'location')) ?>
                    <div id="commentReplyDefault" style="display:none">
                        <a href="">Написать</a>
                    </div>
                </div>

                <div id="profitContainer">                
    <?php foreach ($profits as $profit): ?>
    <?php include_partial('profit/brief', array('profit' => $profit)); ?>
    <?php endforeach; ?>
    <?php echo link_to('Написать', 'profit/new'); ?>
</div>
