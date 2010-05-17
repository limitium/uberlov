function markerModule(){
    this.menu = null;
    this.bar = null;
    this.location = null;
    this.listeners = {};
    this.cfg = {
        editableZoom: 14
    };
}
markerModule.name = 'markerModule';
ModuleManager.add(markerModule);


markerModule.prototype.afterInit = function(){
    this.mm = app.getModule('mapModule');
    this.initMenu();
}
markerModule.prototype.initMenu = function(){
    this.menu = {
        link: $('#new_location',this.mm.addEditItem('<a id="new_location" class="editItem" href=""><img class="mapIcon" src="/images/location.png"/>add location</a>'))
        .click(this.startEdit.delegate(this))
    };
}

markerModule.prototype.startEdit = function(){
    if(this.mm.getEditor() != this){
        this.mm.cancelEdit();
        this.mm.setEditor(this);
        this.menu.link.addClass('disabled');

        this.location = new ht_location_e(this.mm,{
            onSaveChange: this.onSaveChange.delegate(this)
        });
        this.listeners.zoom_changed = gm.event.addListener(this.mm.map,'zoom_changed',this.checkZoom.delegate(this));
    
        this.barCreate();
        this.checkZoom();
    }
    return false;
}

markerModule.prototype.cancelEdit = function(){
    this.location.remove();
    this.listeners.click && gm.event.removeListener(this.listeners.click);
    gm.event.removeListener(this.listeners.zoom_changed);
    this.barRemove();
    this.menu.link.removeClass('disabled');
}
markerModule.prototype.onSaveChange = function(disabled){
    this.barSaveDisabled(disabled);
}
markerModule.prototype.barCreate = function(){
    var bar = this.mm.updateBar('<img class="mapIcon" src="/images/location.png"/><span id="bar_msg"></span></span><input id="bar_save" class="button disabled" type="button" value="save"/><input id="bar_cancel" class="button" type="button" value="cancel"/>');
    this.bar = {
        msg: $('#bar_msg',bar),
        save: $('#bar_save',bar),
        cancel: $('#bar_cancel',bar)
        .click(this.mm.cancelEdit.delegate(this.mm))
    };
}
markerModule.prototype.barRemove = function(){
    this.bar = null;
    this.mm.updateBar();
}
markerModule.prototype.barSetMsg = function(text){
    this.bar.msg.text(text);
    this.mm.centerBar();
}
markerModule.prototype.barSaveDisabled = function(disabled){
    this.bar.save.addClass('disabled').unbind('click');
    if(!disabled){
        this.bar.save.removeClass('disabled').click(this.location.onClick.delegate(this.location));
    }
}
markerModule.prototype.checkZoom = function(){
    this.listeners.click && gm.event.removeListener(this.listeners.click);
  
    if(this.mm.map.getZoom() >= this.cfg.editableZoom){
        this.barSetMsg('creating location');
        this.listeners.click = gm.event.addListener(this.mm.map,'click',this.location.moveTo.delegate(this.location));
    }else{
        this.barSetMsg('creating location, increase zoom lvl');
    }
}




/**
 * Editable location
 */
function ht_location_e(mm,opt){
    this.mm = mm;
    this.marker = null;
    this.address = null;
    this.form = null;
    this.loading = {
        form: false,
        address: false
    };
    this.listeners = {};

    this.onSaveChange = opt.onSaveChange;
}
ht_location_e.prototype.remove = function(){
    this.marker && this.mm.removeMarker(this.marker);
    this.mm.closeInfo();
    delete this.marker;
    this.marker = null;
}
ht_location_e.prototype.moveTo = function(e){
    this.remove();

    this.createMarker(e.latLng);
}
ht_location_e.prototype.createMarker = function(latLng){
    this.marker = this.mm.createMarker({
        position:latLng,
        title:'new location',
        draggable: true
    });
    this.addListenerClick();

    gm.event.addListener(this.marker,'dragend',this.mm.closeInfo.delegate(this.mm));
}
ht_location_e.prototype.addListenerClick = function(){
    this.onSaveChange(false);
    this.listeners.click = gm.event.addListener(this.marker,'click',this.onClick.delegate(this));
}

ht_location_e.prototype.onClick = function(){

    this.onSaveChange(true);
    gm.event.removeListener(this.listeners.click);

    var loader = this.mm.showLoader(this.marker.getPosition(),'<img src="/images/loader-small.gif" />');

    this.getGeo(loader);
    this.getForm(loader);
    
}
ht_location_e.prototype.getGeo = function(loader){
    this.address = {
        country:'',
        administrative_area_level_1: '',
        administrative_area_level_2: '',
        locality: ''
    }
    this.loading.address = true;

    var self = this;

    this.mm.geocoder.geocode({
        'latLng': this.marker.getPosition(),
        'language':'ru'
    }, function(result, status) {
        self.loading.address = false;
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
                delete(self.address.administrative_area_level_1);
                delete(self.address.administrative_area_level_2);
            } else {
                alert("No results found");
            }
        } else {
            alert("Geocoder failed due to: " + status);
        }
        self.showForm(loader);
    });
}

ht_location_e.prototype.getForm = function(loader){
    this.loading.form = true;
    this.form = null;
    var self = this;
    
    app.getForm('/location/new',function(form){
        self.loading.form = false;
        self.form = form;
        self.showForm(loader);
    });
}
ht_location_e.prototype.showForm = function(loader){
    if(this.loading.address || this.loading.form){
        fb('loading');
        return ;
    }
    fb(this.address);
    var marker = this.marker;
    var form = this.form;
    
    $('#location_latitude', form).val(marker.getPosition().lat());
    $('#location_longitude', form).val(marker.getPosition().lng());
    $('#location_address', form).val(jQuery.JSON.encode((this.address)));

    $('#location_is_free', form).change(function(){
        var price = $('#location_price', form);
        if($(this).attr('checked')){
            price.attr('disabled', 'disabled');
        }else{
            price.attr('disabled', '');
        }
    });

    this.marker.infoWindow = this.mm.openInfo(marker.getPosition(),this.addSubmitHandler(form),this.addListenerClick.delegate(this,marker));

    loader.remove();
}
ht_location_e.prototype.addSubmitHandler = function(form){
    var self = this;

    $('form', form).submit(function(){
        $(form).block({
            message: "<img src='/images/loader-small.gif'/>" ,
            overlayCSS: {
                backgroundColor: '#eee'
            },
            css: {
                border:		'0px',
                opacity:        '0.5',
                backgroundColor:'#eee'
            }
        });
        app.sendForm(form, function(newForm){
            $(form).unblock();

            var matches = newForm.match(/^(\d+)\|(.*)/)
            if(matches && matches.length==3){
                self.mm.createLocation({
                    name:matches[2],
                    id:matches[1],
                    position:self.marker.getPosition()
                });

                self.remove();
                self.onSaveChange(true);
            }else{
                self.marker.infoWindow.setContent(self.addSubmitHandler(app.formatHtml(newForm)));
            }
        });
        return false;
    });
    return form;
}