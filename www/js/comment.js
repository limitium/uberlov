function comment(){
    var self = this;
    this.comment = $('#newComment');
    this.comment.child = false;
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
            $('#commentCounter').html(parseInt($('#commentCounter').html())+1);
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
    
    $('.commentShowParent').live('click', function(){
        var parent = $('#comment'+$(this).attr('replyTo'));
        $('.commentShowFrom',parent).remove();
        $('.commentBar', parent).append('<a class="commentShowFrom" href="" from="'+$(this).parent().parent().attr('id')+'">&darr;</a>');
        $('html').animate({
            scrollTop:parent.offset().top
        }, 300, null,function(){
            var msg = $('.commentMessage',parent);
            msg.css({
                backgroundColor:'#0075f6'
            });
            msg.animate({
                backgroundColor:'#fff'
            },200);
        });
        return false;
    });
    
    $('.commentShowFrom').live('click', function(){
        var from = $('#'+$(this).attr('from'));
        $('html').animate({
            scrollTop: from.offset().top
        }, 300, null,function(){
            var msg = $('.commentMessage',from);
            msg.css({
                backgroundColor:'#0075f6'
            });
            msg.animate({
                backgroundColor:'#fff'
            },200);
        });
        $(this).remove();
        return false;
    });
}
comment.name = 'comment';
ModuleManager.add(comment);


comment.prototype.afterInit = function(){
    }
