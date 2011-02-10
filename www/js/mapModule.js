gm = google.maps;

function mapModule(){
    this.editor = null;
    this.infoWindow = new gm.InfoWindow();
    this.geocoder = new gm.Geocoder();

    this.selected = [];
    this.locations = {};
    
    this.initMenu();
    this.initMap();
    this.initListeners();
    this.initHandlers();
    
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
    this.listeners = {
        dragend: gm.event.addListener(this.map,'dragend',this.updateUrl.delegate(this)),
        click: gm.event.addListener(this.map,'click',this.updateUrl.delegate(this)),
        zoom_changed: gm.event.addListener(this.map,'zoom_changed',this.updateUrl.delegate(this))
    };
}

mapModule.prototype.initHandlers= function(){
    this.handlers = {
        onLocationClick: this.getOnLocationClick().delegate(this)
    };
}

mapModule.prototype.getOnLocationClick = function(){
    return function(location){
        var loader = this.showLoader(location.marker.getPosition());
        app.getForm('/location/map/id/'+location.marker.id,this.onLocationInfoLoad.delegate(this, location, loader));
    }
}

mapModule.prototype.onLocationInfoLoad = function(html, location, loader){
    location.showInfo(html);
    loader.remove();
}

mapModule.prototype.deselectAll = function(){
    $.each(this.selected.concat(), function(){
        this.setSelected(false);
    });
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
    var params = window.location.hash.length ? $.unparam(window.location.hash.substr(1)) : {};
    $.extend(params, {
        lat:this.map.getCenter().lat(),
        lng:this.map.getCenter().lng(),
        z:this.map.getZoom(),
        mt:this.typeToId[this.map.getMapTypeId()]
    });
    window.location.hash=$.param(params);
}

mapModule.prototype.loadData = function(){
    var self = this;
    app.getJSON('/collector/data', function(data){
        $.each(data.locations,function(){
            self.createLocation({
                id: this.id,
                name: this.name,
                position: new gm.LatLng(parseFloat(this.lat),parseFloat(this.lng))
            })
        });
    });
}

mapModule.prototype.createLocation = function(opt){
    if(!this.locations[opt.id]){
        this.locations[opt.id] = new ht_location(this,opt);
    }    
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

mapModule.prototype.setZoom = function(zoom){
    this.map.setZoom(zoom);
}

mapModule.prototype.setOptions= function(opt){
    this.map.setOptions(opt);
}

mapModule.prototype.setType = function(type){
    $('input',this.mapType)
    .removeAttr('disabled')
    .removeClass('disabled')
    .eq(this.typeToId[type])
    .attr('disabled','disabled')
    .addClass('disabled');
    this.map.setMapTypeId(type);
    this.updateUrl();
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

mapModule.prototype.showLoader = function(point){
    return new mapOverlay(point,app.loaderTag(),this.map,'overlayImage');
}

mapModule.prototype.showLocationName = function(point,html){
    return new mapOverlay(point,html,this.map,'overlayMouseTarget');
}

mapModule.prototype.openInfo = function(point,html,closeHandler){
    this.closeInfo();

    this.infoWindow.setContent(html);
    this.infoWindow.setPosition(point);
    this.infoWindow.closeHandler  = closeHandler;

    gm.event.addListener(this.infoWindow,'closeclick',this.closeInfo.delegate(this));
    this.infoWindow.open(this.map);

    return this.infoWindow;
}
mapModule.prototype.closeInfo = function(){
    if(this.infoWindow.closeHandler){
        this.infoWindow.closeHandler();
        this.infoWindow.closeHandler = null;
    }
    this.infoWindow.close();
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
 * all about location here
 */
function ht_location(mm,opt){
    this.mm = mm;
    this.name = opt.name;
    this.id = opt.id;
    opt.icon = this.icon;
    this.marker = mm.createMarker(opt);
    this.selected = false;
    this.initListeners();
}

ht_location.prototype.initListeners = function(){
    this.listeners = {};
    this.addListenerClick();
    this.addListenerOver();
    this.addListenerOut();
}
ht_location.prototype.addListenerClick = function(){
    this.listeners.click = gm.event.addListener(this.marker,'click',this.onClick.delegate(this));
}
ht_location.prototype.addListenerOver = function(){
    this.listeners.over = gm.event.addListener(this.marker,'mouseover',this.onOver.delegate(this));
}
ht_location.prototype.addListenerOut = function(){
    this.listeners.out = gm.event.addListener(this.marker,'mouseout',this.onOut.delegate(this));
}
ht_location.prototype.onClick = function(){
    this.mm.handlers.onLocationClick(this);
}
ht_location.prototype.onOver = function(){
    this.overName =  this.mm.showLocationName(this.marker.getPosition(), '<div class="markerOverName">'+this.name+'</div>');
    this.marker.setIcon(this.iconHover);
}
ht_location.prototype.onOut = function(){
    this.overName && this.overName.remove();
    this.marker.setIcon(this.selected?this.iconSelected:this.icon);
}
ht_location.prototype.showInfo =  function(html){
    this.mm.openInfo(this.marker.getPosition(),html);
}
ht_location.prototype.setSelected = function(selected){
    this.selected = selected;
    if(selected){
        this.marker.setIcon(this.iconSelected);
        this.mm.selected.push(this);
    }else{
        var index;
        if((index = $.inArray(this, this.mm.selected)) != -1){
            this.mm.selected.splice(index, 1);
        }
        this.marker.setIcon(this.icon);        
    }
}

ht_location.prototype.icon = new gm.MarkerImage(app.url('/images/location.png'),
    // This marker is 20 pixels wide by 32 pixels tall.
    new google.maps.Size(16, 16),
    // The origin for this image is 0,0.
    new google.maps.Point(0,0),
    // The anchor for this image is the base of the flagpole at 0,32.
    new google.maps.Point(7, 7));
ht_location.prototype.iconSelected = new gm.MarkerImage(app.url('/images/location_selected.png'),
    new google.maps.Size(16, 16),
    new google.maps.Point(0,0),
    new google.maps.Point(7, 7));
ht_location.prototype.iconHover = new gm.MarkerImage(app.url('/images/location_hover.png'),
    new google.maps.Size(16, 16),
    new google.maps.Point(0,0),
    new google.maps.Point(7, 7));
