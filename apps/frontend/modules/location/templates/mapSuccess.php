<?php use_helper('XssSafe'); ?>
<div class="map_location">
    <div class="location_header">
        <?php include_partial('vote/vote', array('obj' => $location)); ?>
        <h2><?php echo $location->getName() ?></h2>
    </div>
    <div class="info">
        <div class="text">
            <?php echo $location->getDescription(ESC_XSSSAFE) ?>
        </div>
        <div class="fish-list">
            <h5>Клюет:</h5>
            <?php if (sizeof($location->getFishes())): ?>
            <ul>
                <?php foreach ($location->getFishes() as $fish) : ?>
                <li><?php echo $fish->getName(); ?></li>
                <?php endforeach; ?>
            </ul>
            <?php else: ?>
            Не известно
            <?php endif ?>
        </div>
        <div class="photos">
            <ul class="thumbs">
                <?php foreach ($location->getPhotos() as $photo): ?>
                <li>
                    <a href="<?php echo $photo->getName(); ?>">
                        <img src="<?php echo $photo->getThumb(); ?>" style="" id="photo_<?php echo $photo->getId(); ?>">
                        <button style="display: none;">x</button>
                    </a>
                </li>
                <?php endforeach; ?>
            </ul>
        </div>
    </div>
    <div class="location_footer">
        комментариев <?php echo sizeof($location->getCommentLocation()); ?> |
        отчетов <?php echo sizeof($location->getProfit()); ?> | событий <?php echo sizeof($location->getFishEvent()); ?>
        |  <?php echo link_to('подробнее', 'location/show?id=' . $location->getId()) ?>
    </div>
</div>