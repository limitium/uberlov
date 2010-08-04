function inbox(){
    $('a.inboxDelete').live('click', function(){
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