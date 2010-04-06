<div class="rating" to="<?php echo $objType; ?>" id="rate<?php echo $obj->getId(); ?>">
    <a class ="plus" href="">
        <img src="/images/plus.png">
    </a>
    <a class="minus" href="">
        <img src="/images/minus.png">
    </a>
    <span>[<?php echo $obj->getRating(); ?>]</span>
</div>