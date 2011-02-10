function importLocModule(){
  this.menu = null;
  this.bar = null;
  this.location = null;
  this.listeners = {};
  this.cfg = {
    editableZoom: 14
  };
}
importLocModule.name = 'importLocModule';
ModuleManager.add(importLocModule);


importLocModule.prototype.afterInit = function(){
  this.mm = app.getModule('mapModule');
  var list = this.mm.openList(app.imports);
  this.barCreate();
  this.initList(list);
  this.createLocations(list);
  this.panToLoc();
}

importLocModule.prototype.initList = function(list){
  var lis = $('ul.mapList li',list);
  var self = this;

  $.each(lis,function(){
    var id = this.id.substr(9);
    app.imports[id].listItem = $(this)
  });
  
  lis.hover(function(){
    $(this).css({
      'background-color':'#222222'
    }).append('<div style="float:right"><a class="editItem " href="">[x]</a></div>');
    $('a.editItem',this).click(function(){
      self.removeLocation.call(this);
      return false;
    });
  },function(){
    $(this).css({
      'background-color':'#000000'
    });
    $('a.editItem',this).remove();
  }).click(function(){
    var id = this.id.substr(9);
    self.mm.map.panTo(app.imports[id].loc.marker.position);
    app.imports[id].loc.onClick();
  });
}

importLocModule.prototype.createLocations= function(list){
  var self = this;
  
  $.each(app.imports,function(){
    this.loc = new ht_location_imp(self.mm,{
      title: this.name,
      id: 'import_'+this.id,
      position: new gm.LatLng(this.lat,this.lng)
    });

    gm.event.addListener(this.loc.marker,'mouseover',function(e){
      var id = this.id.substr(7);
      app.imports[id].listItem.trigger(e.type);
      list.scrollTop(app.imports[id].listItem.position().top+list.scrollTop());
    });
    gm.event.addListener(this.loc.marker,'mouseout',function(e){
      var id = this.id.substr(7);
      app.imports[id].listItem.trigger(e.type);
    });
  });
}
importLocModule.prototype.removeLocation = function(){
  var li = $(this).parent().parent();
  var id = li.attr('id').substr(9);

  app.imports[id].loc.remove();
  li.remove();

  delete app.imports[id];
}
importLocModule.prototype.panToLoc = function(){
  var minLat=app.imports[1].lat,maxLat=app.imports[1].lat,minLng=app.imports[1].lng,maxLng=app.imports[1].lng;
  $.each(app.imports,function(){
    if(this.lat > maxLat){
      maxLat = this.lat;
    }
    if(this.lat < minLat){
      minLat = this.lat;
    }
    if(this.lng > maxLng){
      maxLng = this.lng;
    }
    if(this.lng < minLng){
      minLng = this.lng;
    }
  });
  this.mm.map.fitBounds(new gm.LatLngBounds(new gm.LatLng(maxLat, minLng), new gm.LatLng(minLat, maxLng)));
}
importLocModule.prototype.barCreate = function(){
  var bar = this.mm.updateBar('<input id="bar_save" class="button" type="button" value="save"/><input id="bar_cancel" class="button" type="button" value="cancel"/>');
  this.bar = {
    save: $('#bar_save',bar),
    cancel: $('#bar_cancel',bar)
    .click(this.mm.cancelEdit.delegate(this.mm))
  };
}
/**
 * Editable location
 */
function ht_location_imp(mm,opt){
  this.mm = mm;
  this.marker = null;
  this.listeners = {};
  
  this.createMarker(opt);
}
ht_location_imp.prototype.remove = function(){
  this.marker && this.mm.removeMarker(this.marker);
  this.mm.closeInfo();
  delete this.marker;
  this.marker = null;
}

ht_location_imp.prototype.createMarker = function(opt){
  this.marker = this.mm.createMarker({
    position: opt.position,
    title: opt.title,
    id: opt.id,
    draggable: true
  });
  this.addListenerClick();

  gm.event.addListener(this.marker,'dragend',this.mm.closeInfo.delegate(this.mm));
}
ht_location_imp.prototype.addListenerClick = function(){
  this.listeners.click = gm.event.addListener(this.marker,'click',this.onClick.delegate(this));
}
ht_location_imp.prototype.onClick = function(){
  gm.event.removeListener(this.listeners.click);

  var loader = this.mm.showLoader(this.marker.getPosition());
  app.getForm('/location/new',this.showForm.delegate(this,this.marker,loader));
}
ht_location_imp.prototype.showForm = function(form,marker,loader){
  $('#location_name', form).val(marker.title);
  $('#location_description', form).val(marker.description);

  this.marker.infoWindow = this.mm.openInfo(marker.getPosition(),this.addSubmitHandler(form),this.addListenerClick.delegate(this,marker));

  loader.remove();
}
ht_location_imp.prototype.addSubmitHandler = function(form){
  var self = this;

  $('form', form).submit(function(){

    self.marker.title = $('#location_name', form).val();
    self.marker.description = $('#location_description', form).val();

    var id = self.marker.id.substr(7);

    app.imports[id].name = $('#location_name', form).val();
    app.imports[id].description = $('#location_description', form).val();
    
    app.imports[id].listItem.html($('#location_name', form).val());

    self.mm.closeInfo();
    return false;
  });
  return form;
}