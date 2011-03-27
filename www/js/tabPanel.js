function tabPanel(){
}
tabPanel.name = 'tabPanel';
ModuleManager.add(tabPanel);


tabPanel.prototype.afterInit = function(){
    fb('initing... tabPanel' )
    this.initListeners();
}


tabPanel.prototype.initListeners = function(){
    $('.tabPanel span').click(this.onTabClick.delegate(this));
}


tabPanel.prototype.onTabClick= function(click){
    var tabId = click.currentTarget.id;
    var containerId = tabId.substr(0,tabId.length-3) + 'Container';
    $('.tabPanel span').each(function(){
        if(this.id != tabId){
            $(this).removeClass('selected');
            $('#'+this.id.substr(0,this.id.length-3) + 'Container').removeClass('selected');
        }
    });

    $(click.currentTarget).addClass('selected');
    $('#'+containerId).addClass('selected');
}