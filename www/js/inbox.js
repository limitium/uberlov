function inbox(){

    $('a.inboxDelete').click(function(){
        var a = $(this);
        if(a.hasClass('confirm')){
            a.html('Удаляем');
            app.sendData({
                url:app.url('/inbox/delete'),
                data:{
                    id: a.attr('inbox'),
                    _csrf_token: app.csrf.inbox
                },
                handler: function(){
                    var inbox = $('div.inboxContainer>ul>li>div.inbox');
                    if(inbox.length){
                        app.$.trigger('inboxDelete',[inbox]);
                    }else{
                        app.redirect('/inbox/list');
                    }
                }
            });
        }else{
            a.addClass('confirm');
            a.html('Точно удалить?')
        }
        return false;
    });

    $('#inboxControl a.delete').live('click', function(){
        var a = $(this);
        var li  = $(a.parents()[0]);
        if(!a.hasClass('removing')){
            a.addClass('removing');
            a.html('удаляем')
            app.sendData({
                url:app.url('/inbox/remove'),
                data:{
                    id: $('a.inboxDelete').attr('inbox'),
                    profile: li.attr('profile'),
                    _csrf_token: app.csrf.inbox
                },
                handler: function(){
                    li.remove();
                }
            });
        }
        return false;
    });

    var input = $('#inboxAdd');
    input.keyup(function(e){
        if(e.keyCode == 13){
            var users = $(this).val();
            
            input.attr('disabled','disabled');
            input.val('добавляем...');

            app.sendData({
                url:app.url('/inbox/add'),
                data:{
                    id: $('a.inboxDelete').attr('inbox'),
                    data: users,
                    _csrf_token: app.csrf.inbox
                },
                handler: function(data){
                    input.removeAttr('disabled');
                    input.val('');
                    if(data.added.length){
                        var ul = $('#inboxControl ul');
                        
                        $.each(data.added, function() {
                            ul.append('<li profile="'+this.id+'"><a href="' + app.url('/profile/show/id/' + this.id) +'">'+this.name+'</a><a class="delete" href=""> x </a></li>')
                        });
                    }else{
                        app.popUp('Никто не найден');
                    }
                }
            });
            $(this).val('');
        }
    });
}
inbox.name = 'inbox';
ModuleManager.add(inbox);

inbox.prototype.afterInit = function(){
    app.$.bind('inboxDelete', this.onDelete);
};
inbox.prototype.onDelete = function(event, inbox){
    $('#myInboxCounter').html(parseInt($('#myInboxCounter').html())-1);
    $(inbox.parents()[0]).remove();
}