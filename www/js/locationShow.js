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
    $('.toWishes').live('click', this.addToWishList.delegate(this));
    $('.fromWishes').live('click', this.removeFromWishList.delegate(this));
    
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

locationShow.prototype.addToWishList = function(a){
    var a = $(a.target);

    if(!a.hasClass('adding')){
        a.addClass('adding');

        var location_id = a.attr('location');

        a.html('добавляем');

        app.sendData({
            url:app.url('/location/tomy'),
            data:{
                id:location_id,
                _csrf_token: app.csrf.wishlist
            },
            handler: function(response){
                if(response.status == 'ok'){
                    a.removeClass('toWishes').removeClass('adding').addClass('fromWishes').html('убрать');
                    var counter = $('#myLocationCounter');
                    counter.html(parseInt(counter.html())+1);
                }                                
            }
        });
        
    }
    return false;
}
locationShow.prototype.removeFromWishList = function(a){
    var a = $(a.target);

    if(!a.hasClass('removing')){
        a.addClass('removing');

        var location_id = a.attr('location');

        a.html('убираем');

        app.sendData({
            url:app.url('/location/frommy'),
            data:{
                id:location_id,
                _csrf_token: app.csrf.wishlist
            },
            handler: function(response){
                if(response.status == 'ok'){
                    a.removeClass('fromWishes').removeClass('removing').addClass('toWishes').html('в мои места');
                    var counter = $('#myLocationCounter');
                    counter.html(parseInt(counter.html())-1);
                }
            }
        });

    }
    return false;
}
