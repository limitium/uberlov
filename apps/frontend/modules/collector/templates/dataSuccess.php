[
<?php $nb = count($locations); $i = 0; foreach ($locations as $location): ++$i ?>
{
"id": "<?php echo $location->getId() ?>",
"name": "<?php echo $location->getName() ?>",
"lat": "<?php echo $location->getLat() ?>",
"lng": "<?php echo $location->getLng() ?>"
}<?php echo $nb == $i ? '' : ',' ?>
<?php endforeach; ?>
]

