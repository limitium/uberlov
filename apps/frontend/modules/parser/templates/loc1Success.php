[
<?php $nb = count($locations); $i = 0; foreach ($locations as $location): ++$i ?>
    {
    "id": '<?php echo $location->id ?>',
    "name": '<?php echo $location->name ?>',
    "lng": "<?php echo $location->x ?>",
    "lat": "<?php echo $location->y ?>",
    "description": "<?php echo $location->description ?>",
    "mtype": "<?php echo $location->mtype ?>"
    }<?php echo $nb == $i ? '' : ',' ?>
    
<?php endforeach; ?>
