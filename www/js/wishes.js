function wish(){  
}
wish.name = 'wish';
ModuleManager.add(wish);

wish.prototype.afterInit = function(){
    fb('initing... wish' )
    this.initListeners();
}

wish.prototype.initListeners = function(){
    $('.toWishes').live('click', this.addToWishList.delegate(this));
    $('.fromWishes').live('click', this.removeFromWishList.delegate(this));
}
wish.prototype.addToWishList = function(a){
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
wish.prototype.removeFromWishList = function(a){
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
                    if(a.parents()[2].id=='locationMy'){
                        $(a.parents()[0]).remove();
                    }else{
                        a.removeClass('fromWishes').removeClass('removing').addClass('toWishes').html('в мои места');
                    }
                    var counter = $('#myLocationCounter');
                    counter.html(parseInt(counter.html())-1);
                }
            }
        });

    }
    return false;
}