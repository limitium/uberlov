{"added":[
<?php $nb = count($added); $i = 0; foreach ($added as $profile): ++$i ?>
{
"id": "<?php echo $profile->getId() ?>",
"name": "<?php echo $profile->getNickName() ?>"
}<?php echo $nb == $i ? '' : ',' ?>
<?php endforeach; ?>
]}
