{
locations:[
<?php $nb = count($locations); $i = 0; foreach ($locations as $location): ++$i ?>
{
"id": "<?php echo $location->getId() ?>",
"name": "<?php echo $location->getName() ?>",
"lat": "<?php echo $location->getLatitude() ?>",
"lng": "<?php echo $location->getLongitude() ?>"
}<?php echo $nb == $i ? '' : ',' ?>
<?php endforeach; ?>
],
routes:[
<?php $nb = count($routes); $i = 0; foreach ($routes as $route): ++$i ?>
{
"id": "<?php echo $route->getId() ?>",
"name": "<?php echo $route->getName() ?>",
"points": "<?php echo $route->getEncodedPoints() ?>",
}<?php echo $nb == $i ? '' : ',' ?>
<?php endforeach; ?>
]
}