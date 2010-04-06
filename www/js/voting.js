function vote(){  
    $('div.rating span').live('mouseover', function(){
        $(this).parent().addClass('look');
    });
    $('div.rating').live('mouseleave',function(){
        $(this).removeClass('look');
    });
    $('div.rating a').live('click',function(){
        var link = $(this);
        if(link.hasClass('voted')){
            return false;
        }
        link.parent().addClass('voting');
        
        app.sendData({
            url:'/vote/'+link.parent().attr('to'),
            data:{
                up:link.hasClass('plus')+0,
                id:link.parent().attr('id').substr(4)
            },
            handler: function(rating){
                $('span',link.parent()).html('['+rating+']');
                $('a',link.parent()).removeClass('voted');
                link.parent().removeClass('voting');
                link.addClass('voted');
            }
        })
        return false;
    });
}
vote.name = 'vote';
ModuleManager.add(vote);


vote.prototype.afterInit = function(){
    }
