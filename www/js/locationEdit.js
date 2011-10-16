function locationEdit(){
}
locationEdit.name = 'locationEdit';
ModuleManager.add(locationEdit);


locationEdit.prototype.afterInit = function(){
    fb('initing... locationEdit' )
    this.initListeners();
    this.mm = app.getModule('mapModule');
    this.mm.$.bind('startMap',this.onStartMap.delegate(this));
}

locationEdit.prototype.initListeners = function(){
    var photos = [];
    $('form.location').submit(function(){
        $('.thumbs img').each(function(){
            photos.push(this.id.substr(6));
        });
        $('#location_photos').val($.JSON.encode(photos));
    });
    var priceRow = $($('#location_price').parents()[1]);
    if($('#location_is_free').attr('checked')){
        priceRow.hide();
    }
    $('#location_is_free').change(function(){
        priceRow[$('#location_is_free').attr('checked')?'slideUp':'slideDown']();
    });
}

locationEdit.prototype.onStartMap = function(){
    var editedLatLng = new gm.LatLng(parseFloat($('#location_latitude').val()), parseFloat($('#location_longitude').val()));
    var startLatLng = new gm.LatLng(app.startLat, app.startLng);
    
    this.location = new ht_location_e(this.mm).createMarker(editedLatLng);
    
    var swLatLng = new gm.LatLng(
        Math.min(editedLatLng.lat(),startLatLng.lat()), 
        Math.min(editedLatLng.lng(),startLatLng.lng())
        );
    var neLatLng = new gm.LatLng(
        Math.max(editedLatLng.lat(),startLatLng.lat()), 
        Math.max(editedLatLng.lng(),startLatLng.lng())
        );
    this.mm.map.fitBounds(new gm.LatLngBounds(swLatLng, neLatLng));
}

/**
 * Editable location
 */
function ht_location_e(mm){
    this.mm = mm;
    this.marker = null;
    this.address = null;
    this.listeners = {};
}
ht_location_e.prototype.remove = function(){
    this.marker && this.mm.removeMarker(this.marker);
    delete this.marker;
    this.marker = null;
}
ht_location_e.prototype.createMarker = function(latLng){
    this.marker = this.mm.createMarker({
        position: latLng,
        title:'Новые координаты',
        draggable: true
    });

    gm.event.addListener(this.marker,'dragend',this.onPositionChange.delegate(this));
}

ht_location_e.prototype.onPositionChange = function(){
    $('#location_latitude').val(this.marker.getPosition().lat());
    $('#location_longitude').val(this.marker.getPosition().lng());
    this.getGeo();
}

ht_location_e.prototype.getGeo = function(loader){
    this.address = {
        country:'',
        route:'',
        administrative_area_level_1: '',
        administrative_area_level_2: '',
        locality: ''
    }

    var self = this;

    this.mm.geocoder.geocode({
        'latLng': this.marker.getPosition(),
        'language':'ru'
    }, function(result, status) {
        if (status == gm.GeocoderStatus.OK) {
            var data = result[0];
            if (data) {
                $.each(data.address_components, function(){
                    if(self.address[this.types[0]] == ''){
                        self.address[this.types[0]] = this.long_name;
                    }
                });
                
                self.address.areaLow = self.address.administrative_area_level_1;
                self.address.areaHigh = self.address.administrative_area_level_2;
                self.address.route = self.address.route;
                delete(self.address.administrative_area_level_1);
                delete(self.address.administrative_area_level_2);
            } else {
                alert("No results found");
            }
            $('#location_address').val($.JSON.encode(self.address));
        } else {
            alert("Geocoder failed due to: " + status);
        }
    });
}