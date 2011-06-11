<script type="text/javascript">
    app.csrf.wishlist = "<?php echo $csrf; ?>";
</script>
<?php use_helper('XssSafe') ?>
<?php use_javascript('wishes'); ?>

<?php include_partial('location/location', array('location' => $location)) ?>

<?php include_partial('default/ilike', array('url' => '@location_show?id=' . $location->getId())) ?>





<?php slot('title', $location->getName()) ?>
<div class="location">
    <div class="stat">
        <table>
            <tr><td>Глубина:</td><td><?php echo $location->depth?$location->getDepth().' м.':'' ?></td></tr>
            <tr><td>Течение:</td><td><?php echo $location->getLocationFlow() ?></td></tr>
            <tr><td>Рельеф:</td><td><?php echo $location->getLocationRelief() ?></td></tr>
            <tr><td>Дно:</td><td><?php echo $location->getLocationFundus() ?></td></tr>
            <tr><td>Наловили:</td><td><?php echo $location->getTotalProfit() ?> кг.</td></tr>
        </table>
        <div class="fish">
            <?php if ($fishes->count()): ?>
                <p>Клюет</p>
                <ul>
                    <?php foreach ($fishes as $fish): ?>
                        <li><?php echo $fish->name; ?></li>
                    <?php endforeach; ?>
                </ul>
            <?php endif; ?>
        </div>
        <?php if ($location->getIsFree()): ?>
            <p class="free"></p>
        <?php else: ?>
            <div class="price">
                <p class="icon"></p>
                <?php echo $location->getPrice(ESC_XSSSAFE) ?>
            </div>
        <?php endif; ?>
    </div>
    <div class="photo">
        <?php include_partial('photo/show', array('object' => $location)) ?>
    </div>

    <div class="description"><?php echo $location->getDescription(ESC_XSSSAFE); ?></div>

    <div class="meta">
        <?php use_javascript('voting'); ?>
        <?php include_partial('vote/vote', array('obj' => $location)); ?>
        <div>
            <a href="" id="goToReply">□</a> <?php include_partial('profile/addBy', array('added' => $location)); ?>
            <?php if (!$sf_user->isAnonymous()): ?>
                | <?php echo link_to('тут не так', 'location/edit?id=' . $location->getId()); ?>
            <?php endif; ?>
            <?php include_partial('wish', array('location' => $location)); ?>
            | <a href="" class="commentShowAuthor" author="user<?php echo $location->getCreatedBy(); ?>">●</a>
        </div>
    </div>
</div>


<?php use_javascript('tabPanel'); ?>
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




