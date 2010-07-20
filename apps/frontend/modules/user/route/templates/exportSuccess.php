<?php use_helper('Text'); ?>
<? echo "OziExplorer Track Point File Version 2.0\r\nWGS 84\r\nAltitude is in Feet\r\nReserved 3\r\n0,2,255,".$route->getDescription().",1\r\n0\r\n"; ?>
<?php include_partial('routeOZI', array('route' => $route)); ?>