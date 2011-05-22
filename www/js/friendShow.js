function friendShow(){
    this.location = null;
    this.listeners = {};
}
friendShow.name = 'friendShow';
ModuleManager.add(friendShow);


friendShow.prototype.afterInit = function(){
    fb('initing... friendShow' )
    this.initListeners();
}

friendShow.prototype.initListeners = function(){
    $('.addFriend').live('click', this.addFriend.delegate(this));
    $('.removeFriend').live('click', this.removeFriend.delegate(this));
}

friendShow.prototype.addFriend = function(a){
    var a = $(a.target);
    var self = this;
    if(!a.hasClass('adding')){
        a.addClass('adding');

        var user_id = a.attr('user');

        a.html('добавляем');
        var request = {
            id:user_id,
            _csrf_token: app.csrf.friend
                
        };
        if(a.hasClass('self')){
            request.self = 1;
        }
        app.sendData({
            url:app.url('/profile/add'),
            data:request,
            handler: function(response){
                if(response.status == 'ok'){
                    var paresnts = a.parents();
                    if($(paresnts[2]).hasClass('requesters')){
                        var counter = $('#myFriendCounter');
                        counter.html(parseInt(counter.html())+1);
                        
                        self.addLink('accepted', response, ' <a href="'+app.url('/profile/remove/id/')+response.id+'" user="'+response.id+'" class="removeFriend">-</a>');
                        self.removeLink(a);
                    }else{
                        a.remove();
                        self.addLink('requesters', response, '');
                    }
                }                                
            }
        });
        
    }
    return false;
}
friendShow.prototype.removeFriend = function(a){
    var a = $(a.target);
    var self = this;
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
                    
                    
                    self.removeLink(a);
                }
            }
        });

    }
    return false;
}

friendShow.prototype.addLink = function(where, data, addLink){
    $('div.'+where+' ul').append('<li><a href="'+app.url('/profile/')+data.id+'" class="userpic"><img width="32" height="32" src="'+app.url(data.userpic)+'"><b class="s32"></b></a><a href="'+app.url('/profile/')+data.id+'">'+data.nick+'</a>'+addLink+'</li>');
    if($($('div.'+where)).hasClass('empty')){
        $($('div.'+where)).removeClass('empty') 
    }
}

friendShow.prototype.removeLink = function(a){
    var parents = a.parents();
    $(parents[0]).remove();
    if($(parents[1]).children().length == 0){
        $(parents[2]).addClass('empty');
    }
}