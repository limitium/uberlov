<?php $rating = $obj->getRating(); ?>
//@todo fix object type problem
<div class="rating" to="<?php echo isset($objType) ? $objType :  strtolower(get_class($obj)); ?>" id="rate<?php echo $obj->getId(); ?>">
    <a class ="plus<?php echo $obj->plused?' voted':''; ?>" href="">
        <img src="/images/plus.png">
    </a>
    <a class="minus<?php echo $obj->minused?' voted':''; ?>" href="">
        <img src="/images/minus.png">
    </a>
    <span>[<?php echo $rating; ?>]</span>
</div>