<?php foreach ($cities as $city): ?>
<?php echo $city->name.'|'.$city->getRegion()->name.'|'.$city->id."\n";?>
<?php endforeach; ?>