function profitModule(){
    this.menu = null;
    this.bar = null;
    this.location = null;
    this.infoWindow = null;
    this.listeners = {};
}
profitModule.name = 'profitModule';
ModuleManager.add(profitModule);


profitModule.prototype.afterInit = function(){
    fb('initing... profitModule' )
    this.mm = app.getModule('mapModule');
    this.initMenu();
}


profitModule.prototype.initMenu = function(){
    this.menu = {
        link: $('#new_profit',this.mm.addEditItem('<a id="new_profit" href=""><img src="' + app.url('/images/profit.png') + '"/>добавить отчет</a>'))
        .click(this.startEdit.delegate(this))
    };
}

profitModule.prototype.startEdit = function(){
    if(this.mm.getEditor() != this){
        this.mm.cancelEdit();
        this.mm.setEditor(this);
        this.menu.link.addClass('disabled');

        this.mm.handlers.onLocationClick = this.getOnLocationClick().delegate(this)

        this.barCreate();
        this.barSetMsg('Выберите место или добавьте новое');
    }
    return false;
}

profitModule.prototype.cancelEdit = function(){
    this.mm.handlers.onLocationClick = this.mm.getOnLocationClick().delegate(this.mm)
    this.barRemove();
    this.menu.link.removeClass('disabled');
}


profitModule.prototype.getOnLocationClick =  function(){
    return function(location){
        app.redirect('/profit/new/location/'+location.id);
    }
}

profitModule.prototype.onSaveChange = function(disabled){
    this.barSaveDisabled(disabled);
}

profitModule.prototype.barCreate = function(){
    var bar = this.mm.updateBar('<img class="mapIcon" src="' + app.url('/images/profit.png') + '"/><span id="bar_msg"></span></span><input id="bar_save" class="map_button disabled" type="button" value="Сохранить"/><input id="bar_cancel" class="map_button" type="button" value="Отмена"/>');
    this.bar = {
        msg: $('#bar_msg',bar),
        save: $('#bar_save',bar),
        cancel: $('#bar_cancel',bar)
        .click(this.mm.cancelEdit.delegate(this.mm))
    };
}
profitModule.prototype.barRemove = function(){
    this.bar = null;
    this.mm.updateBar();
}
profitModule.prototype.barSetMsg = function(text){
    this.bar.msg.text(text);
    this.mm.centerBar();
}

profitModule.prototype.barSaveDisabled = function(disabled){
    if(disabled){
        this.bar.save.addClass('disabled').unbind('click');
    }else{
        this.bar.save.removeClass('disabled').click(this.profit.onClick.delegate(this.profit));
    }
}
