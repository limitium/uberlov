<?php use_javascript('http://maps.google.com/maps/api/js?sensor=false');  ?>
<?php use_javascript('mapModule');  ?>
<?php use_javascript('markerModule');  ?>
<div id="map">    
    <div id="map_canvas">
    </div>
</div>

<?php slot('content_menu') ?>
<div>
    <a id="new_location" class="dashed" href="">new ocation</a>
</div>
<?php end_slot(); ?>