function comment(){
    var self = this;
    this.comment = $('#newComment');
    this.comment.parent = false;
    this.container = $('#commentContainer');
    this.type = $('#commentContainer').attr('type');
        
    app.formSubmiter({
        form: this.comment,
        response: function(newComment){
            $('textarea',self.comment).val('');
            app.getModule('form').editors[$('textarea',self.comment)[0].id].setHtml("<p>&nbsp;</p>")
            $('#commentCounter').html(parseInt($('#commentCounter').html())+1);
            if(self.comment.parent){
                self.comment.parent.parent().parent().after(newComment);
                $('#commentReplyDefault a').trigger('click');
            }else{
                self.comment.before(newComment);
            }
        }
    });
    
    $('.commentReply').live('click', function(){
        if(self.comment.parent){
            self.comment.parent.parent().css({
                'margin-bottom':0
            });
            self.comment.css({
                'margin-top':0
            });
        }
        
        self.comment.parent = $(this);
        $('#commentReplyDefault').css({
            display: 'block'
        });
        
        $('#comment_'+self.type+'_parent').val($(this).parent().parent().attr('id').substr(7));
        
        var commentHeight = self.comment.outerHeight(true);
        var offset = {
            top: $(this).parent().offset().top + $(this).parent().outerHeight(true), 
            left: $(this).parent().offset().left + 50
        }
        self.comment.offset(offset);
        self.comment.css({
            'margin-top':-commentHeight
        });
        $(this).parent().css({
            'margin-bottom':commentHeight
        });
        $('textarea',self.comment).focus();
        
        return false;
    });
    
    $('#commentReplyDefault a').click(function(){
        //        self.comment.offset($('#commentReplyDefault').offset())
        
        self.comment.css({
            top:0 ,
            left:0,
            position:'relative'
        });

        $('#commentReplyDefault').css({
            display: 'none'
        });
        
        $('#comment_'+self.type+'_parent').val('');
        
        
        self.comment.parent.parent().css({
            'margin-bottom':0
        });
        self.comment.css({
            'margin-top':0
        });
        self.comment.parent = false;
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
                backgroundColor:'#AACD4E'
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
                backgroundColor:'#AACD4E'
            });
            msg.animate({
                backgroundColor:'#fff'
            },200);
        });
        $(this).remove();
        return false;
    });

    $('.commentShowAuthor').live('click', function(){
        $('div[author$='+$(this).attr('author')+']').toggleClass('hightlited');
        return false;
    });

    $('#goToReply').click(function(){
        $('html').animate({
            scrollTop: $('#newComment').offset().top
        }, 300);
        return false;
    });
    
    $('.commentMessage').hover(function(){
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
