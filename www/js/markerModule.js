function markerModule(){
    this.mm = app.getModule('mapModule');
    this.listenerClick = null;
    this.initMenu();

}
markerModule.name = 'markerModule';
ModuleManager.add(markerModule);

markerModule.prototype.initMenu = function(){    
    $('#new_location').click(this.startEdit.delegate(this));
}

markerModule.prototype.startEdit = function(){
    this.mm.updateBar('<img style="margin-bottom:-4px" src="/images/location.png"/><span>creating location</span></span><input class="button disabled" type="button" value="save"/><input class="button" type="button" value="cancel"/>');
    this.listenerClick = gm.event.addListener(this.mm.map,'click',this.onClickEdit.delegate(this));
    return false;
}
markerModule.prototype.stopEdit = function(){
    gm.event.removeListener(this.listenerClick);
}
markerModule.prototype.onClickEdit = function(e){
    var point = e.latLng;

    this.marker && this.mm.removeMarker(this.marker);
    this.mm.closeInfo();

    this.addMarker(point);
    
    this.mm.setCenter(point);
}

markerModule.prototype.addMarker = function(point){
    this.marker = this.mm.createMarker({
        position:point,
        title:'new location',
        draggable: true
    });
    this.addMarkerListener(this.marker);
}

markerModule.prototype.addMarkerListener = function(marker){
    marker.listenerClick = gm.event.addListener(marker,'click',this.onMarkerClick.delegate(this,marker));
}

markerModule.prototype.onMarkerClick = function(e,marker){
    var loader = this.mm.showLoader(marker.getPosition(),'<img src="/images/loader-small.gif" />');
    gm.event.removeListener(marker.listenerClick);
    app.getForm('/location/new',this.showForm.delegate(this,marker,loader));
}

markerModule.prototype.showForm = function(form,marker,loader){
    $('#location_latitude', form).val(marker.getPosition().lat());
    $('#location_longitude', form).val(marker.getPosition().lng());

    this.mm.openInfo(marker.getPosition(),this.addSubmitHandler(form),this.addMarkerListener.delegate(this,marker));

    loader.remove();
}

markerModule.prototype.addSubmitHandler = function(form){
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
                    title:matches[2],
                    id:matches[1],
                    position:self.marker.getPosition()
                });
                
                self.mm.removeMarker(self.marker);
                self.mm.closeInfo();
            }else{
                self.marker.infoWindow.setContent(self.addSubmitHandler(app.formatHtml(newForm)));
            }
        });
        return false;
    });
    return form;
}
