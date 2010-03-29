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

    this.profit = new ht_profit_e(this.mm,{
      onSaveChange: this.onSaveChange.delegate(this)
    });
    this.listeners.zoom_changed = gm.event.addListener(this.mm.map,'zoom_changed',this.checkZoom.delegate(this));

    this.barCreate();
    this.checkZoom();
  }
  return false;
}

profitModule.prototype.cancelEdit = function(){
  this.profit.remove();
  this.listeners.click && gm.event.removeListener(this.listeners.click);
  gm.event.removeListener(this.listeners.zoom_changed);
  this.barRemove();
  this.menu.link.removeClass('disabled');
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
profitModule.prototype.checkZoom = function(){
  this.listeners.click && gm.event.removeListener(this.listeners.click);

  if(this.mm.map.getZoom() >= this.cfg.editableZoom){
    this.barSetMsg('creating profit');
    this.listeners.click = gm.event.addListener(this.mm.map,'click',this.profit.moveTo.delegate(this.profit));
  }else{
    this.barSetMsg('creating profit, increase zoom lvl');
  }
}




/**
 * Editable profit
 */
function ht_profit_e(mm,opt){
  this.mm = mm;
  this.marker = null;
  this.listeners = {};

  this.onSaveChange = opt.onSaveChange;
}
ht_profit_e.prototype.remove = function(){
  this.marker && this.mm.removeMarker(this.marker);
  this.mm.closeInfo();
  delete this.marker;
  this.marker = null;
}
ht_profit_e.prototype.moveTo = function(e){
  this.remove();

  this.createMarker(e.latLng);
}
ht_profit_e.prototype.createMarker = function(latLng){
  this.marker = this.mm.createMarker({
    position:latLng,
    title:'new profit',
    draggable: true
  });
  this.addListenerClick();

  gm.event.addListener(this.marker,'dragend',this.mm.closeInfo.delegate(this.mm));
}
ht_profit_e.prototype.addListenerClick = function(){
  this.onSaveChange(false);
  this.listeners.click = gm.event.addListener(this.marker,'click',this.onClick.delegate(this));
}
ht_profit_e.prototype.onClick = function(){
  this.onSaveChange(true);
  gm.event.removeListener(this.listeners.click);

  var loader = this.mm.showLoader(this.marker.getPosition(),'<img src="/images/loader-small.gif" />');
  app.getForm('/profit/new',this.showForm.delegate(this,this.marker,loader));
}
ht_profit_e.prototype.showForm = function(form,marker,loader){
  $('#profit_latitude', form).val(marker.getPosition().lat());
  $('#profit_longitude', form).val(marker.getPosition().lng());

  this.marker.infoWindow = this.mm.openInfo(marker.getPosition(),this.addSubmitHandler(form),this.addListenerClick.delegate(this,marker));

  loader.remove();
}
ht_profit_e.prototype.addSubmitHandler = function(form){
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
        self.mm.createprofit({
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