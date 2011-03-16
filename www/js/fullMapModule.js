function fullMapModule(){
}

fullMapModule.name = 'fullMapModule';
ModuleManager.add(fullMapModule);

fullMapModule.prototype.afterInit = function(){
    this.mm = app.getModule('mapModule');
    this.mm.$.bind('startMap',this.onStartMap.delegate(this));
}

fullMapModule.prototype.onStartMap = function(){
    this.initListeners();
}

fullMapModule.prototype.initListeners = function(){
    this.listeners = {
        dragend: gm.event.addListener(this.mm.map,'dragend',this.updateUrl.delegate(this)),
        click: gm.event.addListener(this.mm.map,'click',this.updateUrl.delegate(this)),
        maptypeid_changed: gm.event.addListener(this.mm.map,'maptypeid_changed',this.updateUrl.delegate(this)),
        zoom_changed: gm.event.addListener(this.mm.map,'zoom_changed',this.updateUrl.delegate(this))
    };
}

fullMapModule.prototype.updateUrl = function(){
    var params = window.location.hash.length ? $.unparam(window.location.hash.substr(1)) : {};
    $.extend(params, {
        lat:this.mm.map.getCenter().lat(),
        lng:this.mm.map.getCenter().lng(),
        z:this.mm.map.getZoom(),
        mt:this.mm.typeToId[this.mm.map.getMapTypeId()]
    });
    window.location.hash=$.param(params);
}