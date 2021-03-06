
function mapModule(){
    this.$ = $(this);
    this.defaultZoom = 8;
    this.defaultLat = 55.043561639001645;
    this.defaultLng = 36.627886718750005;
    this.defaultMapType = 'terrain'
    this.editor = null;
    this.infoWindow = new gm.InfoWindow({
        maxWidth:700
    });
    this.geocoder = new gm.Geocoder();

    this.selected = [];
    this.locations = {};

}

mapModule.name = 'mapModule';
ModuleManager.add(mapModule);

mapModule.prototype.afterInit = function(){
    this.initMenu();
    this.initMap();

}
mapModule.prototype.initMap = function(){
    var params = {};
    if(window.location.hash.length){
        params = $.unparam(window.location.hash.substr(1));
    }
    params.z = parseInt(params.z) || this.defaultZoom;
    params.mt = this.idToType[parseFloat(params.mt)] || this.defaultMapType;
    if(app.startLat && app.startLng){
        params.lat = parseFloat(app.startLat);
        params.lng = parseFloat(app.startLng);
        fb('has start location...');
        this.startMap(params);
    }else if(parseFloat(params.lat) && parseFloat(params.lng)){
        fb('from hash...');
        this.startMap(params);
    }else{
        var self = this;
        fb('getting maxmind data...');
        params.lat =  self.defaultLat;
        params.lng = self.defaultLng;
        self.startMap.call(self,params);

        $.ajax({
            type: "GET",
            url: "http://j.maxmind.com/app/geoip.js",
            success: function () {
                self.map.setCenter(new gm.LatLng(parseFloat(geoip_latitude()),parseFloat(geoip_longitude())));
                fb('recived');
            },
            error : function () {
                fb('maxmind.com жопят данные :\'(');
            },
            dataType: "script"
        });
    }
}

mapModule.prototype.startMap = function(params){
    var latlng = new gm.LatLng(parseFloat(params.lat), parseFloat(params.lng));
    var opt = {
        zoom: params.z,
        center: latlng,
        navigationControlOptions:{
            style:gm.NavigationControlStyle.SMALL
        },
        scaleControl: true,
        mapTypeControl: false,
        mapTypeId: params.mt,
        scrollwheel: false
    };
    this.map = new gm.Map($("#map_canvas").get(0), opt);
    this.setType(params.mt);

    this.$.trigger('startMap');

    this.initHandlers();
    this.loadData();
}

mapModule.prototype.initHandlers= function(){
    this.handlers = {
        onLocationClick: this.getOnLocationClick().delegate(this)
    };
}

