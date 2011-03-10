function profileShow(){
    this.location = null;
    this.listeners = {};
}
profileShow.name = 'profileShow';
ModuleManager.add(profileShow);


profileShow.prototype.afterInit = function(){
    fb('initing... profileShow' )
    this.initListeners();
}

profileShow.prototype.initListeners = function(){
    $('.addFriend').live('click', this.addFriend.delegate(this));
    $('.removeFriend').live('click', this.removeFriend.delegate(this));
}

profileShow.prototype.addFriend = function(a){
    var a = $(a.target);

    if(!a.hasClass('adding')){
        a.addClass('adding');

        var user_id = a.attr('user');

        a.html('добавляем');

        app.sendData({
            url:app.url('/profile/add'),
            data:{
                id:user_id,
                _csrf_token: app.csrf.friend
            },
            handler: function(response){
                if(response.status == 'ok'){
                    var paresnts = a.parents();
                    
                    if(paresnts[2].id == 'requesters'){
                        var counter = $('#myFriendCounter');
                        counter.html(parseInt(counter.html())+1);
                        $(paresnts[0]).remove();
                        
                        $('div#accepted ul').append('<li><a href="'+app.url('/profile/show/id/')+response.id+'">'+response.nick+'</a> <a href="'+app.url('/profile/remove/id/')+response.id+'" user="'+response.id+'" class="removeFriend">-</a></li>');
                    }else{
                        a.remove();
                        $('div#requesters ul').append('<li><a href="'+app.url('/profile/show/id/')+response.id+'>'+response.nick+'</a></li>');
                    }
                }                                
            }
        });
        
    }
    return false;
}
profileShow.prototype.removeFriend = function(a){
    var a = $(a.target);

    if(!a.hasClass('removing')){
        a.addClass('removing');

        var user_id = a.attr('user');

        a.html('убираем');

        app.sendData({
            url:app.url('/profile/remove'),
            data:{
                id:user_id,
                _csrf_token: app.csrf.friend
            },
            handler: function(response){
                if(response.status == 'ok'){
                    var paresnts = a.parents();
                    if(paresnts[2].id == 'accepted'){
                        var counter = $('#myFriendCounter');
                        counter.html(parseInt(counter.html())-1);
                    }
                    $(paresnts[0]).remove();
                }
            }
        });

    }
    return false;
}
