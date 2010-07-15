function locationShow(){
    this.location = null;
    this.listeners = {};
    this.cfg = {
        baseZoom: 17,
        mapType: 'hybrid'
    };
}
locationShow.name = 'locationShow';
ModuleManager.add(locationShow);


locationShow.prototype.afterInit = function(){
    this.initListeners();
    this.resizeMap();
    this.toLocation();
}

locationShow.prototype.initListeners = function(){
    $('.location .name a').click(this.toLocation.delegate(this));
    $('#tabComments').click(this.showComments.delegate(this));
    $('#tabProfits').click(this.showProfits.delegate(this));
}
locationShow.prototype.resizeMap= function(){
    this.mm = app.getModule('mapModule');
    $('#map_canvas,#map').height(300)
    gm.event.trigger(this.mm.map, 'resize');
}

locationShow.prototype.toLocation = function(){
    this.mm.setOptions({
        zoom: this.cfg.baseZoom,
        center: new gm.LatLng(parseFloat(app.locationShow.lat), parseFloat(app.locationShow.lng))
    });
    this.mm.setType(this.cfg.mapType);
    return false;
}
locationShow.prototype.showComments = function(){
    $('#tabComments').addClass('selected')
    $('#commentContainer').addClass('selected')
    
    $('#tabProfits').removeClass('selected')
    $('#profitContainer').removeClass('selected')
    return false;
}
locationShow.prototype.showProfits = function(){
    $('#tabProfits').addClass('selected')
    $('#profitContainer').addClass('selected')

    $('#tabComments').removeClass('selected')
    $('#commentContainer').removeClass('selected')
    return false;
}
