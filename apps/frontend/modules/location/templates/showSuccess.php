<script type="text/javascript">
    csrf.wishlist = "<?php echo $csrf; ?>";
</script>
<?php use_helper('XssSafe') ?>
<?php use_javascript('wishes'); ?>

<?php include_partial('location/location', array('location' => $location)) ?>

<div class="ilike clear_fix">
    <?php include_partial('default/ilike', array('url' => '@location_show?id=' . $location->getId())) ?>
    <div class="export">
        <div
            class="ozi"><?php echo link_to(image_tag('/images/icons/location/ozi.gif'), '@location_export?id=' . $location->getId()); ?></div>
    </div>
</div>




<?php slot('title', $location->getName()) ?>
<div class="location">
    <div class="stat">
        <table>
            <tr>
                <td>Глубина:</td>
                <td>
                    <?php if ($location->depth): ?>
                    <?php echo $location->getDepth() ?> м.
                    <?php else: ?>
                    — <?php echo link_to('указать глубину', 'location/edit?id=' . $location->getId()); ?>
                    <?php endif; ?>
                </td>
            </tr>
            <tr>
                <td>Течение:</td>
                <td>
                    <?php if ($location->location_flow_id): ?>
                    <?php echo $location->getLocationFlow() ?>
                    <?php else: ?>
                    — <?php echo link_to('указать течение', 'location/edit?id=' . $location->getId()); ?>
                    <?php endif; ?>
                </td>
            </tr>
            <tr>
                <td>Рельеф:</td>
                <td>
                    <?php if ($location->location_relief_id): ?>
                    <?php echo $location->getLocationRelief() ?>
                    <?php else: ?>
                    — <?php echo link_to('указать рельеф', 'location/edit?id=' . $location->getId()); ?>
                    <?php endif; ?>
                </td>
            </tr>
            <tr>
                <td>Дно:</td>
                <td><?php if ($location->location_fundus_id): ?>
                    <?php echo $location->getLocationFundus() ?>
                    <?php else: ?>
                    — <?php echo link_to('указать тип дна', 'location/edit?id=' . $location->getId()); ?>
                    <?php endif; ?>
                </td>
            </tr>
            <tr>
                <td>Всего поймали:</td>
                <td>
                    <?php if (sizeof($profits)): ?>
                    <?php echo $location->getTotalProfit() ?> кг.
                    <?php else: ?>
                    — <?php echo link_to('добавить отчет', 'profit/new?location=' . $location->getId()); ?>
                    <?php endif; ?>
                </td>
            </tr>
            <tr>
                <td>Средний улов:</td>
                <td>
                    <?php if (sizeof($profits)): ?>
                    <?php echo $location->getAverageProfit() ?> кг.
                    <?php else: ?>
                    — <?php echo link_to('добавить отчет', 'profit/new?location=' . $location->getId()); ?>
                    <?php endif; ?>
                    </td>
            </tr>
            <tr>
                <td>Сезон:</td>
                <td>
                    <?php if (sizeof($profits)): ?>
                    <?php echo $location->isSummer() ? "Летний" : "Зимний" ?>
                    <?php else: ?>
                    — <?php echo link_to('добавить отчет', 'profit/new?location=' . $location->getId()); ?>
                    <?php endif; ?>
                </td>
            </tr>
        </table>
        <div class="fish">
            <h5>Клюет:</h5>
            <?php if ($fishes->count()): ?>
            <ul>
                <?php foreach ($fishes as $fish): ?>
                <li><?php echo $fish->name; ?></li>
                <?php endforeach; ?>
            </ul>
            <?php else: ?>
            Не известно
            <?php endif; ?>
        </div>
        <div class="clear_fix"></div>
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
        <?php if (!$sf_user->isAnonymous()): ?>
        <?php include_partial('photo/upload', array('object' => $location)); ?>
        <?php else: ?>
        <?php include_partial('photo/show', array('object' => $location)); ?>
        <?php endif; ?>
    </div>

    <div class="description"><?php echo $location->getDescription(ESC_XSSSAFE); ?></div>

    <div class="meta">
        <?php use_javascript('voting'); ?>
        <?php include_partial('vote/vote', array('obj' => $location)); ?>
        <div>
            <a href="" id="goToReply">□</a> <?php include_partial('profile/addBy', array('added' => $location)); ?>
            | <?php echo link_to('тут не так', 'location/edit?id=' . $location->getId()); ?>
            <?php include_partial('wish', array('location' => $location)); ?>
            | <a href="" class="commentShowAuthor" author="user<?php echo $location->getCreatedBy()->getId(); ?>">●</a>
        </div>
    </div>
</div>

<?php use_javascript('tabPanel'); ?>
<div class="tabPanel">
    <ul>
        <li><span href="#" id="commentTab" class="selected">Комментарии (<i
            id="commentCounter"><?php echo sizeof($comments); ?></i>)</span></li>
        <li><span href="#" id="profitTab">Отчеты (<i id="profitCounter"><?php echo sizeof($profits); ?></i>)</span></li>
        <li><span href="#" id="eventTab">События (<i id="eventCounter"><?php echo sizeof($events); ?></i>)</span></li>
    </ul>
</div>

<?php include_partial('commentTab', array('form' => $form, 'comments' => $comments)); ?>
<?php include_partial('profitTab', array('profits' => $profits, 'location' => $location)); ?>
<?php include_partial('eventTab', array('events' => $events, 'location' => $location)); ?>




