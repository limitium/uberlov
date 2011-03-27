<?php $rating = $obj->getRating(); ?>
<div class="rating" to="<?php echo isset($objType) ? $objType : $obj->getTable()->getComponentName(); ?>" id="rate<?php echo $obj->getId(); ?>">
    <a class ="plus<?php echo $obj->plused ? ' voted' : ''; ?>" href="">
        <?php echo image_tag("/images/plus.png"); ?>
    </a>
    <a class="minus<?php echo $obj->minused ? ' voted' : ''; ?>" href="">
        <?php echo image_tag("/images/minus.png"); ?>
    </a>
    <span>[<?php echo $rating; ?>]</span>
</div>