mapModule.prototype.getOnLocationClick = function(){
    return function(location){
        var loader = this.showLoader(location.marker.getPosition());
        app.getForm('/location/map/'+location.marker.id,this.onLocationInfoLoad.delegate(this, location, loader));
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
    this.bar = $('<div class="mapOverLay map_footer"></div>').css({
        opacity:0.8,
        bottom:0
    });
    map.append(this.bar);

    this.searchMenu = $('<div class="mapOverLay"><input id="serch_field" type="text" /><img id="serch_button" class="map_button" src="' + app.url('/images/search.png') + '"/></div>').css({
        opacity:0.8,
        top:0,
        right:569
    });

    $('input',this.searchMenu).keyup(function(event){
        if (event.keyCode == '13') {
            $('img',self.searchMenu).trigger('click');
        }
    });

    $('img',this.searchMenu).click(function(){
        var word = $('#serch_field').val();
        if(word){
            self.search(word);
        }
    });
    map.append(this.searchMenu);

    this.mapType = $('<div class="mapOverLay"><input class="map_button" type="button" value="карта"/><input class="map_button" type="button" value="схема"/></div>').css({
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
        self.setType('terrain')
    });
    map.append(this.mapType);

    this.mapList = $('<div class="mapOverLay"></div>').css({
        width: 200,
        height: map.height()-10,
        opacity:0.8,
        top:0,
        right:0,
        display:'none'
    });
    this.mapList.hider=$('<div id="list_hider" class="mapOverLay"><a href="">►</a></div>').css({
        opacity:0.8,
        top:35,
        right:0,
        display:'none'
    });
    this.mapList.markers = [];
    map.append(this.mapList);
    map.append(this.mapList.hider);
}

mapModule.prototype.showList = function(){
    if(this.mapList.is(":visible")){
        return false;
    }
    this.mapType.css({
        right: 200 + 10
    });
    this.searchMenu.css({
        right: 200 + 569 + 10
    });

    this.mapList.hider.css({
        right: 200 + 5
    });
    if(this.edit){
        this.edit.css({
            right: 110 + 200 + 10
        });
    }
    this.mapList.show();
    this.map.panBy(100,0);
    $('#list_hider a').html('►');
    $.each(this.mapList.markers, function(){
        this.setVisible(true);
    });
    return false;
}
mapModule.prototype.hideList = function(){
    if(!this.mapList.is(":visible")){
        return false;
    }
    this.mapType.css({
        right: 0
    });
    this.mapList.hider.css({
        right: 0
    });
    this.searchMenu.css({
        right: 569
    });
    if(this.edit){
        this.edit.css({
            right: 110
        });
    }
    this.mapList.hide();
    this.map.panBy(-100,0);
    $('#list_hider a').html('◄');
    $.each(this.mapList.markers, function(){
        this.setVisible(false);
    });
    return false;
}
mapModule.prototype.openList = function(items){
    var self  = this;
    var list = $('<ul class="mapList">');
    $.each(this.mapList.markers, function(){
        self.removeMarker(this);
    });
    this.mapList.markers=[];
    $.each(items,function(){
        var item = this;

        var serachMarker = new gm.Marker({
            map: self.map,
            title: item.formatted_address,
            position: item.geometry.location
        });

        self.mapList.markers.push(serachMarker);

        list.append($('<li><span>'+item.formatted_address+'</span></li>').click(function(){
            self.map.fitBounds(item.geometry.viewport);
        }));
    });
    this.mapList.html(list);

    this.showList();
    this.mapList.hider.show();

    $('#list_hider a').toggle(this.hideList.delegate(this),this.showList.delegate(this));
    return this.mapList;
}
mapModule.prototype.closeList = function(){
    this.hideList();
    this.mapList.hider.hide();
    $('#list_hider a').unbind('click');
}
mapModule.prototype.addEditItem =  function(item){
    if(!this.edit){
        this.edit = $('<div class="mapOverLay map_header"></div>').css({
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

mapModule.prototype.loadData = function(){
    var self = this;
    app.getJSON('/data', function(data){
        $.each(data.locations,function(){
            self.createLocation({
                id: this.id,
                name: this.name,
                event: this.event,
                free: this.free,
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
    this.$.trigger('changeMapType',type);
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
    return new mapOverlay(point,html,this.map,'overlayMouseTarget',-20);
}

mapModule.prototype.openInfo = function(point,html,closeHandler){
    this.closeInfo();

    this.infoWindow.setContent(html);
    this.infoWindow.setPosition(point);
    this.infoWindow.closeHandler  = closeHandler;

    gm.event.addListener(this.infoWindow,'closeclick',this.closeInfo.delegate(this));
    this.infoWindow.open(this.map);
    this.initPhotos();

    return this.infoWindow;
}
mapModule.prototype.initPhotos = function(){
    $(".thumbs a").colorbox({
        rel:".location_photo",
        current: "Фото {current} из {total}",
        maxWidth:"1024px",
        maxHeight:"600px",
        fixed:true,
        scalePhotos:true
    });
}
mapModule.prototype.search = function(word){
    var self = this;
    this.geocoder.geocode({
        address:word,
        language:'ru'
    },function(results,status){
        if(status == gm.GeocoderStatus.OK){
            self.openList(results);
        }else{
            app.popUp("Ничего не найдено!");
        }
    });
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
    terrain:1
}
mapModule.prototype.idToType = {
    '0':'hybrid',
    '1':'terrain'
}


window.gm = google.maps;
function mapOverlay(point,html,map,overlay,y){
    this.point = point;
    this.html = html;
    this.overlay = overlay;
    this.div = null;
    this.setMap(map);
    this.y = y;
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
    if(this.y){
        point.y -= this.y;
    }
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
    this.event = opt.event;
    opt.icon = this['icon'+(opt.event||!opt.free?'_':'')+(opt.event?'e':'')+(!opt.free?'p':'')];
    opt.shadow= this['shadow_'+(opt.event?'e':'l')];
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
//    this.marker.setIcon(this.event?this.iconHover_e:this.iconHover);
}
ht_location.prototype.onOut = function(){
    this.overName && this.overName.remove();
//    this.marker.setIcon(this.selected?(this.event?this.iconSelected_e:this.iconSelected):(this.event?this.icon_e:this.icon));
}
ht_location.prototype.showInfo =  function(html){
    this.mm.openInfo(this.marker.getPosition(),html);
}
ht_location.prototype.setSelected = function(selected){
    this.selected = selected;
    if(selected){
        this.marker.setIcon(this.event?this.iconSelected_e:this.iconSelected);
        this.mm.selected.push(this);
    }else{
        var index;
        if((index = $.inArray(this, this.mm.selected)) != -1){
            this.mm.selected.splice(index, 1);
        }
        this.marker.setIcon(this.icon);
    }
}

ht_location.prototype.icon = new gm.MarkerImage(app.url('/images/l_f.png'),
    // This marker is 20 pixels wide by 32 pixels tall.
    new google.maps.Size(9, 22),
    // The origin for this image is 0,0.
    new google.maps.Point(0,0),
    // The anchor for this image is the base of the flagpole at 0,32.
    new google.maps.Point(4, 22));

ht_location.prototype.iconSelected = new gm.MarkerImage(app.url('/images/location_selected.png'),
    new google.maps.Size(16, 16),
    new google.maps.Point(0,0),
    new google.maps.Point(7, 7));
ht_location.prototype.iconHover = new gm.MarkerImage(app.url('/images/location_hover.png'),
    new google.maps.Size(16, 16),
    new google.maps.Point(0,0),
    new google.maps.Point(7, 7));

ht_location.prototype.icon_e = new gm.MarkerImage(app.url('/images/l_f_e.png'),
    // This marker is 20 pixels wide by 32 pixels tall.
    new google.maps.Size(18, 22),
    // The origin for this image is 0,0.
    new google.maps.Point(0,0),
    // The anchor for this image is the base of the flagpole at 0,32.
    new google.maps.Point(4, 22));

ht_location.prototype.icon_p = new gm.MarkerImage(app.url('/images/l_n.png'),
    // This marker is 20 pixels wide by 32 pixels tall.
    new google.maps.Size(9, 22),
    // The origin for this image is 0,0.
    new google.maps.Point(0,0),
    // The anchor for this image is the base of the flagpole at 0,32.
    new google.maps.Point(4, 22));

ht_location.prototype.icon_ep = new gm.MarkerImage(app.url('/images/l_n_e.png'),
    // This marker is 20 pixels wide by 32 pixels tall.
    new google.maps.Size(18, 22),
    // The origin for this image is 0,0.
    new google.maps.Point(0,0),
    // The anchor for this image is the base of the flagpole at 0,32.
    new google.maps.Point(4, 22));

ht_location.prototype.shadow_l = new gm.MarkerImage(app.url('/images/l_s.png'),
    // This marker is 20 pixels wide by 32 pixels tall.
    new google.maps.Size(18, 22),
    // The origin for this image is 0,0.
    new google.maps.Point(0,0),
    // The anchor for this image is the base of the flagpole at 0,32.
    new google.maps.Point(4, 22));

ht_location.prototype.shadow_e = new gm.MarkerImage(app.url('/images/l_s_e.png'),
    // This marker is 20 pixels wide by 32 pixels tall.
    new google.maps.Size(18, 22),
    // The origin for this image is 0,0.
    new google.maps.Point(0,0),
    // The anchor for this image is the base of the flagpole at 0,32.
    new google.maps.Point(4, 22));    