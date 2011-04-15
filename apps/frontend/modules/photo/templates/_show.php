<?php use_javascript('photoModule'); ?>
<?php use_stylesheet('photo'); ?>

<div class="photos">
    <div class="image"><img src=""/></div>
    <ul class="thumbs">
        <?php foreach ($object->getPhotos() as $photo): ?>
            <li>
                <a href="<?php echo $photo->getName(); ?>">
                <img src="<?php echo $photo->getThumb(); ?>" style="" id="photo_<?php echo $photo->getId(); ?>">
                <button style="display: none;">x</button>
                </a>
            </li>
        <?php endforeach; ?>
    </ul>
</div>
