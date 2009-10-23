var poly;

// CONFIG
var asmConfig = {
    url: 'http://asm/frontend_dev.php/',
    ico: {
        opacity: 0.5,
        size: {
            min: 32,
            max: 48
        },
        marker: {
            _default: '/images/location.png',
            _default_shadow: ''
        }
    }
};
//Main object
var asm = {
    map: null,
    markers: {
        newMarker: null,
        locations: new Array(),
        icons: new Array()
    },

    init: function(){

        if (GBrowserIsCompatible()) {

            google.load("maps", "3.x");
            var latlng = new google.maps.LatLng(-34.397, 150.644);

            if (google.loader.ClientLocation) {
                latlng = new google.maps.LatLng
                (google.loader.ClientLocation.latitude,
                    google.loader.ClientLocation.longitude);
            }
            var myOptions = {
                zoom: 8,
                center: latlng,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            }
            map = new google.maps.Map(document.getElementById("map_canvas"),
                myOptions);

            return;



            this.map = new GMap2($('#map_canvas')[0], {
                logoPassive: true
            });
            //            this._initIcons();
            this._initControls();
            this.map.enableContinuousZoom();
            this.map.enableScrollWheelZoom();
            //            this.map.setMapType(asm._mapType(asmContext.start.mapType));
            this.map.setMapType(G_PHYSICAL_MAP);
            this.map.addMapType(G_PHYSICAL_MAP);
            this.map.addControl(new GLargeMapControl());
            this.map.addControl(new GScaleControl());
            //            this.map.setCenter(new GLatLng(asmContext.start.lat, asmContext.start.lng), asmContext.start.zoom);
            this.map.setCenter(new GLatLng(42.34252731950016,-71.12239837646484), 3);


            $.getJSON(asmConfig.url + 'location/load', function(response){
                $.each(response, function(i, location){
                    asm.createMarkerLocation(new GLatLng(location.lat, location.lng), location.id);
                });
            });

        }
        else {
            alert('ohh... try Mozilla, office worm!');
        }
    },
    _initIcons: function(){
        var colors = ['red', 'green', 'gray', 'blue', 'yellow', 'purple'];
        $.each(colors, function(i, color){
            asm.markers.icons[color] = asm._createIcon(color);
        })
    },
    _initControls: function(){

        $('#new_obj').toggle(function(){
            var cont=$('#new_cont');
            cont.show();
        }, function(){
            $('#new_cont').hide();
        });

        $('#new_location').toggle(function(){
            $(this).val('cancel');
            asm.addNewMarker('location');
        }, function(){
            $(this).val('new location');
            asm.cancelNewMarker();
        });

        $('#new_point').toggle(function(){
            $(this).val('cancel');
            asm.addNewMarker('location_object');
        }, function(){
            $(this).val('new point');
            asm.cancelNewMarker();
        });

        $('#new_line').toggle(function(){
            $(this).val('cancel');
            window.poly = new GPolyline([], "red");
            asm.map.addOverlay(poly);
            poly.enableDrawing({});
            poly.enableEditing({
                onEvent: "mouseover"
            });
            poly.disableEditing({
                onEvent: "mouseout"
            });
            GEvent.addListener(poly, "endline", function() {
                GEvent.addListener(poly, "click", function(latlng, index) {
                    if (typeof index == "number") {
                        poly.deleteVertex(index);
                    } else {
                        poly.setStrokeStyle({
                            color: "red",
                            weight:10
                        });
                    }
                });
            });
        }, function(){
            $(this).val('new line');
        //asm.cancelNewMarker();
        });

        $('#new_polygon').toggle(function(){
            $(this).val('cancel');
            var poly = new GPolygon([], "red", 2, 0.7, "green", 0.2);
            asm.map.addOverlay(poly);
            poly.enableDrawing({});
            poly.enableEditing({
                onEvent: "mouseover"
            });
            poly.disableEditing({
                onEvent: "mouseout"
            });
            GEvent.addListener(poly, "endline", function() {
                GEvent.addListener(poly, "click", function(latlng, index) {
                    if (typeof index == "number") {
                        poly.deleteVertex(index);
                    } else {
                        poly.setStrokeStyle({
                            color: "red",
                            weight:10
                        });
                    }
                });
            });
        }, function(){
            $(this).val('new line');
        //asm.cancelNewMarker();
        });

        //control hider
        $('#map').hover(function(){
            $('.map_controls').show('fast');
        }, function(){
            $('.map_controls').hide('fast');
        });
    },
    _mapType: function(mt){
        switch (mt) {
            case 'normal':
                return G_NORMAL_MAP;
            case 'hybrid':
                return G_HYBRID_MAP;
            case 'phisical':
                return G_PHYSICAL_MAP;

        }
    },
    _createIcon: function(color){
        var icon = new GIcon();
        icon.image = "http://labs.google.com/ridefinder/images/mm_20_" + color + ".png";
        icon.shadow = "http://labs.google.com/ridefinder/images/mm_20_shadow.png";
        icon.iconSize = new GSize(12, 20);
        icon.shadowSize = new GSize(22, 20);
        icon.iconAnchor = new GPoint(6, 20);
        icon.infoWindowAnchor = new GPoint(5, 1);
        icon.transparent = "http://maps.google.com/mapfiles/transparent.png";
        return icon;
    },
    _createMarker:function(point,opt, id){
        var options={
            title: 'Default marker',
            icon: asm.markers.icons['gray'],
            onClick: function(marker){},
            onDrag: function(marker){}
        };
        options=$.extend(options, opt);
        var marker = new GMarker(point, options);
        GEvent.addListener(marker, 'click', function(){
            var loader = new Loader(marker);
            asm.map.addOverlay(loader);
            options.onClick(marker);
            loader.remove();
        });
        GEvent.addListener(marker, 'drag', function(){
            options.onDrag(marker);
        });
        this.map.addOverlay(marker);
        return marker;
    },
    createMarkerLocation: function(point, id){
        var options = {
            title: 'Click to see data',
            icon: asm.markers.icons['red'],
            onClick: function(marker){
                $.ajax({
                    type: 'get',
                    url: asmConfig.url + 'location/info/id/' + id,
                    dataType: 'html',
                    async : false,
                    success: function(response){
                        marker.openInfoWindowHtml(response);
                    },
                    error: function(request, error, exception){
                        marker.openInfoWindowHtml('Error!<br/>status: ' + request.status);
                    }
                });
            }
        }
        this._createMarker(point,options,id);
    },
    createMarkerNewLocation: function(point){
        options = {
            autoPan: true,
            draggable: true,
            title: 'Click to add data',
            icon: asm.markers.icons['green'],
            onClick: function(marker){
                $.ajax({
                    type: 'get',
                    url: asmConfig.url + 'location/new',
                    dataType: 'html',
                    async : false,
                    success: function(response){
                        marker.openInfoWindowHtml(asm._prepareForm(response));
                    },
                    error: function(request, error, exception){
                        marker.openInfoWindowHtml('Error!<br/>status: ' + request.status);
                    }
                });
            },
            onDrag: function(marker){
                marker.closeInfoWindow();
            }
        }
        if (asm.markers.newMarker)
            asm.markers.newMarker.remove();
        asm.markers.newMarker = this._createMarker(point,options,0);
    },
    _prepareForm: function(form){
        var jForm = $(form);
        $('#location_lat', jForm).val(asm.markers.newMarker.getLatLng().lat());
        $('#location_lng', jForm).val(asm.markers.newMarker.getLatLng().lng());
        var url=$('form', jForm).attr('action');
        $('form', jForm).submit(function(){
            var data = {};
            $('*[name]', jForm).each(function(){
                data[$(this).attr('name')] = $(this).val();
            })
            jForm.empty();
            jForm.html('<img id="loader" src="/images/loader.gif"/>');
            $('#loader').css('margin', (jForm.parent().height() / 2 - 16) + 'px 0 0 ' + (jForm.parent().width() / 2 - 16) + 'px');
            $.ajax({
                type: 'post',
                url: url,
                dataType: 'json',
                data: data,
                success: function(response){
                    if (response.status == 'ok') {
                        asm.createMarkerLocation(asm.markers.newMarker.getLatLng(), response.data);
                        asm.markers.newMarker.remove();
                    }
                    else {
                        asm.markers.newMarker.openInfoWindowHtml(asm._prepareForm(response.data));
                    }
                },
                error: function(request, error, exception){
                    asm.markers.newMarker.openInfoWindowHtml('Error!<br/>status: ' + request.status);
                }
            });
            return false;
        });
        return jForm.get(0);
    },
    addNewMarker: function(type){
        GEvent.addListener(asm.map, "click", function(overlay, latlng){
            if (latlng) {
                switch(type){
                    case 'location':
                        asm.createMarkerNewLocation(latlng);
                        break;
                    case 'location_object':
                        options = {
                            autoPan: true,
                            draggable: true,
                            title: 'Click to add data',
                            icon: asm.markers.icons['blue']
                        }
                        if (asm.markers.newMarker)
                            asm.markers.newMarker.remove();
                        asm.markers.newMarker = new GMarker(latlng, options);
                        GEvent.addListener(asm.markers.newMarker, 'drag', function(){
                            asm.markers.newMarker.closeInfoWindow();
                        });
                        GEvent.addListener(asm.markers.newMarker, 'click', function(){
                            var loader = new Loader(asm.markers.newMarker);
                            asm.map.addOverlay(loader);
                            $.get(asmConfig.url + 'location_point/new', function(response){
                                asm.markers.newMarker.openInfoWindowHtml(asm._prepareForm(response));
                                loader.remove();
                            })
                        });
                        asm.map.addOverlay(asm.markers.newMarker);
                        break;
                }

            }
        })
    },
    cancelNewMarker: function(){
        if (asm.markers.newMarker)
            asm.markers.newMarker.remove();
        GEvent.clearListeners(asm.map, "click");
    }
};


