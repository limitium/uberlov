function comment(){
    var self = this;
    this.comment = $('#newComment');
    $('form',  this.comment).submit(function(){
        self.comment.block({
            message: "<img src='/images/loader-small.gif'/>" ,
            overlayCSS: {
                backgroundColor: '#ddd'
            },
            css: {
                border:		'0px',
                opacity:        '0.5',
                backgroundColor:'#eee'
            }
        });
        app.sendForm(self.comment, function(newComment){
            $(self.comment).unblock();
            $('textarea',self.comment).val('');
            if(self.comment.child){
                self.comment.parent().parent().after(newComment);
                $('#commentReplyDefault a').trigger('click');
            }else{
                self.comment.before(newComment);
            }
        });
        return false;
    })
    $('.commentReply').live('click', function(){
        $(this).parent().append(self.comment);
        $('#commentReplyDefault').css({
            display: 'block'
        });
        $('#comment_location_parent').val($(this).parent().parent().attr('id').substr(7));
        self.comment.child = true;
        $('textarea',self.comment).focus();
        return false;
    });
    
    $('#commentReplyDefault a').click(function(){
        $('#commentReplyDefault').css({
            display: 'none'
        });
        $('#commentContainer').append(self.comment);
        $('#comment_location_parent').val('');
        self.comment.child = false;
        return false;
    });
}
comment.name = 'comment';
ModuleManager.add(comment);


comment.prototype.afterInit = function(){
    }
