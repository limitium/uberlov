<?php use_javascript('http://maps.google.com/maps/api/js?sensor=false');  ?>
<?php use_javascript('mapModule');  ?>
<div id="map">
  <div>
    <input id="new_obj" type="button" value="+">
    <input id="new_ok" type="button" value="ok">
    <input id="new_cancel" type="button" value="cancel">
    <div id="new_cont">
      <input id="new_location" type="button" value="new location">
      <input id="new_point" type="button" value="new point object">
      <input id="new_line" type="button" value="new line object">
      <input id="new_polygon" type="button" value="new polygon object">
    </div>
  </div>
  <div id="map_canvas">
  </div>
</div>