<script>
app.imports = {
<?php $nb = count($locations); $i = 0; foreach ($locations as $location): ++$i ?>
"<?php echo $i ?>":{
"id": "<?php echo $i ?>",
"name": "<?php echo $location['name'] ?>",
"description": "<?php echo $location['description'] ?>",
"lat": "<?php echo $location['lat'] ?>",
"lng": "<?php echo $location['lng'] ?>"
}<?php echo $nb == $i ? '' : ',' ?>
<?php endforeach; ?>
}
</script>

<?php use_javascript('importLocModule');  ?>
<?php include_partial('map') ?>
