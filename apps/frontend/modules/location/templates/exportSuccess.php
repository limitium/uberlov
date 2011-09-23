<?php use_helper('Text'); ?>
<?php use_helper('XssSafe') ?>
<?php echo "OziExplorer Waypoint File Version 1.1\r\nWGS 84\r\nReserved 2\r\nmagellan\r\n"; ?>
<?php include_partial('locationOZI', array('location' => $location)); ?>