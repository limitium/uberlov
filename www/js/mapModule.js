gm = google.maps;

function mapModule(){

    this.initMap();
}
ModuleManager.add(mapModule);

mapModule.prototype.initMap = function(){
    var latlng = new gm.LatLng(55.043561639001645, 36.627886718750005);
    var opt = {
        zoom: 8,
        center: latlng,
        mapTypeId: gm.MapTypeId.ROADMAP
    };
    this.map = new gm.Map($("#map_canvas").get(0), opt);

    this.loadData();
}

mapModule.prototype.loadData = function(){
    var self = this;
    app.getJSON('/collector/data', function(data){
        $.each(data,function(){
            self.createLocation({
                title:this.name,
                id:this.id,
                position:new gm.LatLng(parseFloat(this.lat),parseFloat(this.lng))
            });
        });
    });
}

mapModule.prototype.addLocationListener = function(location){
    location.listenerClick = gm.event.addListener(location,'click',this.onLocationClick.delegate(this,location));
}

mapModule.prototype.onLocationClick = function(e,location){
    var loader = this.showLoader(location.getPosition(),'<img src="/images/loader-small.gif" />');
    gm.event.removeListener(location.listenerClick);
    app.getForm('/location/show/id/'+location.id,this.showInfo.delegate(this,location,loader));
}

mapModule.prototype.showInfo =  function(html ,location,loader){

    this.openInfo(location,html);

    gm.event.addListener(location.infoWindow,'closeclick',this.addLocationListener.delegate(this,location));
    loader.remove();
}

mapModule.prototype.createLocation = function(opt){
    var location = this.createMarker(opt);
    this.addLocationListener(location);
}

mapModule.prototype.createMarker = function(opt){
    opt.map = this.map;
    return new gm.Marker(opt);
}


mapModule.prototype.removeMarker = function(marker){
    marker.infoWindow && marker.infoWindow.close();
    marker.setMap(null);
}

mapModule.prototype.openInfo= function(marker,info){
    marker.infoWindow = new gm.InfoWindow({
        content: info
    });
    marker.infoWindow.open(this.map,marker);
    return marker.infoWindow;
}

mapModule.prototype.setCenter = function(point){
    this.map.setCenter(point);
}

mapModule.prototype.showLoader = function(point,html){    
    return new mapOverlay(point,html,this.map,'overlayImage');
}




function mapOverlay(point,html,map,overlay){
    this.point = point;
    this.html = html;
    this.overlay = overlay;
    this.div = null;
    this.setMap(map);
}

mapOverlay.prototype = new gm.OverlayView();
mapOverlay.prototype.constructor = mapOverlay;
mapOverlay.prototype.onAdd = function(){
    var div = document.createElement('DIV');
    div.innerHTML = this.html;
    div.style.border = "0px solid none";
    div.style.position = "absolute";
    this.div = div;

    var panes = this.getPanes();
    panes[this.overlay].appendChild(div);
}
mapOverlay.prototype.draw = function(){
    var overlayProjection = this.getProjection();
    
    var point = overlayProjection.fromLatLngToDivPixel(this.point);

    this.div.style.left = (point.x) + "px";
    this.div.style.top = (point.y) + "px";

}
mapOverlay.prototype.onRemove = function(){
    this.div.parentNode.removeChild(this.div);
    this.div = null;
}
mapOverlay.prototype.remove = function(){
    this.setMap(null);
}