//LOADER

function Loader(marker){
    this.marker = marker;
}

Loader.prototype = new GOverlay();
Loader.prototype.initialize = function(map){
    var img = document.createElement("img");
    img.src = "/images/loader.gif";
    img.style.position = "absolute";
    map.getPane(G_MAP_MAP_PANE).appendChild(img);
    this.map_ = map;
    this.img_ = img;
}
Loader.prototype.remove = function(){
    this.img_.parentNode.removeChild(this.img_);
}
Loader.prototype.copy = function(){
    return new Rectangle(this.marker);
}
Loader.prototype.redraw = function(force){
    if (!force)
        return;
    var point = this.map_.fromLatLngToDivPixel(this.marker.getLatLng());
    this.img_.style.left = (point.x) + "px";
    this.img_.style.top = (point.y) + "px";
}
////END CONTROLS
////MISC
//Array.prototype.copy = function(start, end){
//    var start = start || 0;
//    var end = end || this.length;
//    if (end < 0)
//        end = this.length + end + 1;
//    return Array.apply(this, this.slice(start, end));
//}
//
$(document).ready(function(){
//    var latlng = new google.maps.LatLng(-34.397, 150.644);
//    var myOptions = {
//      zoom: 8,
//      center: latlng,
//      mapTypeId: google.maps.MapTypeId.ROADMAP
//    };
//    var map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);
});
