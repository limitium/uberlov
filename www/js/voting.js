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
            url: app.url('/vote/for'),
            data:{
                subj: link.parent().attr('to'),
                up: link.hasClass('plus')+0,
                id: link.parent().attr('id').substr(4)
            },
            handler: function(response){
                $('span',link.parent()).html('['+response.rating+']');
                link.parent().removeClass('voting');
                if(response.status=='ok'){
                    $('a',link.parent()).removeClass('voted');
                    link.addClass('voted');
                }else{
                    app.popUp('Голосуешь за себя!?<br />Сгоришь в аду!');
                }
            }
        })
        return false;
    });
}
vote.name = 'vote';
ModuleManager.add(vote);