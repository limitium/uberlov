<?php use_javascript('/swfupload/swfupload'); ?>
<?php use_javascript('/swfupload/swfupload.cookies.js'); ?>

<?php use_javascript('photoUpload'); ?>
<?php use_stylesheet('photoUpload'); ?>
<?php use_javascript('photoModule'); ?>
<?php use_stylesheet('photo'); ?>

<div class="photowraper">
    <div id="buttonPlaceholder">
        <div id="uploadButton"></div>
    </div>
    <table id="photoList"></table>
    <?php $photos = $object->getPhotos(); ?>
    <div class="photos"><div class="image"><img src="<?php echo $photos->count() ? $photos->getFirst()->getName() : url_for('/images/location/default.jpg'); ?>"/></div>
        <ul class="thumbs">
            <?php foreach ($photos as $photo): ?>
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
