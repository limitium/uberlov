<script type="text/javascript">
    app.csrf.wishlist = "<?php echo $csrf; ?>";
</script>
<?php use_javascript('wishes'); ?>

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
        <?php echo image_tag($location->getPhoto() ? $location->getPhoto() : '/images/location/default.jpg'); ?>
    </div>

    <div class="description"><?php echo $location->getDescription(); ?></div>

    <div class="meta">
        <?php use_javascript('voting'); ?>
        <?php include_partial('vote/vote', array('obj' => $location)); ?>
        <div>
            <a href="" id="goToReply">□</a> <?php include_partial('profile/addBy', array('added' => $location)); ?> | <?php echo link_to('тут не так', 'location/edit?id=' . $location->getCreatedBy()->getId()); ?> <?php include_partial('wish', array('location' => $location)); ?>
            | <a href="" class="commentShowAuthor" author="user<?php echo $location->getCreatedBy(); ?>">●</a>
        </div>
    </div>
</div>


<div class="tabPanel">
    <ul>
        <li><span href="#" id="commentTab" class="selected">Комментарии (<i id="commentCounter"><?php echo sizeof($comments); ?></i>)</span></li>
        <li><span href="#" id="profitTab">Отчеты (<i id="profitCounter"><?php echo sizeof($profits); ?></i>)</span></li>
        <li><span href="#" id="eventTab">События (<i id="eventCounter"><?php echo sizeof($events); ?></i>)</span></li>
    </ul>
</div>

<?php include_partial('commentTab', array('form' => $form, 'comments' => $comments)); ?>
<?php include_partial('profitTab', array('profits' => $profits, 'location' => $location)); ?>
<?php include_partial('eventTab', array('events' => $events, 'location' => $location)); ?>




