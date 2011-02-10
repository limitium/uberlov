function comment(){
    var self = this;
    this.comment = $('#newComment');
    this.comment.child = false;
    this.container = $('#commentContainer');
    this.type = $('#commentContainer').attr('type');
        
    app.formSubmiter({
        form: this.comment,
        response: function(newComment){
            $('textarea',self.comment).val('');
            $('#commentCounter').html(parseInt($('#commentCounter').html())+1);
            if(self.comment.child){
                self.comment.parent().parent().after(newComment);
                $('#commentReplyDefault a').trigger('click');
            }else{
                self.comment.before(newComment);
            }
        }
    });
    
    $('.commentReply').live('click', function(){
        $(this).parent().append(self.comment);
        $('#commentReplyDefault').css({
            display: 'block'
        });
        $('#comment_'+self.type+'_parent').val($(this).parent().parent().attr('id').substr(7));
        self.comment.child = true;
        $('textarea',self.comment).focus();
        return false;
    });
    
    $('#commentReplyDefault a').click(function(){
        $('#commentReplyDefault').css({
            display: 'none'
        });
        self.container.append(self.comment);
        
        $('#comment_'+self.type+'_parent').val('');
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

    $('.commentShowAuthor').live('click', function(){
        $('div[author$=user1]').toggleClass('hightlited');
        return false;
    });

    $('#goToReply').click(function(){
        $('html').animate({
            scrollTop: $('#newComment').offset().top
        }, 300);
        return false;
    });
    
    $('.commentMessage p').hover(function(){
        $(this).addClass('reading')
    },function(){
        $(this).removeClass('reading')
    });
}
comment.name = 'comment';
ModuleManager.add(comment);


comment.prototype.afterInit = function(){
    var params = $.unparam(window.location.hash.substr(1));
    if(params.comment){
        $('html').animate({
            scrollTop: $('#comment' + params.comment).offset().top
        }, 100);
    }
}
