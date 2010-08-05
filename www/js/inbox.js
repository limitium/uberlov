function inbox(){

    $('a.inboxDelete').click(function(){
        var a = $(this);
        if(a.hasClass('confirm')){
            a.html('Удаляем');
            app.sendData({
                url:app.baseUrl + '/inbox/delete',
                data:{
                    id: a.attr('inbox'),
                    _csrf_token: app.csrf.inbox
                },
                handler: function(){
                    var inbox = $('div.inboxContainer>ul>li>div.inbox');
                    if(inbox.length){
                        app.$.trigger('inboxDelete',[inbox]);
                    }else{
                        window.location = app.baseUrl + '/inbox/list';
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
        
        app.sendData({
            url:app.baseUrl + '/inbox/remove',
            data:{
                id: $('a.inboxDelete').attr('inbox'),
                profile: li.attr('profile'),
                _csrf_token: app.csrf.inbox
            },
            handler: function(){
                li.remove();
            }
        });
        return false;
    });

    $('#inboxAdd').keyup(function(e){
        if(e.keyCode == 13){
            app.sendData({
                url:app.baseUrl + '/inbox/add',
                data:{
                    id: $('a.inboxDelete').attr('inbox'),
                    data: $(this).val(),
                    _csrf_token: app.csrf.inbox
                },
                handler: function(data){
                    if(data.added.length){
                        var ul = $('#inboxControl ul');
                        
                        $.each(data.added, function() {
                            ul.append('<li profile="'+this.id+'"><a href="/frontend_dev.php/profile/show/id/'+this.id+'">'+this.name+'</a><a class="delete" href=""> x </a></li>')
                        });
                    }else{
                        $.blockUI({
                            message: 'Никто не найден.',
                            fadeIn: 700,
                            fadeOut: 700,
                            timeout: 2000,
                            showOverlay: false,
                            css: {
                                width: '350px',
                                top: '10px',
                                left: '',
                                right: '10px',
                                border: 'none',
                                padding: '5px',
                                backgroundColor: '#000',
                                '-webkit-border-radius': '10px',
                                '-moz-border-radius': '10px',
                                opacity: .6,
                                color: '#fff'
                            }
                        }); 
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
    inbox.remove();
}