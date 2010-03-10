gm = google.maps;

function mapModule(){
    this.editor = null;
    this.infoWindow = null;

    this.initMenu();
    this.initMap();
    this.initListeners();
    this.loadData();
}
mapModule.name = 'mapModule';
ModuleManager.add(mapModule);

mapModule.prototype.initMap = function(){
    var params = $.unparam(window.location.hash.substr(1));

    params.lat = parseFloat(params.lat) || 55.043561639001645;
    params.lng = parseFloat(params.lng) || 36.627886718750005;
    params.z= parseInt(params.z) || 8;
    params.mt = this.idToType[parseFloat(params.mt)] || 'roadmap';

    var latlng = new gm.LatLng(params.lat, params.lng);
    var opt = {
        zoom: params.z,
        center: latlng,
        navigationControlOptions:{
            style:gm.NavigationControlStyle.SMALL
        },
        scaleControl: true,
        mapTypeControl: false,
        mapTypeId: params.mt
    };
    this.map = new gm.Map($("#map_canvas").get(0), opt);
    this.setType(params.mt);
  
}

mapModule.prototype.initListeners = function(){
    this.listeners = {};
    this.listeners.dragend = gm.event.addListener(this.map,'dragend',this.updateUrl.delegate(this));
    this.listeners.click = gm.event.addListener(this.map,'click',this.updateUrl.delegate(this));
    this.listeners.zoom_changed = gm.event.addListener(this.map,'zoom_changed',this.updateUrl.delegate(this));
}
mapModule.prototype.initMenu = function(){
    var self = this;
    var map = $('#map');
    this.bar = $('<div class="mapOverLay"></div>').css({
        opacity:0.8,
        bottom:0
    });
    map.append(this.bar);

    this.mapType = $('<div class="mapOverLay"><input class="button" type="button" value="map"/><input class="button" type="button" value="roads"/></div>').css({
        opacity:0.8,
        top:0,
        right:0
    });
    $('input',this.mapType)
    .eq(0)
    .click(function(){
        self.setType('hybrid')
    })
    .end()
    .eq(1)
    .click(function(){
        self.setType('roadmap')
    });
    map.append(this.mapType);

    this.mapList = $('<div class="mapOverLay"></div>').css({
        width: 200,
        height: map.height(),
        opacity:0.6,
        top:0,
        right:0,
        display:'none'
    });
    this.mapListHider=$('<div class="mapOverLay"><a id="list_hider" class="editItem" href="">>></a></div>').css({
        opacity:0.6,
        top:35,
        right:0,
        display:'none'
    });
    map.append(this.mapList);
    map.append(this.mapListHider);
}
mapModule.prototype.showList = function(){
    this.mapType.css({
        right: 200 + 10
    });
    this.mapListHider.css({
        right: 200 + 5
    });
    if(this.edit){
        this.edit.css({
            right: 110 + 200 + 10
        });
    }
    this.mapList.show();
    this.map.panBy(100,0);
    $('#list_hider').html('>>');
    return false;
}
mapModule.prototype.hideList = function(){
    this.mapType.css({
        right: 0
    });
    this.mapListHider.css({
        right: 0
    });
    if(this.edit){
        this.edit.css({
            right: 110
        });
    }
    this.mapList.hide();
    this.map.panBy(-100,0);
    $('#list_hider').html('<<');
    return false;
}
mapModule.prototype.openList = function(items){
    var html = '<ul class="mapList">';
    $.each(items,function(){
        html += '<li id="listItem_'+this.id+'"><span>'+this.name+'</span></li>';
    });
    html += '</ul>';
    this.mapList.html(html);
  
    this.showList();
    this.mapListHider.show();
  
    $('#list_hider').toggle(this.hideList.delegate(this),this.showList.delegate(this));
    return this.mapList;
}
mapModule.prototype.closeList = function(){
    this.hideList();
    this.mapListHider.hide();
    $('#list_hider').unbind('click');
}
mapModule.prototype.addEditItem =  function(item){
    if(!this.edit){
        this.edit = $('<div class="mapOverLay"></div>').css({
            opacity:0.8,
            top:0,
            right:110
        });
        $('#map').append(this.edit);
    }
    this.edit.append(item);
    return this.edit;
}
mapModule.prototype.updateBar = function(html){
    if(html){
        this.bar.html(html);
        this.centerBar();
    }else{
        this.bar.empty();
    }
    return this.bar;
}
mapModule.prototype.centerBar = function(){
    this.bar.css('left',$('#map').width()/2-this.bar.width()/2);
}

mapModule.prototype.updateUrl = function(){
    window.location.hash=$.param({
        lat:this.map.getCenter().lat(),
        lng:this.map.getCenter().lng(),
        z:this.map.getZoom(),
        mt:this.typeToId[this.map.getMapTypeId()]
    });
}

mapModule.prototype.loadData = function(){
    var self = this;
    app.getJSON('/collector/data', function(data){
        fb(data)
        $.each(data.locations,function(){
            self.createLocation({
                id: this.id,
                title: this.name,
                position: new gm.LatLng(parseFloat(this.lat),parseFloat(this.lng))
            })
        });
        $.each(data.routes,function(){
            self.createRoute({
                title:this.name,
                id:this.id,
                points:this.points
            });
        });
    });
}

