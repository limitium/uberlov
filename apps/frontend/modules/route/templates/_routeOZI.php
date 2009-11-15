<?php foreach ($route->getPoints() as $point): ?>
<? echo implode(',',array(
  $point->getLatitude(),
  $point->getLongitude(),
  0,
  -777,
  0,
  "\r\n"
  )); ?>
<?php endforeach; ?>