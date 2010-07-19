function profitShow(){
    this.location = null;
    this.listeners = {};
    this.cfg = {
        baseZoom: 17,
        mapType: 'hybrid'
    };
}
profitShow.name = 'profitShow';
ModuleManager.add(profitShow);


profitShow.prototype.afterInit = function(){
    this.initListeners();
    this.resizeMap();
    this.toLocation();
}

profitShow.prototype.initListeners = function(){
    $('.location .name a').click(this.toLocation.delegate(this));
}
profitShow.prototype.resizeMap= function(){
    this.mm = app.getModule('mapModule');
    $('#map_canvas,#map').height(300)
    gm.event.trigger(this.mm.map, 'resize');
}

profitShow.prototype.toLocation = function(){
    var position = $('div.location').attr('position').split(';');
    this.mm.setOptions({
        zoom: this.cfg.baseZoom,
        center: new gm.LatLng(parseFloat(position[0]), parseFloat(position[1]))
    });
    this.mm.setType(this.cfg.mapType);
    return false;
}