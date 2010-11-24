<?php include_partial('location/location', array('location' => $location)) ?>
<!-- AddThis Button BEGIN -->
<script type="text/javascript">var addthis_config = {"data_track_clickback":true};</script>
<a class="addthis_button" href="http://www.addthis.com/bookmark.php?v=250&amp;username=uberlov"><img src="http://s7.addthis.com/static/btn/v2/lg-share-en.gif" width="125" height="16" alt="Bookmark and Share" style="border:0"/></a><script type="text/javascript" src="http://s7.addthis.com/js/250/addthis_widget.js#username=uberlov"></script>
<!-- AddThis Button END -->


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
            <?php echo $location->getDateTimeObject('created_at')->format('d.m.Y'); ?> | <?php echo link_to('тут не так', 'location/edit?id=' . $location->getCreatedBy()->getId()); ?> | <?php include_partial('wish', array('location' => $location)); ?>
                <a href="" class="commentShowAuthor" author="user<?php echo $location->getCreatedBy(); ?>">●</a>
            </div>
        </div>
    </div>

    <div class="tabPanel">
        <ul>
            <li><span href="#" id="tabComments" class="selected">Комментарии (<i id="commentCounter"><?php echo sizeof($comments); ?></i>)</span></li>
            <li><span href="#" id="tabProfits">Отчеты (<i id="profitCounter"><?php echo sizeof($profits); ?></i>)</span></li>
            <li><span href="#" id="tabEvents">События (<i id="eventCounter"><?php echo sizeof($events); ?></i>)</span></li>
        </ul>
    </div>
<?php include_partial('comment/comments', array('for' => 'location', 'form' => $form, 'comments' => $comments)); ?>


                <div id="profitContainer">
    <?php foreach ($profits as $profit): ?>
    <?php include_partial('profit/briefLocation', array('profit' => $profit)); ?>
    <?php endforeach; ?>
    <?php echo link_to('Написать', 'profit/new?location=' . $location->getId()); ?>
</div>
