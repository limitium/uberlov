function lineModule(){
  this.mm = app.getModule('mapModule');
  this.menu = null;
  this.bar = null;
  this.route = null;
  this.listeners = {};
  this.cfg = {
    editableZoom: 12
  };

  this.initMenu();
}
lineModule.name = 'lineModule';
ModuleManager.add(lineModule);


lineModule.prototype.initMenu = function(){
  this.menu = {
    link: $('#new_route',this.mm.addEditItem('<a id="new_route" class="editItem" href=""><img class="mapIcon" src="/images/route.png"/>add route</a>'))
    .click(this.startEdit.delegate(this))
  };
}
lineModule.prototype.startEdit = function(){
  if(this.mm.getEditor() != this){
    this.mm.cancelEdit();
    this.mm.setEditor(this);
    this.menu.link.addClass('disabled');
    this.route = new ht_route_e(this.mm,{
      onSaveChange: this.onSaveChange.delegate(this)
    });
    this.listeners.zoom_changed = gm.event.addListener(this.mm.map,'zoom_changed',this.checkZoom.delegate(this));
    this.barCreate();
    this.checkZoom();
  }
  return false;
}

lineModule.prototype.cancelEdit = function(){
  this.route.remove();
  this.listeners.click && gm.event.removeListener(this.listeners.click);
  gm.event.removeListener(this.listeners.zoom_changed);
  this.barRemove();
  this.menu.link.removeClass('disabled');
}

lineModule.prototype.onSaveChange = function(disabled){
  this.barSaveDisabled(disabled);
}
lineModule.prototype.barCreate = function(){
  var bar = this.mm.updateBar('<img class="mapIcon" src="/images/route.png"/><span id="bar_msg"></span></span><input id="bar_save" class="button disabled" type="button" value="save"/><input id="bar_cancel" class="button" type="button" value="cancel"/>');
  this.bar = {
    msg: $('#bar_msg',bar),
    save: $('#bar_save',bar),
    cancel: $('#bar_cancel',bar)
    .click(this.mm.cancelEdit.delegate(this.mm))
  };
}
lineModule.prototype.barRemove = function(){
  this.bar = null;
  this.mm.updateBar();
}
lineModule.prototype.barSetMsg = function(text){
  this.bar.msg.text(text);
  this.mm.centerBar();
}
lineModule.prototype.barSaveDisabled = function(disabled){
  if(disabled){
    this.bar.save.addClass('disabled').unbind('click');
  }else{
    this.bar.save.removeClass('disabled').click(this.route.getForm.delegate(this.route));
  }
}
lineModule.prototype.checkZoom = function(){
  this.listeners.click && gm.event.removeListener(this.listeners.click);
  if(this.mm.map.getZoom() >= this.cfg.editableZoom){
    this.barSetMsg('creating rotue');
    this.listeners.click = gm.event.addListener(this.mm.map,'click',this.route.addPoint.delegate(this.route));
  }else{
    this.barSetMsg('creating route, increase zoom lvl');
  }
}


/**
 * Editable poly line
 */
function ht_route_e(mm,opt){
  this.mm = mm;
  this.poly = this.mm.createPoly({
    path: new gm.MVCArray(),
    strokeColor: '#0033ff',
    strokeOpacity: 0.5,
    strokeWeight: 5
  });
  this.points = new gm.MVCArray();

  this.onSaveChange = opt.onSaveChange;
}
ht_route_e.prototype.addPoint = function(e){
  var path = this.poly.getPath();

  path.insertAt(path.length, e.latLng);

  this.createPoint(path.length-1, e.latLng);

  this.checkSave();

  this.mm.setCenter(e.latLng);
}
ht_route_e.prototype.createPoint = function(index,latLng){
  var self = this;
  var point = this.mm.createMarker({
    index:index,
    position:latLng,
    title:'point',
    icon:this.iconPoint,
    draggable: true
  });

  /**
     * each instance got new function :(
     */
  point.updateMidPoint = function(noNext){
    if(self.points.length==0){
      return ;
    }

    if(this.index == 0 ){
      self.points.getAt(this.index+1).updateMidPoint(true);
      return;
    }

    var latLng = this.getPosition();
    var prevPoint = self.points.getAt(this.index-1).getPosition();
    var deltaLat = prevPoint.lat()-latLng.lat();
    var deltaLng = prevPoint.lng()-latLng.lng();

    var newPosition = new gm.LatLng(latLng.lat()+deltaLat/2,latLng.lng()+deltaLng/2);

    if(this.midPoint){
      this.midPoint.setPosition(newPosition);
    } else{
      this.midPoint = self.mm.createMarker({
        position:newPosition,
        icon:self.iconMidPoint,
        draggable: true,
        point:this
      });

      self.addMidPointListener(this.midPoint);
    }

    if(this.index+1 < self.points.length && !noNext){
      self.points.getAt(this.index+1).updateMidPoint(true);
    }
  }

  this.addPointListener(point);
  point.updateMidPoint();



  this.points.insertAt(index, point);

  this.mm.closeInfo();
}
ht_route_e.prototype.addPointListener = function(point){
    gm.event.addListener(point,'click',this.onPointClick.delegate(this,point));
  gm.event.addListener(point,'dragend',this.onPointDrugEnd.delegate(this,point));
}