mapModule.prototype.createLocation = function(opt){
    new ht_location(this,{
        title: opt.name,
        id: opt.id,
        position: opt.position
    });
}
mapModule.prototype.createRoute = function(opt){
    var points = opt.points.split("|");
    delete opt.points;

    opt.path = [];
    var point;
    $.each(points,function(){
        point = this.split(';')
        opt.path[opt.path.length] = new gm.LatLng(parseFloat(point[0]),parseFloat(point[1]));
    });

    opt.strokeColor = '#ff3300';
    opt.strokeOpacity = 0.5;
    opt.strokeWeight = 2;
    new ht_route(this,opt);
}

mapModule.prototype.createPoly = function(opt){
    opt.map = this.map;
    return new gm.Polyline(opt);
}

mapModule.prototype.createMarker = function(opt){
    opt.map = this.map;
    return new gm.Marker(opt);
}

mapModule.prototype.removeMarker = function(marker){
    if(marker){
        marker.infoWindow && marker.infoWindow.close();
        marker.setMap(null);
    }
}

mapModule.prototype.setCenter = function(point){
    this.map.setCenter(point);
}

mapModule.prototype.setType = function(type){
    $('input',this.mapType)
    .removeAttr('disabled')
    .removeClass('disabled')
    .eq(this.typeToId[type])
    .attr('disabled','disabled')
    .addClass('disabled');
    this.map.setMapTypeId(type);
}

mapModule.prototype.setEditor = function(editor){
    this.editor = editor;
}
mapModule.prototype.getEditor = function(){
    return this.editor;
}
mapModule.prototype.cancelEdit= function(){
    this.editor && this.editor.cancelEdit();
    this.editor = null;
}

mapModule.prototype.showLoader = function(point,html){    
    return new mapOverlay(point,html,this.map,'overlayImage');
}
mapModule.prototype.openInfo = function(point,html,closeHandler){
    this.closeInfo();
    
    this.infoWindow = new gm.InfoWindow({
        content: html,
        position: point,
        closeHandler:closeHandler
    });
    gm.event.addListener(this.infoWindow,'closeclick',this.closeInfo.delegate(this));
    this.infoWindow.open(this.map);
    return this.infoWindow;
}
mapModule.prototype.closeInfo = function(closeHandler){
    if(this.infoWindow != null){
        this.infoWindow.closeHandler();
        this.infoWindow.close();
        this.infoWindow = null;
    }
}
mapModule.prototype.typeToId = {
    hybrid:0,
    roadmap:1
}
mapModule.prototype.idToType = {
    '0':'hybrid',
    '1':'roadmap'
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



/**
* all about route here
*/
function ht_route(mm,opt){
    this.mm = mm;
    this.overTime = null;
    this.poly = mm.createPoly(opt);
    this.initListeners();
}
ht_route.prototype.initListeners = function(){
    this.listeners = {};
    this.addListenerClick();
    this.listeners.move = gm.event.addListener(this.poly,'mousemove',this.onMove.delegate(this));
}
ht_route.prototype.addListenerClick = function(){
    this.listeners.click = gm.event.addListener(this.poly,'click',this.onClick.delegate(this));
}
ht_route.prototype.onMove = function(){
    if(this.overTime == null){
        this.poly.setOptions({
            strokeColor: '#3399dd',
            strokeOpacity: 0.8,
            strokeWeight: 8
        });
    }
    setTimeout(this.onOut.delegate(this), 1000);
    this.overTime = new Date();
}
ht_route.prototype.onOut = function(){
    if(new Date()-this.overTime > 900){
        this.poly.setOptions({
            strokeColor: '#ff3300',
            strokeOpacity: 0.5,
            strokeWeight: 2
        });
        this.overTime = null;
    }
}
ht_route.prototype.onClick = function(e){
    var loader = this.mm.showLoader(e.latLng,'<img src="/images/loader-small.gif" />');
    gm.event.removeListener(this.listeners.click);
    app.getForm('/route/show/id/'+this.poly.id,this.showInfo.delegate(this,loader,e.latLng));
}
ht_route.prototype.showInfo =  function(html,loader,point){
    this.mm.openInfo(point,html,this.addListenerClick.delegate(this));
    loader.remove();
}

/**
* all about location here
*/
function ht_location(mm,opt){
    this.mm = mm;
    opt.icon = this.icon;
    this.marker = mm.createMarker(opt);
    this.initListeners();
}

ht_location.prototype.initListeners = function(){
    this.listeners = {};
    this.addListenerClick();
}
ht_location.prototype.addListenerClick = function(){
    this.listeners.click = gm.event.addListener(this.marker,'click',this.onClick.delegate(this));
}
ht_location.prototype.onClick = function(){
    var loader = this.mm.showLoader(this.marker.getPosition(),'<img src="/images/loader-small.gif" />');
    gm.event.removeListener(this.listeners.click);
    app.getForm('/location/show/id/'+this.marker.id,this.showInfo.delegate(this,loader));
}
ht_location.prototype.showInfo =  function(html,loader){
    this.mm.openInfo(this.marker.getPosition(),html,this.addListenerClick.delegate(this));
    loader.remove();
}
ht_location.prototype.icon = new gm.MarkerImage('/images/location.png',
    // This marker is 20 pixels wide by 32 pixels tall.
    new google.maps.Size(16, 16),
    // The origin for this image is 0,0.
    new google.maps.Point(0,0),
    // The anchor for this image is the base of the flagpole at 0,32.
    new google.maps.Point(7, 7));