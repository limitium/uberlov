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
    fb('initing... locationShow' )
    this.initListeners();
    this.resizeMap();
    this.toLocation();
}

locationShow.prototype.initListeners = function(){
    $('.locationMap .name a').click(this.toLocation.delegate(this));
    
    $('.tabPanel span').click(this.onTabClick.delegate(this));
}

locationShow.prototype.resizeMap= function(){
    this.mm = app.getModule('mapModule');
    $('#map_canvas,#map').height(300)
    gm.event.trigger(this.mm.map, 'resize');
}

locationShow.prototype.toLocation = function(){
    var position = $('div.locationMap').attr('position').split(';');
    this.mm.setOptions({
        zoom: this.cfg.baseZoom,
        center: new gm.LatLng(parseFloat(position[0]), parseFloat(position[1]))
    });
    this.mm.setType(this.cfg.mapType);
    return false;
}

locationShow.prototype.onTabClick= function(click){
    var tabId = click.currentTarget.id;
    var containerId = tabId.substr(0,tabId.length-3) + 'Container';
    $('.tabPanel span').each(function(){
        if(this.id != tabId){
            $(this).removeClass('selected');
            $('#'+this.id.substr(0,this.id.length-3) + 'Container').removeClass('selected');
        }
    });
    
    $(click.currentTarget).addClass('selected');
    $('#'+containerId).addClass('selected');
}
