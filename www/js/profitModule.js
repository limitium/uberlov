function profitModule(){
    this.menu = null;
    this.bar = null;
    this.profit = null;
    this.listeners = {};
    this.cfg = {
        editableZoom: 14
    };
}
profitModule.name = 'profitModule';
ModuleManager.add(profitModule);


profitModule.prototype.afterInit = function(){
    this.mm = app.getModule('mapModule');
    this.initMenu();
}
profitModule.prototype.initMenu = function(){
    this.menu = {
        link: $('#new_profit',this.mm.addEditItem('<a id="new_profit" class="editItem" href=""><img class="mapIcon" src="/images/profit.png"/>add profit</a>'))
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
        this.barSetMsg('select location or create new');
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
        //        this.mm.deselectAll();
        //        location.setSelected(!location.selected);

        var loader = this.mm.showLoader(location.marker.getPosition(),'<img src="/images/loader-small.gif" />');
        app.getForm('/profit/new',this.showForm.delegate(this,location.marker,loader));

    }
}
profitModule.prototype.showForm = function(form,marker,loader){
    $('#location_latitude', form).val(marker.getPosition().lat());
    $('#location_longitude', form).val(marker.getPosition().lng());

    this.mm.openInfo(marker.getPosition(),this.addSubmitHandler(form));

    loader.remove();
}
profitModule.prototype.addSubmitHandler = function(form){
    var self = this;

    $('form', form).submit(function(){
        $(form).block({
            message: "<img src='/images/loader-small.gif'/>" ,
            overlayCSS: {
                backgroundColor: '#eee'
            },
            css: {
                border:		'0px',
                opacity:        '0.5',
                backgroundColor:'#eee'
            }
        });

        app.sendForm(form, function(newForm){
            $(form).unblock();

            var matches = newForm.match(/^(\d+)\|(.*)/)

            if(matches && matches.length==3){
                self.mm.createLocation({
                    title:matches[2],
                    id:matches[1],
                    position:self.marker.getPosition()
                });

                self.remove();
                self.onSaveChange(true);
            }else{
                self.marker.infoWindow.setContent(self.addSubmitHandler(app.formatHtml(newForm)));
            }
        });
        return false;
    });
    return form;
}
profitModule.prototype.onSaveChange = function(disabled){
    this.barSaveDisabled(disabled);
}
profitModule.prototype.barCreate = function(){
    var bar = this.mm.updateBar('<img class="mapIcon" src="/images/profit.png"/><span id="bar_msg"></span></span><input id="bar_save" class="button disabled" type="button" value="save"/><input id="bar_cancel" class="button" type="button" value="cancel"/>');
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