ht_route_e.prototype.addMidPointListener = function(midPoint){
  gm.event.addListener(midPoint,'dragend',this.onMidPointDrugEnd.delegate(this,midPoint));
}

ht_route_e.prototype.onPointClick = function(e,point){
  fb('clicked '+point.index)
  this.poly.getPath().removeAt(point.index);

  this.points.removeAt(point.index);
  for(var i=point.index;i<this.points.length;i++){
    this.points.getAt(i).index-=1;
  }

  //first but not last
  if(this.points.length!=0){
    if(point.index==0){
      this.points.getAt(0).midPoint.setMap(null);
      this.points.getAt(0).midPoint = null;
    }else{
      point.midPoint.setMap(null);
      point.midPoint = null;
    }
  }
  point.setMap(null);

  //last removed with it's mid and first haven't mid
  if(point.index!=this.points.length  && point.index!=0){
    this.points.getAt(point.index-1).updateMidPoint();
  }
  
  this.mm.closeInfo();
  this.checkSave();  
}

ht_route_e.prototype.onPointDrugEnd = function(e,point){
  fb('point index '+point.index);
  var path = this.poly.getPath()
  path.setAt(point.index,new gm.LatLng(point.getPosition().lat(),point.getPosition().lng()));
  point.updateMidPoint();

  this.mm.closeInfo();
}

ht_route_e.prototype.onMidPointDrugEnd = function(e,midPoint){

  var path = this.poly.getPath()
  var index = midPoint.point.index;

  fb('mid point index '+index);

  path.insertAt(index,midPoint.getPosition());

  this.createPoint(index,midPoint.getPosition());

  for(var i=index+1;i<this.points.length;i++){
    this.points.getAt(i).index+=1;
  }

  midPoint.point.updateMidPoint(true);
}
ht_route_e.prototype.clear = function(){
  this.mm.closeInfo();
  
  var self = this;
  this.points.forEach(function(point){
    if(point.midPoint){
      self.mm.removeMarker(point.midPoint);
      delete point.midPoint;
    }
    self.mm.removeMarker(point);
    delete point;
  });
  this.poly.setPath(new gm.MVCArray());
  this.points = new gm.MVCArray();
}
ht_route_e.prototype.remove = function(){
  this.clear();

  this.poly.setMap(null);
  this.poly =null;
}

ht_route_e.prototype.checkSave = function(){
  this.onSaveChange(this.points.length<2);
}
ht_route_e.prototype.getForm = function(){
  var point = this.points.getAt(this.points.length-1);
  var loader = this.mm.showLoader(point.getPosition(),'<img src="/images/loader-small.gif" />');
  app.getForm('/route/new',this.showForm.delegate(this,point,loader));

  this.onSaveChange(true);
  return false;
}
ht_route_e.prototype.showForm = function(form,point,loader){
  var points = [];
  this.poly.getPath().forEach(function(p){
    points[points.length] = p.lat()+";"+p.lng();
  });

  $('#route_points', form).val(points.join('|'));
  point.infoWindow = this.mm.openInfo(point.getPosition(),this.addSubmitHandler(form),this.onSaveChange.delegate(this,false));
  loader.remove();
}
ht_route_e.prototype.addSubmitHandler = function(form){
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
        new ht_route(self.mm,{
          path: self.poly.getPath(),
          title:matches[2],
          id:matches[1],
          strokeColor: '#f30',
          strokeOpacity: 0.5,
          strokeWeight: 2
        });
        self.clear();
        self.checkSave();
      }else{
        self.points.getAt(self.points.length-1).infoWindow.setContent(self.addSubmitHandler(app.formatHtml(newForm)));
      }
    });
    return false;
  });
  return form;
}
ht_route_e.prototype.iconPoint = new gm.MarkerImage('/images/line-point.png',
  new google.maps.Size(8, 8),
  new google.maps.Point(0,0),
  new google.maps.Point(4, 4));

ht_route_e.prototype.iconMidPoint = new gm.MarkerImage('/images/line-midpoint.png',
  new google.maps.Size(8, 8),
  new google.maps.Point(0,0),
  new google.maps.Point(4, 4));
