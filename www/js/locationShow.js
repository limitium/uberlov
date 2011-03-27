function locationShow(){
    this.location = null;
    this.listeners = {};
    this.cfg = {
        baseZoom: 17,
        mapType: 'hybrid'
    };
    this.position = $('div.locationMap').attr('position').split(';');
    app.startLat =parseFloat(this.position[0]);
    app.startLng =parseFloat(this.position[1]);
}
locationShow.name = 'locationShow';
ModuleManager.add(locationShow);


locationShow.prototype.afterInit = function(){
    fb('initing... locationShow' )
    this.initListeners();
    this.mm = app.getModule('mapModule');
    this.mm.$.bind('startMap',this.onStartMap.delegate(this));
}

locationShow.prototype.onStartMap = function(){
    this.resizeMap();
    this.toLocation();
}


locationShow.prototype.initListeners = function(){
    $('.locationMap .name a').click(this.toLocation.delegate(this));    
}

locationShow.prototype.resizeMap= function(){
    this.mm = app.getModule('mapModule');
    $('#map_canvas,#map').height(300)
    gm.event.trigger(this.mm.map, 'resize');
}

locationShow.prototype.toLocation = function(){
    this.mm.setOptions({
        zoom: this.cfg.baseZoom,
        center: new gm.LatLng(parseFloat(this.position[0]), parseFloat(this.position[1]))
    });
    this.mm.setType(this.cfg.mapType);
    return false;
}
