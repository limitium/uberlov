<?php use_javascript('lib/jquery.colorbox.js'); ?>
<?php use_javascript('photoModule'); ?>
<?php use_stylesheet('lib/colorbox'); ?>
<?php use_stylesheet('photo'); ?>

<div class="photos">
    <?php $photos = $object->getPhotos(); ?>
    <?php if (sizeof($photos)): ?>
    <ul class="thumbs">
        <?php foreach ($photos as $photo): ?>
        <li>
            <a class="location_photo" href="<?php echo $photo->getName(); ?>">
                <img src="<?php echo $photo->getThumb(); ?>" style="" id="photo_<?php echo $photo->getId(); ?>">
            </a>
        </li>
        <?php endforeach; ?>
    </ul>
    <?php endif; ?>
</div>
