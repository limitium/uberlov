function lineModule(){
    this.mm = app.getModule('mapModule');
    this.listenerClick = null;
    this.poly = null;
    this.initMenu();
}
lineModule.name = 'lineModule';
ModuleManager.add(lineModule);


lineModule.prototype.initMenu = function(){
    $('#new_line').click(this.startEdit.delegate(this));
    $('#save').click(this.getForm.delegate(this));
}
lineModule.prototype.startEdit = function(){
    this.poly = this.mm.createPoly({
        path: new gm.MVCArray(),
        strokeColor: '#0033ff',
        strokeOpacity: 0.5,
        strokeWeight: 5
    });
    this.poly.points = new gm.MVCArray();
    this.poly.head = null;

    this.listenerClick = gm.event.addListener(this.mm.map, 'click', this.addLinePoint.delegate(this));
    return false;
}


lineModule.prototype.stopEdit = function(){
    var self = this;
    this.removeHead();
    this.poly.points.forEach(function(point){
        gm.event.addListener(point,'click',self.onPointClick.delegate(self,point));
    });
    gm.event.removeListener(this.listenerClick);
    this.listenerClick =null;
}

lineModule.prototype.addLinePoint = function(e){
    var path = this.poly.getPath();

    path.insertAt(path.length, e.latLng);

    this.createPoint(path.length-1, e.latLng);

    this.mm.setCenter(e.latLng);
}

lineModule.prototype.createPoint = function(index,latLng){
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
        if(self.poly.points.length==0){
            return ;
        }
        
        if(this.index == 0 ){            
            self.poly.points.getAt(this.index+1).updateMidPoint(true);
            return;
        }
        
        var latLng = this.getPosition();
        var prevPoint = self.poly.points.getAt(this.index-1).getPosition();
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

        if(this.index+1 < self.poly.points.length && !noNext){
            self.poly.points.getAt(this.index+1).updateMidPoint(true);
        }
    }
    
    this.addPointListener(point);
    point.updateMidPoint();

    
    
    this.poly.points.insertAt(index, point);

    if(this.listenerClick){
        this.updateHead();
    }
}
lineModule.prototype.removePoly = function(){
    var self = this;
    this.poly.points.forEach(function(point){
        point.midPoint && self.mm.removeMarker(point.midPoint);
        self.mm.removeMarker(point);
    })
    this.poly.setMap(null);
    this.poly =null;
}
lineModule.prototype.removeHead = function(){
    if(this.poly.head){
        this.poly.head.setIcon(this.iconPoint);
        gm.event.removeListener(this.poly.head.listenerClick);
    }
}

lineModule.prototype.createHead =  function(){
    this.poly.head = this.poly.points.getAt(this.poly.points.length-1);
    this.poly.head.setIcon(this.iconHead);
    this.poly.head.listenerClick = gm.event.addListener(this.poly.head,'click',this.stopEdit.delegate(this));
}
lineModule.prototype.updateHead = function(){
    this.removeHead();

    if(this.poly.points.length<2){
        this.poly.head = null;
        return
    }
    this.createHead();
}

lineModule.prototype.addPointListener = function(point){
    if(!this.listenerClick){
        gm.event.addListener(point,'click',this.onPointClick.delegate(this,point));
    }
    gm.event.addListener(point,'dragend',this.onPointDrugEnd.delegate(this,point));
}

lineModule.prototype.addMidPointListener = function(midPoint){
    gm.event.addListener(midPoint,'dragend',this.onMidPointDrugEnd.delegate(this,midPoint));
}

lineModule.prototype.onPointClick = function(e,point){
    fb('clicked '+point.index)
    this.poly.getPath().removeAt(point.index);
    
    this.poly.points.removeAt(point.index);
    for(var i=point.index;i<this.poly.points.length;i++){
        this.poly.points.getAt(i).index-=1;
    }

    //first but not last
    if(this.poly.points.length!=0){
        if(point.index==0){
            this.poly.points.getAt(0).midPoint.setMap(null);
            this.poly.points.getAt(0).midPoint = null;
        }else{
            point.midPoint.setMap(null);
            point.midPoint = null;
        }
    }
    point.setMap(null);

    //last removed with it's mid and first havan't mid
    if(point.index!=this.poly.points.length  && point.index!=0){
        this.poly.points.getAt(point.index-1).updateMidPoint();
    }
}

lineModule.prototype.onPointDrugEnd = function(e,point){
    fb('point index '+point.index);
    var path = this.poly.getPath()
    path.setAt(point.index,new gm.LatLng(point.getPosition().lat(),point.getPosition().lng()));
    point.updateMidPoint();
}

lineModule.prototype.onMidPointDrugEnd = function(e,midPoint){

    var path = this.poly.getPath()
    var index = midPoint.point.index;

    fb('mid point index '+index);
    
    path.insertAt(index,midPoint.getPosition());

    this.createPoint(index,midPoint.getPosition());

    for(var i=index+1;i<this.poly.points.length;i++){
        this.poly.points.getAt(i).index+=1;
    }

    midPoint.point.updateMidPoint(true);
}

lineModule.prototype.iconPoint = new google.maps.MarkerImage('/images/line-point.png',
    // This marker is 20 pixels wide by 32 pixels tall.
    new google.maps.Size(8, 8),
    // The origin for this image is 0,0.
    new google.maps.Point(0,0),
    // The anchor for this image is the base of the flagpole at 0,32.
    new google.maps.Point(4, 4));

lineModule.prototype.iconMidPoint = new google.maps.MarkerImage('/images/line-midpoint.png',
    // This marker is 20 pixels wide by 32 pixels tall.
    new google.maps.Size(8, 8),
    // The origin for this image is 0,0.
    new google.maps.Point(0,0),
    // The anchor for this image is the base of the flagpole at 0,32.
    new google.maps.Point(4, 4));

lineModule.prototype.iconHead = new google.maps.MarkerImage('/images/line-head.png',
    // This marker is 20 pixels wide by 32 pixels tall.
    new google.maps.Size(8, 8),
    // The origin for this image is 0,0.
    new google.maps.Point(0,0),
    // The anchor for this image is the base of the flagpole at 0,32.
    new google.maps.Point(4, 4));

lineModule.prototype.getForm = function(){
    var point = this.poly.points.getAt(this.poly.points.length-1);
    var loader = this.mm.showLoader(point.getPosition(),'<img src="/images/loader-small.gif" />');
    app.getForm('/route/new',this.showForm.delegate(this,point,loader));
    return false;
}
lineModule.prototype.showForm = function(form,point,loader){
    var points = [];
    this.poly.getPath().forEach(function(p){
        points[points.length] = p.lat()+";"+p.lng();
    });
    
    $('#route_points', form).val(points.join('|'));
    this.mm.openInfo(point.getPosition(),this.addSubmitHandler(form),function(){});
    loader.remove();
}
lineModule.prototype.addSubmitHandler = function(form){
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
                self.mm.createPoly({
                    path: self.poly.getPath(),
                    title:matches[2],
                    id:matches[1],
                    strokeColor: '#f30',
                    strokeOpacity: 0.5,
                    strokeWeight: 2
                });
                self.mm.closeInfo();
                self.removePoly();
            }else{
                self.poly.points.getAt(self.poly.points.length-1).infoWindow.setContent(self.addSubmitHandler(app.formatHtml(newForm)));
            }
        });
        return false;
    });
    return form;
}