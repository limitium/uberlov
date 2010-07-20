<div class="rating"><img src="/images/plus.png"> [ 15 ] <img src="/images/minus.png"></div>
<p class="loc_name"><?php echo $route->getName() ?><br>Не более N символов</p>
<div class="loc_discr"><?php echo $route->getDescription() ?><br>Не более M символов, введено огр<br>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam .
</div>
<div class="bottom">&nbsp;
<div class="comments"><p class="comments_count"> 12 / <b>5</b></p></div>
<div class="export"><a href="<?php echo url_for('route/export?id='.$route->getId()); ?>">Экспорт в...</a></div>
</div>