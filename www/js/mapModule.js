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

   $.getJSON(asmConfig.url + 'location/load', function(response){
                $.each(response, function(i, location){
                    asm.createMarkerLocation(new GLatLng(location.lat, location.lng), location.id);
                });
            });

}


    
