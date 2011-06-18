function markerModule(){
    this.menu = null;
    this.bar = null;
    this.location = null;
    this.listeners = {};
    this.cfg = {
        editableZoom: 12
    };
}
markerModule.name = 'markerModule';
ModuleManager.add(markerModule);


markerModule.prototype.afterInit = function(){
    fb('initing... markerModule' )
    this.mm = app.getModule('mapModule');
    this.initMenu();
}
markerModule.prototype.initMenu = function(){
    this.menu = {
        link: $('#new_location',this.mm.addEditItem('<a id="new_location" href=""><img src="' + app.url('/images/location_m.png') + '"/>добавить место</a>'))
        .click(this.startEdit.delegate(this))
    };
}

markerModule.prototype.startEdit = function(){
    if(this.mm.getEditor() != this){
        this.mm.cancelEdit();
        this.mm.setEditor(this);
        this.menu.link.addClass('disabled');

        this.location = new ht_location_m(this.mm,{
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
    var bar = this.mm.updateBar('<img class="mapIcon" src="' + app.url('/images/location_m.png') + '"/><span id="bar_msg"></span></span><input id="bar_save" class="map_button disabled" type="button" value="Сохранить"/><input id="bar_cancel" class="map_button" type="button" value="Отменить"/>');
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
        this.barSetMsg('Добавление места');
        this.listeners.click = gm.event.addListener(this.mm.map,'click',this.location.moveTo.delegate(this.location));
    }else{
        this.listeners.click = gm.event.addListener(this.mm.map,'click',function(){
         app.popUp('Нужно увеличить масштаб для добавления новой локации.');
        });
        this.barSetMsg('Добавление места, слишком  мелкий масштаб - промахнешься');
    }
}




/**
 * Editable location
 */
function ht_location_m(mm,opt){
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
ht_location_m.prototype.remove = function(){
    this.marker && this.mm.removeMarker(this.marker);
    this.mm.closeInfo();
    delete this.marker;
    this.marker = null;
}
ht_location_m.prototype.moveTo = function(e){
    this.remove();

    this.createMarker(e.latLng);
}
ht_location_m.prototype.createMarker = function(latLng){
    this.marker = this.mm.createMarker({
        position:latLng,
        title:'Новое место',
        draggable: true
    });
    this.addListenerClick();

    gm.event.addListener(this.marker,'dragend',this.mm.closeInfo.delegate(this.mm));
}
ht_location_m.prototype.addListenerClick = function(){
    this.onSaveChange(false);
    this.listeners.click = gm.event.addListener(this.marker,'click',this.onClick.delegate(this));
}

ht_location_m.prototype.onClick = function(){

    this.onSaveChange(true);
    gm.event.removeListener(this.listeners.click);

    var loader = this.mm.showLoader(this.marker.getPosition());

    this.getGeo(loader);
    this.getForm(loader);
    
}
ht_location_m.prototype.getGeo = function(loader){
    this.address = {
        route:'',
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
            fb(data);
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

ht_location_m.prototype.getForm = function(loader){
    this.loading.form = true;
    this.form = null;
    var self = this;
    
    app.getForm('/location/new',function(form){
        self.loading.form = false;
        self.form = form;
        self.showForm(loader);
    });
}
ht_location_m.prototype.showForm = function(loader){
    if(this.loading.address || this.loading.form){
        fb('loading');
        return ;
    }
    fb(this.address);
    var marker = this.marker;
    var form = this.form;
    
    $('#location_latitude', form).val(marker.getPosition().lat());
    $('#location_longitude', form).val(marker.getPosition().lng());
    $('#location_address', form).val($.JSON.encode((this.address)));

    
    marker.infoWindow = this.mm.openInfo(marker.getPosition(),this.addSubmitHandler(form),this.addListenerClick.delegate(this,marker));
    this.priceChangeListener(form);

    loader.remove();
}
ht_location_m.prototype.priceChangeListener = function(form){
    var self = this;
    var price = $($('#location_price',form).parents()[1]);
    
    $('#location_is_free', form).change(function(){
        if($(this).attr('checked')){
            price.hide();
            $('#location_price',price).attr('disabled', 'disabled');
            $(this).val(1);
            $('.location_form_wrapper').append('<br class="height_fix"><br class="height_fix">');
            self.mm.map.panBy(0,85);
        }else{
            price.show();
            $('#location_price',price).removeAttr('disabled');
            $(this).val(0);
            $('.location_form_wrapper br.height_fix').remove();
            self.mm.map.panBy(0,-85);
        }
        self.marker.infoWindow && gm.event.trigger(self.marker.infoWindow, 'content_changed');
    }).change();
    
    return form;
}
ht_location_m.prototype.addSubmitHandler = function(form){
    var self = this;
    
    app.formSubmiter({
        form: form,
        response: function(newForm){
            var matches = newForm.match(/^(\d+)\|(.*)\|(\d)/)
            if(matches && matches.length==4){
                self.mm.createLocation({
                    name:matches[2],
                    id:matches[1],
                    free:matches[3]==1,
                    position:self.marker.getPosition()
                });

                self.remove();
                self.onSaveChange(true);
            }else{
                self.marker.infoWindow.setContent(self.addSubmitHandler(app.formatHtml(newForm)));
            }
        }
    });
    return form;
}