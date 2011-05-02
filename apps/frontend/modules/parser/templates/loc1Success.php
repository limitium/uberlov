[
<?php $nb = count($locations); $i = 0; foreach ($locations as $location): ++$i ?>
    {
    "name": '<?php echo $location->name ?>',
    "lng": "<?php echo $location->x ?>",
    "lat": "<?php echo $location->y ?>",
    "mtype": "<?php echo $location->mtype ?>"
    }<?php echo $nb == $i ? '' : ',' ?>
    
<?php endforeach; ?>
