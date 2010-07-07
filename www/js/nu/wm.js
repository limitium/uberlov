function ExtLargeMapControl(opts){
    this.sliderStep=7;this.imgSrc="/img/wikimapiamapcontrols3d.png";this.imgSmallSrc="szc3d.png";this.divTbl={};this.divTbl.container={
        "left":0,
        "top":0,
        "width":99
    };this.divTbl.zoomSlideBarContainer={
        "left":0,
        "top":86,
        "width":25
    };this.divTbl.zoomSliderContainer={
        "left":0,
        "top":0,
        "width":25,
        "height":10
    };this.divTbl.zoomSliderContainerImg={
        "left":0,
        "top":-384,
        "width":25,
        "height":10
    };this.divTbl.zoomOutBtnContainer={
        "left":0,
        "top":0,
        "width":59,
        "height":27
    };this.divTbl.zoomOutBtnContainerImg={
        "left":0,
        "top":-357,
        "width":59,
        "height":27
    };this.divTbl.zoomLabelHouse={
        "left":0,
        "top":-396,
        "width":28,
        "height":22
    };this.divTbl.zoomLabelStreet={
        "left":-30,
        "top":-396,
        "width":28,
        "height":22
    };this.divTbl.zoomLabelCity={
        "left":-0,
        "top":-419,
        "width":28,
        "height":22
    };this.divTbl.zoomLabelCountry={
        "left":-30,
        "top":-419,
        "width":28,
        "height":22
    };this.divTbl.zoomLabelWorld={
        "left":-0,
        "top":-442,
        "width":28,
        "height":22
    };this.divTbl.zoomInMouseOver={
        "left":-2,
        "top":-452,
        "width":19,
        "height":19
    };this.divTbl.zoomOutMouseOver={
        "left":-28,
        "top":-452,
        "width":19,
        "height":19
    };opts=opts||{};this.zoomInBtnTitle=opts.zoomInBtnTitle||"zoom in";this.zoomOutBtnTitle=opts.zoomOutBtnTitle||"zoom out";this.houseTitle=opts.houseTitle||"House";this.streetTitle=opts.streetTitle||"Street";this.cityTitle=opts.cityTitle||"City";this.countryTitle=opts.countryTitle||"Country";this.worldTitle=opts.worldTitle||"World";this.opts=opts;this.divSmallTbl={};this.divSmallTbl.container={
        "left":0,
        "top":0,
        "width":25,
        "height":42
    };this.divSmallTbl.zoomInBtn={
        "left":0,
        "top":0,
        "width":25,
        "height":25
    };this.divSmallTbl.zoomOutBtnImg={
        "left":0,
        "top":-21,
        "width":25,
        "height":25
    };this.divSmallTbl.zoomOutBtn={
        "left":0,
        "top":21,
        "width":25,
        "height":25
    }
    }ExtLargeMapControl.prototype=new GControl();ExtLargeMapControl.prototype.initialize=function(map){
    this._map=map;GEvent.addListener(map,'maptypechanged',GEvent.callback(this,this._updateZoomSliderRange));var _handleList={};this._keyboardhandler=new GKeyboardHandler(map);var agt=navigator.userAgent.toLowerCase();this._is_ie=((agt.indexOf("msie")!==-1)&&(agt.indexOf("opera")===-1));this._is_ie67=(agt.indexOf("msie 6")!==-1||agt.indexOf("msie 7"));this._is_ie8=(agt.indexOf("msie 8")!==-1);this._is_gecko=(agt.indexOf('gecko')!==-1);this._is_opera=(agt.indexOf("opera")!==-1);var commonImg=new Image();commonImg.src=this.imgSrc;var container;var zoomOutBtn;var zoomInBtn;if(this.opts.type==="small"){
        container=document.createElement("div");container.style.left=this.divSmallTbl.container.left+"px";container.style.top=this.divSmallTbl.container.top+"px";container.style.width=this.divSmallTbl.container.width+"px";container.style.height=this.divSmallTbl.container.height+"px";container.style.position="absolute";container.style.overflow="hidden";this._container=container;zoomInBtn=this.makeImgDiv_(this.imgSmallSrc,this.divSmallTbl.zoomInBtn);zoomInBtn.style.cursor="pointer";zoomInBtn.title=this.zoomInBtnTitle;container.appendChild(zoomInBtn);zoomOutBtn=this.makeImgDiv_(this.imgSmallSrc,this.divSmallTbl.zoomOutBtnImg);zoomOutBtn.style.cursor="pointer";zoomOutBtn.style.overflow="hidden";zoomOutBtn.style.position="absolute";zoomOutBtn.style.left=this.divSmallTbl.zoomOutBtn.left+"px";zoomOutBtn.style.top=this.divSmallTbl.zoomOutBtn.top+"px";zoomOutBtn.style.width=this.divSmallTbl.zoomOutBtn.width+"px";zoomOutBtn.style.height=this.divSmallTbl.zoomOutBtn.height+"px";zoomOutBtn.title=this.zoomOutBtnTitle;container.appendChild(zoomOutBtn);GEvent.bindDom(zoomOutBtn,"click",this,this._eventZoomOut);GEvent.bindDom(zoomInBtn,"click",this,this._eventZoomIn);this._handleList=_handleList
        }else{
        var currentMapType=map.getCurrentMapType();var minZoom=parseInt(currentMapType.getMinimumResolution(),10);var maxZoom=parseInt(map.getCurrentMapType().getMaximumResolution(),10);this._maxZoom=maxZoom;this._step=this.sliderStep;var ctrlHeight=(86+5)+(maxZoom-minZoom+1)*this.sliderStep+5;container=document.createElement("div");var containerImage=this.makeImgDiv_(this.imgSrc,this.divTbl.container);containerImage.style.position="";container.style.overflow="hidden";container.appendChild(containerImage);container.style.height=(ctrlHeight+this.sliderStep+2)+"px";_handleList.container=container;_handleList.containerImage=containerImage;this._container=container;var zoomSlideBarContainer=document.createElement("div");zoomSlideBarContainer.style.position="absolute";zoomSlideBarContainer.style.left=this.divTbl.zoomSlideBarContainer.left+"px";zoomSlideBarContainer.style.top=this.divTbl.zoomSlideBarContainer.top+"px";zoomSlideBarContainer.style.width=this.divTbl.zoomSlideBarContainer.width+"px";zoomSlideBarContainer.style.height=((maxZoom-minZoom+1)*this.sliderStep)+"px";zoomSlideBarContainer.style.overflow="hidden";zoomSlideBarContainer.style.cursor="pointer";container.appendChild(zoomSlideBarContainer);_handleList.slideBar=zoomSlideBarContainer;var zoomLevel=map.getZoom()||17;var zoomSliderContainer=this.makeImgDiv_(this.imgSrc,this.divTbl.zoomSliderContainerImg);zoomSliderContainer.style.top=((maxZoom-zoomLevel)*this.sliderStep+1)+"px";zoomSliderContainer.style.left=this.divTbl.zoomSliderContainer.left+"px";zoomSliderContainer.style.width=this.divTbl.zoomSliderContainer.width+"px";zoomSliderContainer.style.height=this.divTbl.zoomSliderContainer.height+"px";zoomSlideBarContainer.cursor="url(http://maps.google.com/mapfiles/openhand.cur), default";zoomSlideBarContainer.appendChild(zoomSliderContainer);_handleList.slideBarContainer=zoomSliderContainer;var zoomOutBtnContainer=this.makeImgDiv_(this.imgSrc,this.divTbl.zoomOutBtnContainerImg);zoomOutBtnContainer.style.top=(86+1+(maxZoom-minZoom+1)*this.sliderStep)+"px";zoomOutBtnContainer.style.left=this.divTbl.zoomOutBtnContainer.left+"px";zoomOutBtnContainer.style.width=this.divTbl.zoomOutBtnContainer.width+"px";zoomOutBtnContainer.style.height=this.divTbl.zoomOutBtnContainer.height+"px";zoomOutBtnContainer.cursor="url(http://maps.google.com/mapfiles/openhand.cur), default";container.appendChild(zoomOutBtnContainer);_handleList.zoomOutBtnContainer=zoomOutBtnContainer;var zoomOutMouseOver=this.makeImgDiv_(this.imgSrc,this.divTbl.zoomOutMouseOver);zoomOutMouseOver.style.top=(82+(maxZoom-minZoom+1)*this.sliderStep)+"px";zoomOutMouseOver.style.left="3px";zoomOutMouseOver.style.width="19px";zoomOutMouseOver.style.height="19px";zoomOutMouseOver.style.display='none';container.appendChild(zoomOutMouseOver);_handleList.zoomOutMouseOver=zoomOutMouseOver;var zoomInMouseOver=this.makeImgDiv_(this.imgSrc,this.divTbl.zoomInMouseOver);zoomInMouseOver.style.top="65px";zoomInMouseOver.style.left="2px";zoomInMouseOver.style.width="20px";zoomInMouseOver.style.height="20px";zoomInMouseOver.style.display='none';container.appendChild(zoomInMouseOver);_handleList.zoomInMouseOver=zoomInMouseOver;zoomOutBtn=document.createElement("div");zoomOutBtn.style.position="absolute";zoomOutBtn.style.left="1px";zoomOutBtn.style.top=(91+(maxZoom-minZoom+1)*this.sliderStep)+"px";zoomOutBtn.style.width="20px";zoomOutBtn.style.height="20px";zoomOutBtn.style.cursor="pointer";zoomOutBtn.style.overflow="hidden";zoomOutBtn.title=this.zoomOutBtnTitle;container.appendChild(zoomOutBtn);_handleList.zoomOutBtn=zoomOutBtn;zoomInBtn=document.createElement("div");zoomInBtn.style.position="absolute";zoomInBtn.style.left="1px";zoomInBtn.style.top="65px";zoomInBtn.style.width="20px";zoomInBtn.style.height="20px";zoomInBtn.style.cursor="pointer";zoomInBtn.style.overflow="hidden";zoomInBtn.title=this.zoomInBtnTitle;container.appendChild(zoomInBtn);_handleList.zoomInBtn=zoomInBtn;var streetLabelBtn=this.makeLabel(this.imgSrc,this.streetTitle);streetLabelBtn.style.left="30px";streetLabelBtn.style.top="114px";streetLabelBtn.style.cursor="pointer";container.appendChild(streetLabelBtn);var cityLabelBtn=this.makeLabel(this.imgSrc,this.cityTitle);cityLabelBtn.style.left="30px";cityLabelBtn.style.top="152px";cityLabelBtn.style.cursor="pointer";container.appendChild(cityLabelBtn);var countryLabelBtn=this.makeLabel(this.imgSrc,this.countryTitle);countryLabelBtn.style.left="30px";countryLabelBtn.style.top="192px";countryLabelBtn.style.cursor="pointer";container.appendChild(countryLabelBtn);var worldLabelBtn=this.makeLabel(this.imgSrc,this.worldTitle);worldLabelBtn.style.left="30px";worldLabelBtn.style.top="221px";worldLabelBtn.style.cursor="pointer";container.appendChild(worldLabelBtn);_handleList.worldLabelBtn=worldLabelBtn;_handleList.countryLabelBtn=countryLabelBtn;_handleList.cityLabelBtn=cityLabelBtn;_handleList.streetLabelBtn=streetLabelBtn;this._handleList=_handleList;this._hideLabels();GEvent.bindDom(_handleList.zoomOutBtn,"click",this,this._eventZoomOut);GEvent.bindDom(_handleList.zoomOutBtn,"mouseover",this,this._eventZoomOutMouseOver);GEvent.bindDom(_handleList.zoomOutBtn,"mouseout",this,this._eventZoomOutMouseOut);GEvent.bindDom(_handleList.zoomOutBtn,"mouseover",this,this._eventControlMouseOver);GEvent.bindDom(_handleList.zoomOutBtn,"mouseout",this,this._eventControlMouseOut);GEvent.bindDom(_handleList.zoomInBtn,"click",this,this._eventZoomIn);GEvent.bindDom(_handleList.zoomInBtn,"mouseover",this,this._eventZoomInMouseOver);GEvent.bindDom(_handleList.zoomInBtn,"mouseout",this,this._eventZoomInMouseOut);GEvent.bindDom(_handleList.zoomInBtn,"mouseover",this,this._eventControlMouseOver);GEvent.bindDom(_handleList.zoomInBtn,"mouseout",this,this._eventControlMouseOut);GEvent.bindDom(_handleList.slideBar,"click",this,this._eventSlideBar);GEvent.bind(map,"zoomend",this,this._eventZoomEnd);GEvent.bindDom(_handleList.worldLabelBtn,"click",this,this._eventWorld);GEvent.bindDom(_handleList.countryLabelBtn,"click",this,this._eventCountry);GEvent.bindDom(_handleList.cityLabelBtn,"click",this,this._eventCity);GEvent.bindDom(_handleList.streetLabelBtn,"click",this,this._eventStreet);GEvent.bindDom(zoomSlideBarContainer,"mouseover",this,this._eventControlMouseOver);GEvent.bindDom(zoomSlideBarContainer,"mouseout",this,this._eventControlMouseOut);GEvent.bindDom(_handleList.worldLabelBtn,"mouseover",this,this._eventControlMouseOver);GEvent.bindDom(_handleList.countryLabelBtn,"mouseover",this,this._eventControlMouseOver);GEvent.bindDom(_handleList.cityLabelBtn,"mouseover",this,this._eventControlMouseOver);GEvent.bindDom(_handleList.streetLabelBtn,"mouseover",this,this._eventControlMouseOver);GEvent.bindDom(_handleList.worldLabelBtn,"mouseover",this,this._eventLabelMouseOver);GEvent.bindDom(_handleList.countryLabelBtn,"mouseover",this,this._eventLabelMouseOver);GEvent.bindDom(_handleList.cityLabelBtn,"mouseover",this,this._eventLabelMouseOver);GEvent.bindDom(_handleList.streetLabelBtn,"mouseover",this,this._eventLabelMouseOver);GEvent.bindDom(_handleList.worldLabelBtn,"mouseout",this,this._eventLabelMouseOut);GEvent.bindDom(_handleList.countryLabelBtn,"mouseout",this,this._eventLabelMouseOut);GEvent.bindDom(_handleList.cityLabelBtn,"mouseout",this,this._eventLabelMouseOut);GEvent.bindDom(_handleList.streetLabelBtn,"mouseout",this,this._eventLabelMouseOut);GEvent.bindDom(_handleList.worldLabelBtn,"mouseout",this,this._eventControlMouseOut);GEvent.bindDom(_handleList.countryLabelBtn,"mouseout",this,this._eventControlMouseOut);GEvent.bindDom(_handleList.cityLabelBtn,"mouseout",this,this._eventControlMouseOut);GEvent.bindDom(_handleList.streetLabelBtn,"mouseout",this,this._eventControlMouseOut);GEvent.bindDom(_handleList.worldLabelBtn,"mouseout",this,this._eventContainerOut);GEvent.bindDom(_handleList.countryLabelBtn,"mouseout",this,this._eventContainerOut);GEvent.bindDom(_handleList.cityLabelBtn,"mouseout",this,this._eventContainerOut);GEvent.bindDom(_handleList.streetLabelBtn,"mouseout",this,this._eventContainerOut);GEvent.bindDom(zoomSlideBarContainer,"mouseout",this,this._eventContainerOut);GEvent.bindDom(_handleList.zoomInBtn,"mouseout",this,this._eventContainerOut);GEvent.bindDom(_handleList.zoomOutBtn,"mouseout",this,this._eventContainerOut);GEvent.bindDom(_handleList.worldLabelBtn,"mouseover",this,this._eventContainerOver);GEvent.bindDom(_handleList.countryLabelBtn,"mouseover",this,this._eventContainerOver);GEvent.bindDom(_handleList.cityLabelBtn,"mouseover",this,this._eventContainerOver);GEvent.bindDom(_handleList.streetLabelBtn,"mouseover",this,this._eventContainerOver);GEvent.bindDom(zoomSlideBarContainer,"mouseover",this,this._eventContainerOver);GEvent.bindDom(_handleList.zoomInBtn,"mouseover",this,this._eventContainerOver);GEvent.bindDom(_handleList.zoomOutBtn,"mouseover",this,this._eventContainerOver);this._eventZoomEnd(map.getZoom(),map.getZoom())
        }if(this._is_ie){
        this._container.style.background='url("/img/blank.gif")'
        }map.getContainer().appendChild(container);var drgOpt={
        container:_handleList.slideBar
        };var drgCtrl=new GDraggableObject(_handleList.slideBarContainer,drgOpt);this._slider=drgCtrl;return container
    };ExtLargeMapControl.prototype._updateZoomSliderRange=function(setMaxZoom){
    var minZoom=parseInt(this._map.getCurrentMapType().getMinimumResolution(),10);var maxZoom=parseInt(this._map.getCurrentMapType().getMaximumResolution(),10);if(this.isNull(setMaxZoom)===false){
        maxZoom=setMaxZoom
        }else{
        this._maxZoom=maxZoom
        }var plusHeight=7;var ctrlHeight=(86+5)+(maxZoom-minZoom+1)*this.sliderStep+5+plusHeight;if(this.isNull(this._handleList)===true){
        return
    }this._handleList.container.style.height=(ctrlHeight+this.sliderStep+2+3+6)+"px";this._handleList.containerImage.style.height=(ctrlHeight+this.sliderStep+2+3-23-1)+"px";this._handleList.slideBar.style.height=((maxZoom-minZoom+1)*this.sliderStep+4)+"px";this._handleList.zoomOutBtnContainer.style.top=(86+1+3+2-1+(maxZoom-minZoom+1)*this.sliderStep)+"px";this._handleList.zoomOutBtn.style.top=(91+3+(maxZoom-minZoom+1)*this.sliderStep)+"px";this._handleList.slideBarContainer.style.top=((maxZoom-this._map.getZoom()||17)*this.sliderStep+1)+"px";this._handleList.zoomOutMouseOver.style.top=(89+6-1+(maxZoom-minZoom+1)*this.sliderStep)+"px";this._handleList.worldLabelBtn.style.top=(86-6+(maxZoom-2)*this.sliderStep+2)+"px";this._handleList.countryLabelBtn.style.top=(86-6+(maxZoom-6)*this.sliderStep+2)+"px";this._handleList.cityLabelBtn.style.top=(86-6+(maxZoom-11)*this.sliderStep+2)+"px";this._handleList.streetLabelBtn.style.top=(86-6+(maxZoom-15)*this.sliderStep+2)+"px";if(this._slider)this._slider.disable();var drgOpt={
        container:this._handleList.slideBar
        };var drgCtrl=new GDraggableObject(this._handleList.slideBarContainer,drgOpt);GEvent.bindDom(drgCtrl,"dragend",this,this._eventSlideDragEnd);this._slider=drgCtrl
    };ExtLargeMapControl.prototype._eventWorld=function(){
    this._map.setZoom(2)
    };ExtLargeMapControl.prototype._eventCountry=function(){
    this._map.setZoom(6)
    };ExtLargeMapControl.prototype._eventCity=function(){
    this._map.setZoom(11)
    };ExtLargeMapControl.prototype._eventStreet=function(){
    this._map.setZoom(15)
    };ExtLargeMapControl.prototype._eventHouse=function(){
    this._map.setZoom(19)
    };ExtLargeMapControl.prototype._showLabels=function(){
    this._handleList.worldLabelBtn.style.display='';this._handleList.countryLabelBtn.style.display='';this._handleList.cityLabelBtn.style.display='';this._handleList.streetLabelBtn.style.display=''
    };ExtLargeMapControl.prototype._hideLabels=function(){
    this._handleList.worldLabelBtn.style.display='none';this._handleList.countryLabelBtn.style.display='none';this._handleList.cityLabelBtn.style.display='none';this._handleList.streetLabelBtn.style.display='none'
    };ExtLargeMapControl.prototype._eventControlMouseOver=function(){
    if(!window.isdrag){
        this._showLabels()
        }if(this._timer){
        window.clearTimeout(this._timer)
        }
    };ExtLargeMapControl.prototype._eventControlMouseOut=function(){
    this._timer=window.setTimeout(this._hideLabels.bind(this),1000)
    };ExtLargeMapControl.prototype._eventZoomOut=function(){
    this._map.zoomOut()
    };ExtLargeMapControl.prototype._eventZoomIn=function(){
    this._map.zoomIn()
    };ExtLargeMapControl.prototype._eventZoomInMouseOver=function(){
    this._handleList.zoomInMouseOver.style.display=''
    };ExtLargeMapControl.prototype._eventZoomInMouseOut=function(){
    this._handleList.zoomInMouseOver.style.display='none'
    };ExtLargeMapControl.prototype._eventZoomOutMouseOver=function(){
    this._handleList.zoomOutMouseOver.style.display=''
    };ExtLargeMapControl.prototype._eventZoomOutMouseOut=function(){
    this._handleList.zoomOutMouseOver.style.display='none'
    };ExtLargeMapControl.prototype._eventLabelMouseOver=function(e){
    e.target.style.color='#ed1d24'
    };ExtLargeMapControl.prototype._eventLabelMouseOut=function(e){
    e.target.style.color='#fff'
    };ExtLargeMapControl.prototype._eventContainerOver=function(e){
    window.nomousedet=1;showpolyfn()
    };ExtLargeMapControl.prototype._eventContainerOut=function(e){
    window.nomousedet=0
    };ExtLargeMapControl.prototype._eventSlideBar=function(e){
    var map=this._map;var mouseY=e.clientY;var slideStep=this._step;var maxZoom=this._maxZoom;var container=this._container;var ctrlPos=this._getDomPosition(container);mouseY-=(ctrlPos.y+91);var zoomLevel=Math.round(maxZoom-(mouseY/slideStep));zoomLevel=zoomLevel<0?0:zoomLevel;map.setZoom(zoomLevel)
    };ExtLargeMapControl.prototype._getDomPosition=function(that){
    var targetEle=that;var pos={
        x:0,
        y:0
    };while(targetEle){
        pos.x+=targetEle.offsetLeft;pos.y+=targetEle.offsetTop;targetEle=targetEle.offsetParent;if(targetEle&&this._is_ie){
            pos.x+=(parseInt(ExtLargeMapControl.getElementStyle(targetEle,"borderLeftWidth","border-left-width"),10)||0);pos.y+=(parseInt(ExtLargeMapControl.getElementStyle(targetEle,"borderTopWidth","border-top-width"),10)||0)
            }
        }if(this._is_gecko){
        var bd=document.getElementsByTagName("BODY")[0];pos.x+=2*(parseInt(ExtLargeMapControl.getElementStyle(bd,"borderLeftWidth","border-left-width"),10)||0);pos.y+=2*(parseInt(ExtLargeMapControl.getElementStyle(bd,"borderTopWidth","border-top-width"),10)||0)
        }return pos
    };ExtLargeMapControl.getElementStyle=function(targetElm,IEStyleProp,CSSStyleProp){
    var elem=targetElm;if(elem.currentStyle){
        return elem.currentStyle[IEStyleProp]
        }else if(window.getComputedStyle){
        var compStyle=window.getComputedStyle(elem,"");return compStyle.getPropertyValue(CSSStyleProp)
        }
    };ExtLargeMapControl.prototype._eventSlideDragEnd=function(e){
    var maxZoom=this._maxZoom;var mouseY=this._slider.top;var step=this._step;if(!this._is_ie){
        var zoomLevel=Math.round(maxZoom-(mouseY/step));zoomLevel=zoomLevel<0?0:zoomLevel;this._map.setZoom(zoomLevel)
        }
    };ExtLargeMapControl.prototype._eventZoomEnd=function(oldZoom,newZoom){
    var maxZoom=this._maxZoom;if(newZoom<maxZoom){
        this._updateZoomSliderRange()
        }else{
        this._updateZoomSliderRange(newZoom);maxZoom=newZoom
        }var step=this._step;if(this._is_ie){
        this._handleList.slideBarContainer.style.top=((maxZoom-newZoom)*step+1)+'px'
        }else{
        this._slider.moveTo(new GPoint(this.divTbl.zoomSliderContainer,(maxZoom-newZoom)*step+1))
        }
    };ExtLargeMapControl.prototype.copy=function(){
    return new ExtLargeMapControl(this.latlng_,this.opts)
    };ExtLargeMapControl.prototype.getDefaultPosition=function(){
    return new GControlPosition(G_ANCHOR_TOP_LEFT,new GSize(10,10))
    };ExtLargeMapControl.prototype.selectable=function(){
    return false
    };ExtLargeMapControl.prototype.printable=function(){
    return true
    };ExtLargeMapControl.prototype.isNull=function(value){
    if(!value&&value!==0||value===undefined||value===""||value===null||typeof value==="undefined"){
        return true
        }return false
    };ExtLargeMapControl.prototype.makeImgDiv_=function(imgSrc,params){
    var imgDiv=document.createElement("div");imgDiv.style.position="absolute";imgDiv.style.overflow="hidden";if(params.width){
        imgDiv.style.width=params.width+"px"
        }if(params.height){
        imgDiv.style.height=params.height+"px"
        }var img=null;if(!this._is_ie){
        img=new Image();img.src=imgSrc
        }else{
        img=document.createElement("div");if(params.width){
            img.style.width=params.width+"px"
            }if(params.height){
            img.style.height=params.height+"px"
            }
        }img.style.position="relative";img.style.left=params.left+"px";img.style.top=params.top+"px";img.style.filter="progid:DXImageTransform.Microsoft.AlphaImageLoader(src='"+imgSrc+"')";imgDiv.appendChild(img);return imgDiv
    };ExtLargeMapControl.prototype.makeLabel=function(imgSrc,text,font){
    font=font||{};var labelDiv=document.createElement("div");labelDiv.style.position="absolute";labelDiv.style.overflow="hidden";labelDiv.style.width="auto";labelDiv.style.height="20px";var textWitdh=this.measureText(text,font)+10;var textDiv=this.makeImgDiv_(imgSrc,{
        left:0,
        top:-480,
        width:textWitdh
    });if(!this._is_ie){
        textDiv.style.cssFloat='left'
        }else{
        textDiv.style.styleFloat='left'
        }textDiv.style.position='';textDiv.style.width=textWitdh+'px';textDiv.innerHTML=textDiv.innerHTML+'<div style="position: absolute; left: 10px; top: 0px; line-height: 22px; color: #fff; font-size: 12px;font-weight:bold;">'+text+'</div>';var endDiv=this.makeImgDiv_(imgSrc,{
        left:-83,
        top:-480,
        width:7
    });if(!this._is_ie){
        endDiv.style.cssFloat='left'
        }else{
        endDiv.style.styleFloat='left';if(this._is_ie8){
            endDiv.style.marginLeft='1px'
            }
        }endDiv.style.cssFloat='left';endDiv.style.position='';endDiv.style.width='7px';labelDiv.appendChild(textDiv);labelDiv.appendChild(endDiv);return labelDiv
    };ExtLargeMapControl.prototype.measureText=function(text,font){
    var ruler=document.getElementById('text-measurer');if(!ruler){
        var ruler=document.createElement('span');ruler.style.visibility='hidden';ruler.style.whiteSpace='nowrap';ruler.style.position='absolute';ruler.style.left='-5000px';ruler.style.top='-5000px';ruler.setAttribute('id','text-measurer');document.getElementsByTagName('body')[0].appendChild(ruler)
        }ruler.innerHTML=text;ruler.style.fontWeight=font.weight||'bold';ruler.style.fontFamily=font.family||'Arial';ruler.style.fontSize=font.size||'12px';return ruler.offsetWidth
    };if(!Function.prototype.bind){
    Function.prototype.bind=function(obj){
        var fn=this;return function(){
            var args=[this];for(var i=0,ix=arguments.length;i<ix;i++){
                args.push(arguments[i])
                }return fn.apply(obj,args)
            }
        }
    }function ArrowMapControl(opts){
    this.imgSrc="/img/wikimapiamapcontrols3d-arrows.png";this.divTbl={};this.divTbl.container={
        "left":0,
        "top":0,
        "width":59
    };this.divTbl.topArrowBtn={
        "left":20,
        "top":0,
        "width":18,
        "height":18
    };this.divTbl.leftArrowBtn={
        "left":0,
        "top":20
    };this.divTbl.rightArrowBtn={
        "left":40,
        "top":20
    };this.divTbl.bottomArrowBtn={
        "left":20,
        "top":40
    };this.divTbl.centerBtn={
        "left":20,
        "top":20
    };opts=opts||{};this.moveNorthBtnTitle=opts.moveNorthBtnTitle||"north";this.moveSouthBtnTitle=opts.moveSouthBtnTitle||"south";this.moveEastBtnTitle=opts.moveEastBtnTitle||"east";this.moveWestBtnTitle=opts.moveWestBtnTitle||"west";this.homeBtnTitle=opts.homeBtnTitle||"home position";this.opts=opts
    }ArrowMapControl.prototype=new GControl();ArrowMapControl.prototype.initialize=function(map){
    this._map=map;var _handleList={};this._keyboardhandler=new GKeyboardHandler(map);var agt=navigator.userAgent.toLowerCase();this._is_ie=((agt.indexOf("msie")!==-1)&&(agt.indexOf("opera")===-1));this._is_ie67=(agt.indexOf("msie 6")!==-1||agt.indexOf("msie 7"));this._is_ie8=(agt.indexOf("msie 8")!==-1);this._is_gecko=(agt.indexOf('gecko')!==-1);this._is_opera=(agt.indexOf("opera")!==-1);var commonImg=new Image();commonImg.src=this.imgSrc;var container;container=this.makeImgDiv_(this.imgSrc,this.divTbl.container);container.style.height="59px";_handleList.container=container;this._container=container;var topBtn=this.makeImgDiv_(this.imgSrc,this.divTbl.topArrowBtn);topBtn.style.cursor="pointer";topBtn.style.left="20px";topBtn.style.top="0px";topBtn.title=this.moveNorthBtnTitle;container.appendChild(topBtn);var leftBtn=topBtn.cloneNode(true);leftBtn.style.left=this.divTbl.leftArrowBtn.left+"px";leftBtn.style.top=this.divTbl.leftArrowBtn.top+"px";leftBtn.title=this.moveWestBtnTitle;container.appendChild(leftBtn);var rightBtn=topBtn.cloneNode(true);rightBtn.style.left=this.divTbl.rightArrowBtn.left+"px";rightBtn.style.top=this.divTbl.rightArrowBtn.top+"px";rightBtn.title=this.moveEastBtnTitle;container.appendChild(rightBtn);var bottomBtn=topBtn.cloneNode(true);bottomBtn.style.left=this.divTbl.bottomArrowBtn.left+"px";bottomBtn.style.top=this.divTbl.bottomArrowBtn.top+"px";bottomBtn.title=this.moveSouthBtnTitle;container.appendChild(bottomBtn);var homeBtn=topBtn.cloneNode(true);homeBtn.style.left=this.divTbl.centerBtn.left+"px";homeBtn.style.top=this.divTbl.centerBtn.top+"px";homeBtn.title=this.homeBtnTitle;container.appendChild(homeBtn);_handleList.topBtn=topBtn;_handleList.leftBtn=leftBtn;_handleList.rightBtn=rightBtn;_handleList.bottomBtn=bottomBtn;_handleList.homeBtn=homeBtn;GEvent.bindDom(_handleList.topBtn,"click",this,this._eventTop);GEvent.bindDom(_handleList.leftBtn,"click",this,this._eventLeft);GEvent.bindDom(_handleList.rightBtn,"click",this,this._eventRight);GEvent.bindDom(_handleList.bottomBtn,"click",this,this._eventBottom);GEvent.bindDom(_handleList.homeBtn,"click",this,this._eventHome);this._handleList=_handleList;map.getContainer().appendChild(container);return container
    };ArrowMapControl.prototype._eventTop=function(){
    this._map.panDirection(0,1)
    };ArrowMapControl.prototype._eventLeft=function(){
    this._map.panDirection(1,0)
    };ArrowMapControl.prototype._eventRight=function(){
    this._map.panDirection(-1,0)
    };ArrowMapControl.prototype._eventBottom=function(){
    this._map.panDirection(0,-1)
    };ArrowMapControl.prototype._eventHome=function(){
    this._map.returnToSavedPosition()
    };ArrowMapControl.prototype.copy=function(){
    return new ArrowMapControl(this.latlng_,this.opts)
    };ArrowMapControl.prototype.getDefaultPosition=function(){
    return new GControlPosition(G_ANCHOR_TOP_LEFT,new GSize(10,10))
    };ArrowMapControl.prototype.selectable=function(){
    return false
    };ArrowMapControl.prototype.printable=function(){
    return true
    };ArrowMapControl.prototype.isNull=function(value){
    if(!value&&value!==0||value===undefined||value===""||value===null||typeof value==="undefined"){
        return true
        }return false
    };ArrowMapControl.prototype.makeImgDiv_=function(imgSrc,params){
    var imgDiv=document.createElement("div");imgDiv.style.position="absolute";imgDiv.style.overflow="hidden";if(params.width){
        imgDiv.style.width=params.width+"px"
        }if(params.height){
        imgDiv.style.height=params.height+"px"
        }var img=null;if(!this._is_ie||this._is_ie8){
        img=new Image();img.src=imgSrc
        }else{
        img=document.createElement("div");if(params.width){
            img.style.width=params.width+"px"
            }if(params.height){
            img.style.height=params.height+"px"
            }
        }img.style.position="relative";img.style.left=params.left+"px";img.style.top=params.top+"px";img.style.filter="progid:DXImageTransform.Microsoft.AlphaImageLoader(src='"+imgSrc+"')";imgDiv.appendChild(img);return imgDiv
    };function WikimapiaButton(params){
    this.imgSrc="/img/wikimapiabuttons.png";this.imgLargeSrc="/img/wikimapiabuttons-large.png";this.divTbl={};this.divTbl[this.STATE_INACTIVE]={
        "left":0,
        "top":0,
        "width":30,
        "height":30
    };this.divTbl[this.STATE_INACTIVE_HOVER]={
        "left":0,
        "top":-30,
        "width":30,
        "height":30
    };this.divTbl[this.STATE_ACTIVE]={
        "left":-30,
        "top":0,
        "width":30,
        "height":30
    };this.divTbl[this.STATE_ACTIVE_HOVER]={
        "left":-30,
        "top":-30,
        "width":30,
        "height":30
    };this.divLargeTbl={};this.divLargeTbl[this.STATE_INACTIVE]={
        "left":0,
        "top":0,
        "width":200,
        "height":30
    };this.divLargeTbl[this.STATE_INACTIVE_HOVER]={
        "left":0,
        "top":-30,
        "width":200,
        "height":30
    };this.divLargeTbl[this.STATE_ACTIVE]={
        "left":-200,
        "top":0,
        "width":200,
        "height":30
    };this.divLargeTbl[this.STATE_ACTIVE_HOVER]={
        "left":-200,
        "top":-30,
        "width":200,
        "height":30
    };this.divLargeTblEnd={};this.divLargeTblEnd[this.STATE_INACTIVE]={
        "left":-194,
        "top":0,
        "width":6,
        "height":30
    };this.divLargeTblEnd[this.STATE_INACTIVE_HOVER]={
        "left":-194,
        "top":-30,
        "width":6,
        "height":30
    };this.divLargeTblEnd[this.STATE_ACTIVE]={
        "left":-394,
        "top":0,
        "width":6,
        "height":30
    };this.divLargeTblEnd[this.STATE_ACTIVE_HOVER]={
        "left":-394,
        "top":-30,
        "width":6,
        "height":30
    };this.title=params.title||'';this.text=params.text||'';this.isLarge=!!this.text;if(this.isLarge){
        this.textWidth=this.measureText(this.text,{
            size:'12px'
        })
        }this.iconClass=params.iconClass||'';this.iconImage=params.iconImage||'';this.listener=params.listener||function(){};this.position=params.position||new GPoint(0,0);this.state=this.STATE_INACTIVE
    };WikimapiaButton.prototype=new GControl();WikimapiaButton.prototype.STATE_INACTIVE=0;WikimapiaButton.prototype.STATE_INACTIVE_HOVER=1;WikimapiaButton.prototype.STATE_ACTIVE=2;WikimapiaButton.prototype.STATE_ACTIVE_HOVER=3;WikimapiaButton.prototype.initialize=function(map){
    this._map=map;var _handleList={};var agt=navigator.userAgent.toLowerCase();this._is_ie=((agt.indexOf("msie")!==-1)&&(agt.indexOf("opera")===-1));this._is_ie67=(agt.indexOf("msie 6")!==-1||agt.indexOf("msie 7"));this._is_ie8=(agt.indexOf("msie 8")!==-1);this._is_gecko=(agt.indexOf('gecko')!==-1);this._is_opera=(agt.indexOf("opera")!==-1);var commonImg=new Image();commonImg.src=this.isLarge?this.imgLargeSrc:this.imgSrc;var button;var container;container=document.createElement("div");container.style.width=this.isLarge?30+this.textWidth+13+'px':"30px";container.style.height="30px";container.style.position="absolute";container.style.overflow="hidden";container.style.zIndex=1000;this._container=container;if(!this.isLarge){
        button=this.makeImgDiv_(this.imgSrc,this.divTbl[this.state])
        }else{
        button=this.makeImgDiv_(this.imgLargeSrc,this.divLargeTbl[this.state]);button.style.position="";button.style.width=36+this.textWidth+'px';if(!this._is_ie){
            button.style.cssFloat='left'
            }else{
            button.style.styleFloat='left'
            }
        }button.style.cursor="pointer";var icon;if(this.iconImage){
        if(this._is_ie){
            icon=document.createElement("div");icon.innerHTML='&nbsp';icon.style.filter="progid:DXImageTransform.Microsoft.AlphaImageLoader(src='"+this.iconImage+"')"
            }else{
            icon=new Image();icon.src=this.iconImage
            }
        }else{
        icon=document.createElement("div");icon.innerHTML='&nbsp';icon.className=this.iconClass
        }icon.style.position="absolute";icon.style.top="0px";icon.style.left="0px";icon.style.margin="7px";icon.style.width="16px";icon.style.height="16px";button.appendChild(icon);if(this.isLarge){
        var text=document.createElement("div");text.style.position="absolute";text.style.left="30px";text.style.top="0px";text.style.lineHeight="30px";text.innerHTML=this.text;text.style.fontFamily='Arial';text.style.color='red';text.style.fontSize='12px';text.style.fontWeight='bold';button.appendChild(text)
        }container.appendChild(button);if(this.isLarge){
        var buttonEnd=this.makeImgDiv_(this.imgLargeSrc,this.divLargeTblEnd[this.state]);buttonEnd.style.position="";if(!this._is_ie){
            buttonEnd.style.cssFloat='left'
            }else{
            buttonEnd.style.styleFloat='left'
            }container.appendChild(buttonEnd);this._buttonEnd=buttonEnd
        }this._button=button;var overlay=document.createElement("div");overlay.style.width=button.style.width;overlay.style.height=button.style.height;overlay.style.left='0px';overlay.style.top='0px';overlay.style.position='absolute';overlay.style.zIndex=100;overlay.style.cursor="pointer";container.appendChild(overlay);GEvent.bindDom(overlay,"click",this,this.listener);GEvent.bindDom(overlay,"mouseover",this,this._eventMouseOver);GEvent.bindDom(overlay,"mouseout",this,this._eventMouseOut);map.getContainer().appendChild(container);this.container=container;return container
    };WikimapiaButton.prototype._eventMouseOver=function(){
    if(this.state==this.STATE_INACTIVE){
        this.setState(this.STATE_INACTIVE_HOVER)
        }if(this.state==this.STATE_ACTIVE){
        this.setState(this.STATE_ACTIVE_HOVER)
        }window.nomousedet=1;showpolyfn();if(!this.tooltipOffsetX&&!this.tooltipOffsetY){
        this.tooltipOffsetX=parseInt(this.container.style.left)+parseInt(this.container.style.width)-12;this.tooltipOffsetY=parseInt(this.container.style.top)+parseInt(this.container.style.height)+7
        }if(!window.isdrag){
        Tooltip.show(this.tooltipOffsetX,this.tooltipOffsetY,this.title)
        }
    };WikimapiaButton.prototype._eventMouseOut=function(){
    if(this.state==this.STATE_INACTIVE_HOVER){
        this.setState(this.STATE_INACTIVE)
        }if(this.state==this.STATE_ACTIVE_HOVER){
        this.setState(this.STATE_ACTIVE)
        }window.nomousedet=0;Tooltip.hide()
    };WikimapiaButton.prototype.copy=function(){
    return new WikimapiaButton(this.title,this.listener)
    };WikimapiaButton.prototype.getDefaultPosition=function(){
    return new GControlPosition(G_ANCHOR_TOP_RIGHT,new GSize(10,10))
    };WikimapiaButton.prototype.selectable=function(){
    return false
    };WikimapiaButton.prototype.printable=function(){
    return true
    };WikimapiaButton.prototype.isNull=function(value){
    if(!value&&value!==0||value===undefined||value===""||value===null||typeof value==="undefined"){
        return true
        }return false
    };WikimapiaButton.prototype.setState=function(state){
    var oldState=this.state;this.state=state;switch(this.state){
        case this.STATE_INACTIVE:case this.STATE_INACTIVE_HOVER:case this.STATE_ACTIVE:case this.STATE_ACTIVE_HOVER:this._applyState(state);break;default:this.state=oldState
            }
    };WikimapiaButton.prototype.activate=function(){
    this.active=true;if(this.state==this.STATE_INACTIVE){
        this.setState(this.STATE_ACTIVE)
        }if(this.state==this.STATE_INACTIVE_HOVER){
        this.setState(this.STATE_ACTIVE_HOVER)
        }
    };WikimapiaButton.prototype.deactivate=function(){
    this.active=false;if(this.state==this.STATE_ACTIVE){
        this.setState(this.STATE_INACTIVE)
        }if(this.state==this.STATE_ACTIVE_HOVER){
        this.setState(this.STATE_INACTIVE_HOVER)
        }
    };WikimapiaButton.prototype.toggleActive=function(){
    this.active=!this.active;if(this.active){
        this.activate()
        }else{
        this.deactivate()
        }
    };WikimapiaButton.prototype._applyState=function(state){
    var target;var demensions=this.isLarge?this.divLargeTbl[state]:this.divTbl[state];if(!this._is_ie){
        target=this._button.getElementsByTagName('img')[0]
        }else{
        target=this._button.getElementsByTagName('div')[0]
        }target.style.left=demensions.left+"px";target.style.top=demensions.top+"px";if(this.isLarge){
        demensions=this.divLargeTblEnd[state];if(!this._is_ie){
            target=this._buttonEnd.getElementsByTagName('img')[0]
            }else{
            target=this._buttonEnd.getElementsByTagName('div')[0]
            }target.style.left=demensions.left+"px";target.style.top=demensions.top+"px"
        }
    };WikimapiaButton.prototype.makeImgDiv_=function(imgSrc,params){
    var imgDiv=document.createElement("div");imgDiv.style.position="absolute";imgDiv.style.overflow="hidden";if(params.width){
        imgDiv.style.width=params.width+"px"
        }if(params.height){
        imgDiv.style.height=params.height+"px"
        }var img=null;if(!this._is_ie){
        img=new Image();img.src=imgSrc
        }else{
        img=document.createElement("div");if(params.width){
            img.style.width=params.width+"px"
            }if(params.height){
            img.style.height=params.height+"px"
            }
        }img.style.position="relative";img.style.left=params.left+"px";img.style.top=params.top+"px";img.style.filter="progid:DXImageTransform.Microsoft.AlphaImageLoader(src='"+imgSrc+"')";imgDiv.appendChild(img);return imgDiv
    };WikimapiaButton.prototype.measureText=function(text,font){
    font=font||{};var ruler=document.getElementById('text-measurer');if(!ruler){
        var ruler=document.createElement('span');ruler.style.visibility='hidden';ruler.style.whiteSpace='nowrap';ruler.style.position='absolute';ruler.style.left='-5000px';ruler.style.top='-5000px';ruler.setAttribute('id','text-measurer');document.getElementsByTagName('body')[0].appendChild(ruler)
        }ruler.innerHTML=text;ruler.style.fontWeight=font.weight||'bold';ruler.style.fontFamily=font.family||'Arial';ruler.style.fontSize=font.size||'12px';return ruler.offsetWidth
    };var wm_vers=4;var icons=new Array();var insico;var pprevlip=null;var _dbmap;var doppomar=[];var reditmode=0;var rpoints={};var rsegments={};var rroads={};var masspoints={};var rpointshow={};var new_rpoints={};var rsegmshow={};var rpointsupold={};var rpoupnewdel={};var rsegupnewdel={};var ads;var getcoords1,getcoords2;var notsave=0;var notclick=0;var lastdist=0;var poilisteners={};var poilisteners1={};var poilisteners2={};var poilisteners3={};var poilisteners7={};var pointlisten3,pointlisten4,pointlisten5,pointlisten6;var currentpoi;var newpoiplus=0;var stoppprev,noplusshow,stopppplus,stopppplusov;var plineprev;var poly=[];var pcenicon;var userpt={};var spar=new Array();var block_recs=new Array();var lng=0;var blockadd=0;var skipinfo=0;var isdrag=0;var isdrag1=[];var showtag='';var x1old=0;var x2old=0;var y1old=0;var y2old=0;var tagold='';var lngold='';var lngcook='';var jwindowstate=1;var jwindow2state=0;var jwindow3state=2;var jwindow3state_prev=0;var jwindow3store='';var jwindow3mmstore='';var jwindow3mmch=0;var jmenustate=0;var on_jwindowclose='';var on_jwindow2close='';var no_close_ext=0;var whatinwin='';var whatinwin2='';var whatinwin3='';var mtype='b';var vtype=0;var otype=0;var tagfilter=0;var makingurl=0;var taghtml='';var lng_menu=0;var jzinchange=0;var tagfilter_mem='';var uid=0,lvl=0;var search_cache=new Array();var search_cache_url=new Array();var gpslat='';var gpslon='';var gpslast=0;var gpsfollow=1;var jevals='';var timerSI,timerWC,timerJV,timerOFF,timerGPS,timerGPS1,GPSpoint,GPSicon;var timerS;var bwidth,bheight;var adv_loc='';var adv_loc2='';var jwcururl='';var fp='';var mappend=new Array();var flphoar=[];var mobj=0;var on_jwindow3close;var _fu='function';var _un='undefined';var _no='none';var _bk='block';var _in='inline';var _sq="'";var _clr=[];_clr[0]='#eeeeee';_clr[1]='#f7f7f7';_clr[2]='#111';var outar=new Array();var blocshow={};var blocshowq=[];var gzipext='.xy';var temp='';var newtemp='';var lastadvload={};var ltype=0;var time_adv=0;adding_block=0;var mass={};var massid={};var tags={};var debug='';var showcity=1;var rndnum=0;var mass_poly={};var massid_poly={};var mass_adm={};var voo=new Array();var setmap='';var oldzoom;var new_blocks={};var show_blocks={};var kv={};var delti=new Array();var CUSTOM_WIKI_MAP,tilelayer;var jmtype=new Array('Auto','Map','Hybrid','Satellite','Terrain','Wikimapia');var jmtype1=new Array('a','m','h','s','t','w','b','n','p');var l_id=new Array();var jlng=new Array();jlng[60]='Afrikaans';jlng[57]='Albanian';jlng[71]='Amharic';jlng[10]='Arabic';jlng[22]='Armenian';jlng[49]='Azerbaijani';jlng[58]='Basque';jlng[23]='Belarusian';jlng[39]='Bengali';jlng[96]='Bicolano';jlng[56]='Bosnian';jlng[11]='Bulgarian';jlng[63]='Burmese';jlng[53]='Catalan';jlng[97]='Cebuano';jlng[83]='Chichewa';jlng[66]='Chinese Simpl.';jlng[6]='Chinese Trad.';jlng[70]='Corsican';jlng[20]='Croatian';jlng[12]='Czech';jlng[13]='Danish';jlng[26]='Dutch';jlng[0]='English';jlng[15]='Estonian';jlng[62]='Filipino (Tagalog)';jlng[17]='Finnish';jlng[2]='French';jlng[55]='Galician';jlng[65]='Georgian';jlng[5]='German';jlng[14]='Greek';jlng[73]='Guarani';jlng[45]='Gujarati';jlng[74]='Haitian';jlng[18]='Hebrew';jlng[99]='Hiligaynon';jlng[19]='Hindi';jlng[21]='Hungarian';jlng[59]='Icelandic';jlng[100]='Ilocano';jlng[54]='Indonesian';jlng[69]='Irish';jlng[4]='Italian';jlng[7]='Japanese';jlng[75]='Javanese';jlng[48]='Kannada';jlng[95]='Kapampangan';jlng[79]='Kashmiri';jlng[77]='Kazakh';jlng[78]='Khmer';jlng[76]='Kongo';jlng[8]='Korean';jlng[67]='Kurdish';jlng[80]='Kyrgyz';jlng[81]='Lao';jlng[25]='Latvian';jlng[24]='Lithuanian';jlng[61]='Macedonian';jlng[82]='Malagasy';jlng[52]='Malay';jlng[47]='Malayalam';jlng[101]='Maranao';jlng[41]='Marathi';jlng[64]='Mongolian';jlng[46]='Nepali';jlng[27]='Norwegian';jlng[50]='Oriya';jlng[84]='Oromo';jlng[94]='Pangasinense';jlng[85]='Pashto';jlng[16]='Persian (Farsi)';jlng[28]='Polish';jlng[9]='Portuguese';jlng[43]='Punjabi';jlng[86]='Quechua';jlng[29]='Romanian';jlng[1]='Russian';jlng[68]='Scottish Gaelic';jlng[32]='Serbian';jlng[89]='Sesotho';jlng[87]='Sindhi';jlng[72]='Sinhalese';jlng[30]='Slovak';jlng[31]='Slovenian';jlng[88]='Somali';jlng[3]='Spanish';jlng[51]='Sundanese';jlng[34]='Swahili';jlng[33]='Swedish';jlng[42]='Tamil';jlng[40]='Telugu';jlng[35]='Thai';jlng[36]='Turkish';jlng[90]='Twi';jlng[37]='Ukrainian';jlng[44]='Urdu';jlng[91]='Uzbek';jlng[38]='Vietnamese';jlng[98]='Waray-Waray';jlng[93]='Zulu';l_id[60]='af';l_id[57]='sq';l_id[71]='am';l_id[10]='ar';l_id[22]='hy';l_id[49]='az';l_id[58]='eu';l_id[23]='be';l_id[39]='bn';l_id[96]='bc';l_id[56]='bs';l_id[11]='bg';l_id[63]='my';l_id[53]='ca';l_id[97]='cb';l_id[83]='ny';l_id[66]='zh';l_id[6]='cn';l_id[70]='co';l_id[20]='hr';l_id[12]='cs';l_id[13]='da';l_id[26]='nl';l_id[0]='en';l_id[15]='et';l_id[62]='tl';l_id[17]='fi';l_id[2]='fr';l_id[55]='gl';l_id[65]='ka';l_id[5]='de';l_id[14]='el';l_id[73]='gn';l_id[45]='gu';l_id[74]='ht';l_id[18]='he';l_id[99]='hl';l_id[19]='hi';l_id[21]='hu';l_id[59]='is';l_id[100]='ic';l_id[54]='id';l_id[69]='ga';l_id[4]='it';l_id[7]='ja';l_id[75]='jv';l_id[48]='kn';l_id[95]='kp';l_id[79]='ks';l_id[77]='kk';l_id[78]='km';l_id[76]='kg';l_id[8]='ko';l_id[67]='ku';l_id[80]='ky';l_id[81]='lo';l_id[25]='lv';l_id[24]='lt';l_id[61]='mk';l_id[82]='mg';l_id[52]='ms';l_id[47]='ml';l_id[101]='ma';l_id[41]='mr';l_id[64]='mn';l_id[46]='ne';l_id[27]='no';l_id[50]='or';l_id[84]='om';l_id[94]='pn';l_id[85]='ps';l_id[16]='fa';l_id[28]='pl';l_id[9]='pt';l_id[43]='pa';l_id[86]='qu';l_id[29]='ro';l_id[1]='ru';l_id[68]='gd';l_id[32]='sr';l_id[89]='st';l_id[87]='sd';l_id[72]='si';l_id[30]='sk';l_id[31]='sl';l_id[88]='so';l_id[3]='es';l_id[51]='su';l_id[34]='sw';l_id[33]='sv';l_id[42]='ta';l_id[40]='te';l_id[35]='th';l_id[36]='tr';l_id[90]='tw';l_id[37]='uk';l_id[44]='ur';l_id[91]='uz';l_id[38]='vi';l_id[98]='ww';l_id[93]='zu';var langsort=new Array(60,57,71,10,22,49,58,23,39,96,56,11,63,53,97,83,66,6,70,20,12,13,26,0,15,62,17,2,55,65,5,14,73,45,74,18,99,19,21,59,100,54,69,4,7,75,48,95,79,77,78,76,8,67,80,81,25,24,61,82,52,47,101,41,64,46,27,50,84,94,85,16,28,9,43,86,29,1,68,32,89,87,72,30,31,88,3,51,34,33,42,40,35,36,90,37,44,91,38,98,93);var langpop=new Array(0,3,2,5,4,9,28,17,27,1);booklng={};booklng['en']=1;booklng['de']=1;booklng['nl']=1;booklng['fr']=1;booklng['es']=1;booklng['ca']=1;booklng['it']=1;booklng['pt']=1;booklng['no']=1;booklng['fi']=1;booklng['sv']=1;booklng['da']=1;booklng['ja']=1;booklng['zh']=1;booklng['pl']=1;booklng['el']=1;booklng['ru']=1;booklng['tr']=1;var m={};var is_addfn,d='';function checkIt(string){
    place=detect.indexOf(string)+1;thestring=string;return place
    };var detect=navigator.userAgent.toLowerCase();var OS,browser,version,total,thestring;var lagtmout;var zfile=1;var bounds;var bounds_sw;var bounds_ne;var bounds_ms={};var adduri;var ancho='#';var cenicon;var is_op,is_ie,is_ff,is_sf;if(checkIt("opera")){
    browser="Opera";is_op=1
        }else if(checkIt("msie")){
    browser="Internet Explorer";is_ie=1
        }else if(checkIt("safari")){
    browser="Safari";is_sf=1;ancho=""
        }else if(checkIt("firefox")){
    var versionindex=detect.indexOf("firefox")+8;if(parseInt(detect.charAt(versionindex))>=1)is_ff=true
        }else{
    browser=0
        }if(!version){
    version=detect.charAt(place+thestring.length)
        }var is_old=(navigator.userAgent.indexOf('MSIE 6')!=-1)?true:false;var offsetX;var offsetY;var image_w;var image_h;var linkmake='';var tn_w;var tn_h;var tn_w_min;var tn_h_min;var anchor_w;var anchor_h;var tn_x_by_y;var selectedObj;var adding_block=0;var edit_block_id=0;var coord1;var coord2;var is_changed=0;var is_t_changed=0;var markobj='';var picrazhash='';var tmpstr='';var diffar=new Array();var zoominchange=0;var addblmen;var jsar={};var aca=[];var pointlisten=null;var nomousedet=0;function checkIt(string){
    place=detect.indexOf(string)+1;thestring=string;return place
    };function isMobileBrowser(){
    var mobileAgentTest=/(up.browser|up.link|mmp|symbian|smartphone|midp|wap|phone)/i;var mobileAgents="w3c |acs-|alav|alca|amoi|audi|avan|benq|bird|blac|blaz|brew|cell|cldc|cmd-|dang|doco|eric|hipt|inno|ipaq|java|jigs|kddi|keji|leno|lg-c|lg-d|lg-g|lge-|maui|maxo|midp|mits|mmef|mobi|mot-|moto|mwbp|nec-|newt|noki|oper|palm|pana|pant|phil|play|port|prox|qwap|sage|sams|sany|sch-|sec-|send|seri|sgh-|shar|sie-|siem|smal|smar|sony|sph-|symb|t-mo|teli|tim-|tosh|tsm-|upg1|upsi|vk-v|voda|wap-|wapa|wapi|wapp|wapr|webc|winw|winw|xda|xda-";var userAgent=navigator.userAgent.toLowerCase();return mobileAgentTest.test(userAgent)||userAgent.substr(0,4).indexOf(mobileAgents)!=-1
    };var detect=navigator.userAgent.toLowerCase();var OS,browser,version,total,thestring;var lagtmout;var zfile=1;var bounds;var bounds_sw;var bounds_ne;var bounds_ms={};var adduri;var cenicon;if(checkIt("Konqueror")){
    browser="Konqueror";OS="Linux"
        }else if(checkIt("safari")){
    browser="Safari"
        }else if(checkIt("omniweb")){
    browser="OmniWeb"
        }else if(checkIt("opera")){
    browser="Opera"
        }else if(checkIt("webtv")){
    browser="WebTV"
        }else if(checkIt("icab")){
    browser="iCab"
        }else if(checkIt("msie")){
    browser="Internet Explorer"
        }else if(!checkIt("compatible")){
    browser="Netscape Navigator";version=detect.charAt(8)
        }else{
    browser="unknown"
        }var is_ff=false;if(navigator.userAgent.indexOf("Firefox")!=-1){
    var versionindex=navigator.userAgent.indexOf("Firefox")+8;if(parseInt(navigator.userAgent.charAt(versionindex))>=1)is_ff=true
        }if(!version){
    version=detect.charAt(place+thestring.length)
        }if(!OS){
    if(checkIt("linux")){
        OS="Linux"
            }else if(checkIt("x11")){
        OS="Unix"
            }else if(checkIt("mac")){
        OS="Mac"
            }else if(checkIt("win")){
        OS="Windows"
            }else{
        OS="unknown"
            }
    }if(browser=="Safari"){
    var ancho=""
    }else{
    var ancho='#'
    }function Rectangle(bounds,kvidd,nazv,zindex,x1,y1,x2,y2,zoom,g){
    this.bounds_=bounds;this.kvid_=kvidd||0;this.g_=g
    };Rectangle.prototype=new GOverlay();var divrect=[];Rectangle.prototype.initialize=function(map){
    var kvid=this.kvid_;if(kvid=='point'){
        var div=document.createElement("div");div.style.position="absolute";div.setAttribute('id','kv'+this.kvid_);if(_ge('kvpoint')){
            this.map_=map;this.div_=_ge('kvpoint')
            }else{
            map.getPane(G_MAP_MARKER_PANE).appendChild(div);this.map_=map;this.div_=div
            }return
    }var x1_=massid[this.kvid_]['x1']/10000000;var x2_=massid[this.kvid_]['x2']/10000000;var y1_=massid[this.kvid_]['y1']/10000000;var y2_=massid[this.kvid_]['y2']/10000000;var zomparam=0;var addclear='';var zoom='';if(this.g_==2){}else{
        var zoom=''
        }var thisgtest=this.g_-3;insico='';var fromt='<table  cellspacing=0 cellpadding=0 style="border: '+colormark(this.g_)+'"><tr valign="top"><td>'+insico+'</td></tr></table>'+zoom;for(var i=1;i<150;i++){
        if(divrect[i]==3){
            divrect[i]=1;var from=i+'kvc';_ge(from).style.zIndex=massid[this.kvid_]['z'];_ge(from).innerHTML=fromt;_ge(from).rid=kvid;this.map_=map;this.div_=_ge(from);break
        }if(!divrect[i]){
            divrect[i]=1;var div=document.createElement("div");div.style.position="absolute";div.setAttribute('id',i+'kvc');div.rid=kvid;div.onclick=function(){
                try{
                    divonclick(this.rid)
                    }catch(e){}
                };div.oncontextmenu=function(){
                return false
                };div.onmousemove=function(event){
                try{
                    olddover=1;floatToolTip(event,this.rid)
                    }catch(e){}
                };div.onmouseover=function(event){
                try{
                    divonover(this)
                    }catch(e){}
                };div.onmouseout=function(){
                try{
                    divonout(this)
                    }catch(e){}
                };div.style.border="1px solid #333";div.style.zIndex=massid[this.kvid_]['z'];div.style.display='none';div.style.cursor='pointer';div.innerHTML=fromt;map.getPane(G_MAP_MARKER_PANE).appendChild(div);this.map_=map;this.div_=div;break
        }
        }
    };Rectangle.prototype.remove=function(){
    divrect[parseInt(this.div_.id)]=3;this.div_.style.display='none';delete kv[this.kvid_]
};var ggg=0;Rectangle.prototype.redraw=function(force){
    if(!force)return;var c1=this.map_.fromLatLngToDivPixel(this.bounds_.getSouthWest());var c2=this.map_.fromLatLngToDivPixel(this.bounds_.getNorthEast());var wid=Math.abs(c2.x-c1.x);var hei=Math.abs(c2.y-c1.y);if(wid>bwidth||hei>bheight){
        this.div_.style.display=_no;if(this.kvid_==showtooltip){
            hideFloat()
            }return
    }var smalltest=0;var curzoom=map.getZoom();if((wid>100)&&(curzoom<3)){
        wid=1
        }if((hei>100)&&(curzoom<3)){
        hei=1
        }if(wid<=5){
        smalltest=1;wid=5;if((browser=="Opera")&&(version!=9)){
            wid=7
            }
        };if(hei<5){
        hei=5
        }if(this.g_==2){
        wid=Math.round((wid+hei)/2);hei=wid;smalltest=1
        }this.div_.style.left=(Math.min(c2.x,c1.x)-1)+"px";this.div_.style.top=(Math.min(c2.y,c1.y)-1)+"px";this.div_.style.width=wid+"px";this.div_.style.height=hei+"px";if(this.div_.style.display=='none'){
        this.div_.style.display='block'
        }if(this.kvid_!='point'){
        this.div_.childNodes.item(0).style.width=wid+"px";this.div_.childNodes.item(0).style.height=hei+"px";var thisgtest=this.g_-3
        }
    };var map,scalex;var lng=0;var tk='';var config={};var noifr=0;var tooltp;var cook=1;for(var kvid in GDraggableObject){
    if(typeof GDraggableObject[kvid]!=_fu)continue;if(GDraggableObject[kvid].toString().match(/closedhand/)){
        try{
            eval('GDraggableObject.'+kvid+'='+GDraggableObject[kvid].toString().replace(/b;[\s\S.]*?this/m,'b;this').replace(/(this\.\w+ *?=)[\w\| \.]+;/g,"$1'';"))
                }catch(e){}
        }
    }var testserv=0;config['lat']=25;config['lon']=10;config['z']=3;config['zo']=0;config['tag']='';if(typeof iplat!=_un){
    config['lat']=Math.round(iplat*10000000)/10000000;config['lon']=Math.round(iplon*10000000)/10000000;config['z']=10
        }var hash=window.location.hash.substring(1);hash=hash.replace(/amp;/ig,'');var pairs=hash.split("&");for(var i=0;i<pairs.length;i++){
    var apair=pairs[i].split("=");if(apair[0]){
        config[apair[0]]=apair[1]
            }
    }if(window.location.href.indexOf("/s/")!=-1){
    noifr=2
        }if(config['ifr']){
    noifr=1
        }function loadd(param){
    if(typeof localization_load==_fu)localization_load();if(window.location.toString().indexOf('test')!=-1){
        testserv=1
        }bwidth=_gec('map').offsetWidth;bheight=_gec('map').offsetHeight;if(config['id']){
        var tmp='';if(lng!=0)tmp='/'+l_id[lng];config['id']=parseInt(config['id']);jwindow('/'+config['id']+tmp+'/',0,0,'',2);delete config['id']
    }if(config['show']){
        if(!config['show'].match(/@/)&&config['show'].match(/^\/\d+\/\w*\/?\w*\/?|^\/\w+\/\w+\/[\.\w%\&\?]*|^http:\/\/www.booking.com/)){
            config['show']=config['show'].replace(/%00/g,'&');config['show']=config['show'].replace(/%01/g,'=');config['show']=config['show'].replace(/%02/g,'?');if(config['show'].match(/user|choose/)){
                jwindow(config['show'])
                }else{
                jwindow(config['show'],1);if(otype==1)leoff(1)
                    }
            }delete config['show']
    }if(config['doc']){
        if(config['doc'].match(/^\w+\.\w+$/)){
            jwindow(config['doc'],0,0,'')
            }delete config['doc']
    }if(GBrowserIsCompatible()){
        if(param!=1){
            if(config['x']||config['y']){
                var testx=config['x'].toString();testx=testx.indexOf('.');var testy=config['y'].toString();testy=testy.indexOf('.');if(testx==-1){
                    config['x']=config['x']/1000000
                    }if(testy==-1){
                    config['y']=config['y']/1000000
                    }config['lat']=config['y'];config['lon']=config['x']
                }if(config['gps']){
                if(config['lon']&&config['lat']){
                    if(config['lat'].match(/[NEWS_]/)){
                        gpslat=config['lat'];gpslon=config['lon'];var apair=gpsdec();config['lat']=apair.lat;config['lon']=apair.lon
                        }
                    }_ge("jcross").style.right='3px';_ge("jcross").style.top='25px';_ge("jcross").style.display='block';loadjs('gps.js','window.setTimeout(function (){gpsgo(3);},250);')
                }config['lat']=parseFloat(config['lat'])*1;config['lon']=parseFloat(config['lon'])*1;config['z']=parseInt(config['z'])*1;config['tag']=parseInt(config['tag'])*1;if(isNaN(config['lat']))config['lat']=0;if(isNaN(config['lon']))config['lon']=0;if(isNaN(config['z']))config['z']=3;if(isNaN(config['tag']))config['tag']=0;if(config['fromifr']){
                delete config['ifr'];delete config['move']
            }if(config['o']){
                otype=config['o']
                }var from=new GCopyright(1,new GLatLngBounds(new GLatLng(-90,-180),new GLatLng(90,180)),0,'&copy; WikiMapia.org');var fromt=new GCopyrightCollection();fromt.addCopyright(from);var o=new GTileLayer(fromt,0,22);o.getTileUrl=function(tile,zoom){
                var from=s_fun(2,tile);CUSTOM_WIKI_MAP.rndnum=rndnum;var a=s_fun(1);if(rndnum){
                    zoom+="&r=";zoom+=rndnum
                    }return"http://i"+from+".wikimapia.org/?x="+tile.x+"&y="+tile.y+"&zoom="+zoom+"&lng="+lng+a
                };CUSTOM_WIKI_MAP=new GMapType([o],new GMercatorProjection(30),"WMAP");var from=new GCopyright(1,new GLatLngBounds(new GLatLng(-90,-180),new GLatLng(90,180)),0,'&copy; WikiMapia.org');var fromt=new GCopyrightCollection();fromt.addCopyright(from);var o=[G_SATELLITE_MAP.getTileLayers()[0],new GTileLayer(fromt,G_SATELLITE_MAP.getTileLayers()[0].minResolution(),G_SATELLITE_MAP.getTileLayers()[0].maxResolution())];o[1].isPng=function(){
                return true
                };o[1].getOpacity=function(){
                if(flphoar[38])return 0.40;else return 1
                    };o[1].getTileUrl=function(tile,zoom){
                var from=s_fun(2,tile);CUSTOM_WIKI_MAP1.rndnum=rndnum;var a=s_fun(1);if(rndnum){
                    zoom+="&r=";zoom+=rndnum
                    }var b='hybrid';if(flphoar[38])b='boundaries';return"http://i"+from+".wikimapia.org/?x="+tile.x+"&y="+tile.y+"&zoom="+zoom+"&type="+b+"&lng="+lng+a
                };CUSTOM_WIKI_MAP1=new GMapType(o,new GMercatorProjection(30),"WMAP");map=new GMap2(document.getElementById("map"),{
                draggableCursor:"default",
                draggingCursor:"default"
            });map.addMapType(CUSTOM_WIKI_MAP);map.addMapType(CUSTOM_WIKI_MAP1);if(noifr){
                map.addControl(new GSmallMapControl());_ge('insite').style.display='block'
                }else{
                var options={
                    zoomInBtnTitle:localization['jsi_zoomcontrol_zoom_in'],
                    zoomOutBtnTitle:localization['jsi_zoomcontrol_zoom_out'],
                    houseTitle:localization['jsi_zoomcontrol_house'],
                    streetTitle:localization['jsi_zoomcontrol_street'],
                    cityTitle:localization['jsi_zoomcontrol_city'],
                    countryTitle:localization['jsi_zoomcontrol_country'],
                    worldTitle:localization['jsi_zoomcontrol_world']
                    };window.setTimeout(function(){
                    var zoomControl=new ExtLargeMapControl(options);map.addControl(zoomControl,new GControlPosition(G_ANCHOR_TOP_LEFT,new GSize(5,40)))
                    },500);if(isMobileBrowser()){
                    options={
                        moveNorthBtnTitle:localization['jsi_slidecontrol_north'],
                        moveSouthBtnTitle:localization['jsi_slidecontrol_south'],
                        moveEastBtnTitle:localization['jsi_slidecontrol_east'],
                        moveWestBtnTitle:localization['jsi_slidecontrol_west'],
                        homeBtnTitle:localization['jsi_slidecontrol_home']
                        };map.addControl(new ArrowMapControl(options),new GControlPosition(G_ANCHOR_TOP_RIGHT,new GSize(10,40)))
                    }_gec("showinf").style.display=_bk;_ge('showinf1').style.display=_bk;_ge('search').style.display=_bk
                }tooltp=_ge('tooltip');if(!jwindow3_rcookie('lng')){
                jwindow3_cookie('from=from',2);if(!jwindow3_rcookie('from'))cook=0;jwindow3_cookie('from=from',-1)
                }else{
                lng=parseInt(jwindow3_rcookie('lng'));if(lng>0)langpop.unshift(lng)
                    }rndnum=jwindow3_rcookie('rndnum');if(!rndnum)rndnum='';CUSTOM_WIKI_MAP.rndnum=rndnum;if(top==self){
                map.addControl(scalex=new GScaleControl())
                }
            }else{
            del_all_obj()
            }config['z']=config['z']*1;var tks=G_HYBRID_MAP;tk="w";mtype="w";if(config['v']){
            vtype=parseInt(config['v']);if(vtype==6||vtype==5||vtype==2)vtype=0
                }else{
            vtype=0;if(noifr)vtype=8
                }if(!config['m']){
            vtype=0;config['m']='b'
            }if(config['m']=="m"){
            tk="m";tks=G_NORMAL_MAP;mtype="m"
            }if(config['m']=="s"){
            tk="s";tks=G_SATELLITE_MAP;mtype="s";if(vtype==0)config['m']='b'
                }if(config['m']=="h"){
            tk="h";tks=G_HYBRID_MAP;mtype="h"
            }if(config['m']=="t"){
            tk="t";tks=G_PHYSICAL_MAP;mtype="t"
            }if(config['m']=="w"){
            tk="w";tks=CUSTOM_WIKI_MAP;mtype="w"
            }if(config['m']=="b"||config['m']=="a"){
            tk="b";tks=CUSTOM_WIKI_MAP1;mtype="b"
            }if(config['m']=="p"){
            tk="s";tks=CUSTOM_WIKI_MAP1;mtype="p"
            }if(tk=="a"){
            if(config['z']>10){
                tks=G_SATELLITE_MAP
                }else{
                tks=G_HYBRID_MAP
                }
            }if((config['spnx'])&&(config['spny'])){
            sx1=-1*parseFloat(config['spnx']);sy1=-1*parseFloat(config['spny']);sx2=parseFloat(config['spnx']);sy2=parseFloat(config['spny']);config['z']=map.getBoundsZoomLevel(new GLatLngBounds(new GLatLng(sy1,sx1),new GLatLng(sy2,sx2)))
            }if(config['l']&&lng==0){}map.disableDoubleClickZoom();map.setCenter(new GLatLng(config['lat'],config['lon']),config['z'],tks);oldzoom=config['z'];if(param!=1){
            if(config['tag']){
                tagfilter=config['tag'];vtype=0
                }if(config['gt']||config['gz']||config['ggz']){
                loadjs('polynew.js');loadjs('geotools.js','window.setTimeout(gtstart,150);')
                }GEvent.addListener(map,"drag",function(){
                zoominchange=0;setCtrMark()
                });GEvent.addListener(map,"zoomend",function(a,b){
                showpolyfn();poly_redraw()
                });pointlisten5=1;GEvent.addListener(map,"singlerightclick",function(a,b,o){
                if(!o)o={};if(is_addfn){
                    cancelprev(1);return
                }if(pointlisten&&pprevlip!=null){
                    cancelprev(1);if(typeof o._id!=_un){
                        dotmenu(map.fromContainerPixelToLatLng(a),o._id)
                        }return
                }if(pointlisten)return;if(vtype==6){
                    currentpoi='';if(plineprev){
                        plineprev.hide()
                        }dotpomenuoff();if(pcenicon){
                        pcenicon.hide()
                        }selunhigh();selarr={};selfn=0;if(o&&typeof o.id!=_un&&o.mtype){
                        if(o.mtype==1){
                            clickonmarker(o.id,o.getLatLng())
                            }if(o.mtype==2){
                            clickonseg(map.fromContainerPixelToLatLng(a),o.id)
                            }
                        }
                    }if(vtype==0||vtype==2||vtype==1){
                    if(mtype==jmtype1[5]||mtype==jmtype1[6]){
                        if(flphoar[41]){
                            try{
                                mmenuprep(50,parseInt(flphoar[41]),{
                                    x1:massid[flphoar[41]]['x1']/10000000,
                                    y1:massid[flphoar[41]]['y1']/10000000,
                                    x2:massid[flphoar[41]]['x2']/10000000,
                                    y2:massid[flphoar[41]]['y2']/10000000,
                                    zoom:15,
                                    lng:massid[flphoar[41]]['l']
                                    })
                                }catch(e){};mapttip();var c=flphoar[23];lag_delay_fn(mapttipc,3500,0);flphoar[39]=0;mapttip(map.fromContainerPixelToLatLng(a),'<span class="add_line" onmouseout="lag_delay_fn(mapttipc,3500,0);" onmouseover="mapttip();lag_delay_fn(mapttipc,0,0,2);">'+c+'</span>',1)
                            }else if(chosen_poly){
                            try{
                                mmenuprep(50,parseInt(chosen_poly),{
                                    x1:massid_poly[chosen_poly]['x1']/10000000,
                                    y1:massid_poly[chosen_poly]['y1']/10000000,
                                    x2:massid_poly[chosen_poly]['x2']/10000000,
                                    y2:massid_poly[chosen_poly]['y2']/10000000,
                                    zoom:15,
                                    lng:massid_poly[chosen_poly]['l']
                                    })
                                }catch(e){};mapttip();var c=flphoar[23];lag_delay_fn(mapttipc,3500,0);mapttip(map.fromContainerPixelToLatLng(a),'<span class="add_line" onmouseout="lag_delay_fn(mapttipc,3500,0);" onmouseover="mapttip();lag_delay_fn(mapttipc,0,0,2);">'+c+'</span>','1')
                            }
                        }
                    }
                });GEvent.bind(map,'dragstart',this,function(){
                chosen_poly='';isdrag=1;voo['yi']=bounds_ne.lat();voo['xi']=bounds_ne.lng();voo['ywi']=bounds_ne.lat()-bounds_sw.lat();voo['xhe']=bounds_ne.lng()-bounds_sw.lng();if(bounds_ne.lng()<bounds_sw.lng())voo['xhe']+=360;skipinfo=0
                });GEvent.bind(map,'movestart',this,function(){
                skipinfo=0;chosen_poly='';isdrag=1;lagupd=0;showpolyfn();mapttipc();hideFloat();jwindow3_menu(1);mapttipc()
                });GEvent.bind(map,'dragend',this,function(){
                isdrag=0;userpt['length']=0;skipinfo=1;if(timerSI){
                    window.clearTimeout(timerSI)
                    }timerSI=window.setTimeout(function(){
                    skipinfo=0
                    },150);poly_redraw()
                });GEvent.bind(map,'moveend',this,update_objects_lag);document.onmousemove=function(e){
                mousemove_new(e)
                };GEvent.addListener(map,"click",function(from,point,a){
                if(vtype==5)return;if(pointlisten){
                    mouse_clickpo(from,point,a);return
                }if(vtype==6){
                    mouse_clickre(from,point,a);return
                }if(from&&from.ispl){
                    divonclick(from.kvid_);return
                }if(chosen_poly){
                    if(mtype==jmtype1[5]||mtype==jmtype1[6]){
                        hideFloat();if(massid_poly[chosen_poly]['t']==''){
                            if(noifr){
                                ifrclick('');return
                            }jwindow('/sys/edit_wiki5/?id='+parseInt(chosen_poly)+'&lng='+lng);return
                        }var tmp='';if(massid_poly[chosen_poly]['l']){
                            if(massid_poly[chosen_poly]['l']!=0)tmp=l_id[massid_poly[chosen_poly]['l']]+'/'
                                }tmp+=wikiurlencode(massid_poly[chosen_poly]['t']);tmp='/'+parseInt(chosen_poly)+'/'+tmp;if(noifr){
                            ifrclick(tmp);return
                        }jwindow(tmp,0,0,'',2)
                        }
                    }
                });window.setInterval(jeval,500)
            }if(noifr!=2){}map.enableContinuousZoom();if(config['search']){
            _ge("searchtest").value=decodeURIComponent(config['search']);jwindow3_dosearch5('');delete config['search']
        }
        }new GKeyboardHandler(map);if(!noifr)map.enableScrollWheelZoom();if(config['cust'])jwindow3_webmasters();if(otype==1)hotelon();update_objects_lag();updmap()
    };function updmap(){
    setCtrMark();showpolyfn();if(pointlisten||vtype==6){
        if(mtype=='h'||mtype=='m'){
            del_all_obj();show_binf()
            }else{
            update_objects();show_binf()
            }
        }var curzoom=map.getZoom();if((mtype!="b"&&!tagfilter)||(mtype!="b"&&flphoar[38])){
        hideFloat();for(var kvid in show_blocks){
            map.removeOverlay(kv[kvid]);delete show_blocks[kvid]
        }
        }if(mtype=="m"){
        map.setMapType(G_NORMAL_MAP)
        }else if(mtype=="s"){
        map.setMapType(G_SATELLITE_MAP)
        }else if(mtype=="h"){
        map.setMapType(G_HYBRID_MAP)
        }else if(mtype=="t"){
        map.setMapType(G_PHYSICAL_MAP)
        }else if(mtype=="w"){
        map.setMapType(CUSTOM_WIKI_MAP)
        }else if(mtype=="b"){
        map.setMapType(CUSTOM_WIKI_MAP1)
        }else if(mtype=="a"){
        if(curzoom>10){
            map.setMapType(G_SATELLITE_MAP)
            }else{
            map.setMapType(G_HYBRID_MAP)
            }
        }else if(mtype=="p"){
        map.setMapType(G_SATELLITE_MAP);if(!flphoar[40]){
            flphoar[40]=new GLayer("com.panoramio.all");map.addOverlay(flphoar[40])
            }
        }update_uri()
    };function update_uri(){
    if(!map)return;var taguri='';if(makingurl==1)jwindow3_putweburl();var curcent=map.getCenter();var curzoom=map.getZoom();if(!curcent||(!curzoom&&curzoom!==0))return;var yy=Math.round(curcent.y*10000000)/10000000;var xx=Math.round(curcent.x*10000000)/10000000;aca=[];if(tagfilter){
        taguri="&tag="+tagfilter
        }if(vtype>0){
        taguri+='&v=';taguri+=vtype
        }if(config['gps']){
        taguri+='&gps=on'
        }if(jwindowstate==3&&jwcururl!=''){
        taguri+='&show=';taguri+=jwcururl
        }if(jwindow3state==1&&flphoar[22]){
        taguri+='&search=';taguri+=flphoar[22]
        }if(adduri){
        taguri+=adduri
        }if(config['ifr']){
        taguri+='&ifr=1'
        }if(otype){
        taguri+='&o='+otype
        }window.location.replace("#lat="+yy+"&lon="+xx+"&z="+curzoom+"&l="+lng+"&m="+mtype+taguri)
    };function upd_bounds(){
    bounds=map.getBounds();bounds_sw=bounds.getSouthWest();bounds_ne=bounds.getNorthEast();mousemove_c()
    };function update_objects(o){
    isdrag=0;if(pointlisten&&pline&&markerz.length>0){
        if(!bounds.intersects(pline.getBounds())){
            feetallpoly1(1)
            }psavemenu()
        }var curzoom=map.getZoom();if(oldzoom>curzoom){
        zoominchange=2
        }else if(oldzoom!=curzoom){
        if(zoominchange!=2){
            zoominchange=1
            }
        }else{
        if(zoominchange!=2)zoominchange=0
            }oldzoom=curzoom;show_binf();blocshow={};blocshowq=[];if(pointlisten&&edit_block_id)return;if(o&&o==1){
        del_all_obj()
        }update_objects_adv()
    };var showtooltip='';function floatToolTip(e,kvid,text){
    if(text){
        var z=20;var x=e.x+z;var y=e.y+z;if(tooltp._kvid!=text){
            tooltp._kvid=text;if(flphoar[41]&&flphoar[41].match(/\d\h$/)){
                text=text.replace(/\(\w\w\)/,'');var b='';if(flphoar[41]&&massid[flphoar[41]]['zo'])b='<br><img hspace=3 vspace=3 height=12 width=66 src=http://static.booking.com/static/img/icons/stars/'+massid[flphoar[41]]['zo']+'sterren4.png>';var regout=text.match(/\$(.*?)\$/g);text=text.replace(/[\$].+\$/,'');text=text.replace(/\(/,b+'</b><br>');text=text.replace(/[\)]/g,'<br><b>');if(regout){
                    if(regout[1]){
                        regout[1]=regout[1].replace(/\$/g,'');text='<center><img hspace=3 vspace=3 height=60 src='+regout[1]+'><br><b>'+text+'</b></center>'
                        }
                    }
                }else{
                if(text.length>50)text=text.substring(0,50)+'...'
                    }tooltp.innerHTML=text
            }
        }else{
        if(showtooltip==''){
            var txt='';if(massid[kvid]['t']=='')txt=localization['phpjs_click_to_prov'];tooltp.innerHTML=massid[kvid]['t']+txt;showtooltip=kvid;tooltp._kvid=''
            }e=e||window.event;var z=20;var x=e.clientX+z;var y=e.clientY+z
        }if(tooltp.style.display!=_bk)tooltp.style.display=_bk;if(x+tooltp.offsetWidth>bwidth)x-=z*2+tooltp.offsetWidth;if(y+tooltp.offsetHeight>bheight)y-=z+tooltp.offsetHeight;if(x<0)x=0;tooltp.style.left=x+'px';tooltp.style.top=y+'px'
    };function hideFloat(){
    tooltp.style.display=_no;showtooltip=''
    };var zttime=0;var showzoomtip='';var oldzindex=0;function floatZoomTip(kvid){
    if(showzoomtip==kvid){
        hideZoomTip()
        }else{
        if(zttime!=0)window.clearTimeout(zttime);hideZoomTip();var b=document.getElementById('zt'+kvid);b.style.display='block';oldzindex=kv[kvid].div_.style.zIndex;showzoomtip=kvid;zttime=setTimeout(hideZoomTip,1500)
        }
    };function hideZoomTip(){
    if(showzoomtip){
        if(!kv[showzoomtip])return;var b=document.getElementById('zt'+showzoomtip);if(b){
            b.style.display='none'
            }var c=kv[showzoomtip].div_;if((c)&&(oldzindex>0)){
            c.style.zIndex=oldzindex;oldzindex=0
            }showzoomtip=''
        }
    };function divonclick(kvid){
    olddover=0;flphoar[41]=null;if(adding_block!=1&&!pointlisten){
        if(skipinfo==1){
            skipinfo=0;return
        }if(kv[kvid].g_==2){
            test_zoom(massid[kvid]['x1']/10000000,massid[kvid]['y1']/10000000,massid[kvid]['x2']/10000000,massid[kvid]['y2']/10000000,massid[kvid]['zo'],1);hideZoomTip();hideFloat();return
        }else if(kv[kvid].g_==4){}else if(kv[kvid].g_==10){
            var regout=massid[kvid]['t'].match(/\$(.*?)\$/);if(regout){
                if(regout[1]){
                    var from='en';if(lng&&booklng[l_id[lng]])from=l_id[lng];jwindow(regout[1]+'?aid=320572&lang='+from,850,525,0,1);leoff(1)
                    }
                }
            }else{
            var from=parseInt(kvid);var tmp='/'+from+'/';if(massid[kvid]['l']){
                if(massid[kvid]['l']!=0)tmp=tmp+l_id[massid[kvid]['l']]+'/'
                    }jwcururl=tmp;tmp+=wikiurlencode(massid[kvid].t);if(massid[kvid].t==''){
                jwindow('/sys/edit_wiki5/?id='+from+'&lng='+lng);return
            }if(noifr){
                ifrclick(tmp)
                }else{
                jwindow(tmp,0,0,'',2)
                }
            }
        }
    };function ifrclick(url){
    jwcururlm(url);var fromt=window.location.hash;fromt=fromt.replace(/&ifr=1/,'');fromt='http://wikimapia.org'+fromt+'&show='+jwcururl;if(noifr==1){
        parent.location=fromt
        }else{
        window.open(fromt)
        }
    };function wikiurlencode(fromt){
    fromt=fromt.replace(/ \(\w\w\)$/g,'');fromt=fromt.replace(/&amp;|&quot;|[^\u00A1-\uFFFF\w\-]/g,'-');fromt=encodeURIComponent(fromt);fromt=fromt.replace(/[^\w%\-]+/g,'-');fromt=fromt.replace(/\-+/g,'-');return fromt.replace(/^\-*|\-*$/g,'')
    };olddover=0;function divonout(obj){
    olddover=0;obj.style.border="1px solid #111";try{
        hideFloat()
        }catch(e){};if(zttime!=0)window.clearTimeout(zttime);zttime=setTimeout(function(){
        mapttip(0,1,2)
        },3000);if(vtype==1&&kvo){
        map.removeOverlay(kvo);kvo=null;return
    }showpolyfn()
    };function divonover(obj){
    showpolyfn();olddover=1;chosen_poly='';mapttipc();if((browser!="Opera")||((version==9)&&(browser=="Opera"))){
        obj.style.border="1px solid #FBA723"
        }if(massid[obj.rid]['po']){
        if(vtype==1&&kvo)return;show_svgdiv(obj.rid,0,prepolyone(massid[obj.rid]['po'],obj.rid,3))
        }else{
        if(zttime)window.clearTimeout(zttime);zttime=0;if(obj.offsetHeight>20&&obj.offsetWidth>20&&oldzoom>8&&!noifr&&(vtype==8||vtype==9))mapttip(map.fromDivPixelToLatLng(new GPoint(obj.offsetLeft-15,obj.offsetTop+_px(obj.style.height)+12)),'<div style="white-space:nowrap;cursor:pointer;position:absolute;top:1px;left:1px;z-index:10;color:#444444;"><b>'+localization['phpjs_add_outline']+'</b></div><div style="white-space:nowrap;cursor:pointer;position:absolute;top:0px;left:0px;z-index:11;color:#d71a1a;" onclick="loadjs(\'polynew.js\',\'pre_poly_edit('+parseInt(obj.rid)+');\');"><b>'+localization['phpjs_add_outline']+'</b></div>',2)
            }
    };function iconover(a){
    if(kv[a].g_==2||kv[a].g_==10)return;if(!massid[a]['po']){
        var x1=massid[a]['x1']/10000000;var y1=massid[a]['y1']/10000000;var x2=massid[a]['x2']/10000000;var y2=massid[a]['y2']/10000000;var z=[new GLatLng(y1,x1),new GLatLng(y1,x2),new GLatLng(y2,x2),new GLatLng(y2,x1),new GLatLng(y1,x1)];showpolyfn(z,a)
        }
    };var curTime=0;function timeme(){
    var current0=new Date();var curTime0=current0.getTime();if(curTime==0){
        curTime=curTime0
        }else{
        curTime=curTime0-curTime;document.title=curTime;curTime=0
        }
    };var lagtime=2;var lagtime_peronce=1;if(browser!="Internet Explorer"){
    var lagtime=1;var lagtime_peronce=100
    }var pgones=[];var kvo;function addoverlad_lag(a){
    if(!a&&(vtype==1||pointlisten)){
        return
    }var cnt=lagtime_peronce;var x1,y1,x2,y2,t_,z_,zo,g_;for(var kvid in new_blocks){
        if(!show_blocks[kvid]){
            if(!tagfilter&&mass[new_blocks[kvid]]['v']['g']!=3&&(mtype==jmtype1[5]||mtype==jmtype1[6])&&(massid[kvid]['po']&&vtype!=9)){
                continue
            }if(mass[new_blocks[kvid]]['v']['g']!=3){
                x1=massid[kvid]['x1']/10000000;y1=massid[kvid]['y1']/10000000;x2=massid[kvid]['x2']/10000000;y2=massid[kvid]['y2']/10000000;g_=mass[new_blocks[kvid]]['v']['g'];if(massid[kvid]['g'])g_=massid[kvid]['g']
                    }show_blocks[kvid]=new_blocks[kvid];if(mass[new_blocks[kvid]]['v']['g']==3){
                updatedivim0(kvid)
                }else{
                if(!a&&vtype==1){}else{
                    if(tagfilter||g_==10){
                        var iconj=new GIcon();var o='/img/opl10.png';if(tagfilter){
                            o='/img/cats.png';if(ar_tcats_ico[tagfilter+'i']){
                                o='/mapico/'+putgen10(ar_tcats_ico[tagfilter+'i'].toString())+'.png'
                                }iconj.iconSize=new GSize(14,14);iconj.iconAnchor=new GPoint(7,7)
                            }else if(g_==10){
                            o='http://www.booking.com/static/img/marker-hotel-blue.png';iconj.iconSize=new GSize(17,20);iconj.iconAnchor=new GPoint(8,20)
                            }else{
                            iconj.iconSize=new GSize(10,10);iconj.iconAnchor=new GPoint(5,5)
                            }iconj.image=o;var point=new GLatLng((y1+y2)/2,(x1+x2)/2);kv[kvid]=new GMarker(point,{
                            icon:iconj,
                            zIndexProcess:zinormal
                        });kv[kvid].kvid_=kvid;kv[kvid].g_=g_;kv[kvid].rid=kvid;kv[kvid].ispl=1;kv[kvid].g_=mass[new_blocks[kvid]]['v']['g'];map.addOverlay(kv[kvid]);GEvent.addListener(kv[kvid],"mouseover",function(){
                            flphoar[41]=this.rid;showpolyfn();iconover(this.rid)
                            });GEvent.addListener(kv[kvid],"mouseout",function(){
                            flphoar[41]=null;showpolyfn();mapttip()
                            })
                        }else if(g_==10){}else{
                        var rectBounds=new GLatLngBounds(new GLatLng(y1,x1),new GLatLng(y2,x2));map.addOverlay(kv[kvid]=new Rectangle(rectBounds,kvid,t_,z_,x1,y1,x2,y2,zo,g_))
                        }
                    }
                }delete new_blocks[kvid];cnt--;if(cnt==0){
                for(var kvid in new_blocks){
                    cnt++
                }if(cnt>0){
                    lagtmout=setTimeout(addoverlad_lag,lagtime);break
                }
                }
            }
        }
    };function chknotsvall(a){
    var b,c;if(a<20){
        if(vtype==6||reditmode){
            c=1;if(typeof chknotsaved==_fu){
                if(chknotsaved()){
                    b=1
                    }
                }
            }if(pointlisten){
            if(flphoar[27]!=a){
                if(is_changed){
                    b=1
                    }c=2
                }else{
                b=2
                }
            }if(vtype==9){
            mtype=jmtype1[6];_poff();vtype=0
            }
        }else if(a<40){
        if(pointlisten){
            c=2;if(is_changed)b=1;if(is_addfn)b=0
                }if(vtype==6||reditmode){
            a-=40;if(ltype==a)b=2
                }
        }else if(a==40){
        if(pointlisten){
            c=2;if(is_changed)b=1
                }if(vtype==6||reditmode){
            c=1;if(typeof chknotsaved==_fu){
                if(chknotsaved()){
                    b=1
                    }
                }
            }
        }if(!b){
        if(c==1)cancelredit();if(c==2)cancelpoly();return true
        }else if(b==1){
        if(realconfirm(localization['jsi_surecanchan'])){
            if(c==1)cancelredit();if(c==2)cancelpoly();return true
            }else{
            return false
            }
        }else if(b==2)return false
        }function hotelon(){
    flphoar[46]=tagfilter;flphoar[47]=vtype;flphoar[48]=mtype;tagfilter=0;otype=1;update_objects();update_uri()
    }function hoteloff(){
    otype=0;tagfilter=flphoar[46];update_objects(1);updmap();update_uri()
    }function show_binf(obj){
    if(!obj){
        var a='',b='',c='',d='',kvid='',g='';if(oldzoom<13||(doppomar[5]==1&&vtype==6)){
            b='('+localization['jsi_zoomin_closer']+')'
            }localization['jsi_layer_cant']='Switch to satellite to edit';if((pointlisten||vtype==6)&&(mtype=='h'||mtype=='m'||mtype=='t')){
            b='('+localization['jsi_layer_cant']+')'
            }if(vtype==6&&typeof chknotsaved==_fu){
            var i=chknotsaved();if(!i)c='buttondis';kvid='if(chknotsaved() && oldzoom>12){saveroads()}';if((ltype==2||ltype==10)&&oldzoom>9&&!doppomar[5]){
                b='';kvid='if(chknotsaved() && oldzoom>9){saveroads()}'
                }var e='/img/menu/menu_03_46.png';var f='Roads_edit';if(ltype==0){
                d=localization['jsi_road_edit']
                }else if(ltype==1){
                d=localization['jsi_railroad_edit'];e='/img/menu/menu_03_50.png';f='Railroads_edit'
                }else if(ltype==2){
                d=localization['jsi_ferry_edit'];e='/img/menu/menu_03_52.png';f='Ferry_edit'
                }else if(ltype==10){
                d=localization['jsi_river_edit'];e='/img/menu/menu_03_57.png';f='Rivers_edit'
                }if(i>300){
                b+=' '+localization['jsi_svchng']
                }a="<span onmouseover='rhideprev();stoppprev=1' onmouseout='stoppprev=0'><img border='0' align='top' width='16' heigh='16' src='"+e+"'>&nbsp;"+d+" (<a href='/wiki/"+f+"' style='color:#fff;text-decoration:underline;cursor:pointer;font-size:12px;' target='_blank'>"+localization['jsi_help']+"</a>) "+b+"&nbsp;<button class='button "+c+"' onclick='"+kvid+"' style='font-size:14px;'>"+localization['jsi_savebut']+"</button>&nbsp;&nbsp;<button class='button' onclick='cancelredit()' style='font-size:14px;'>"+localization['jsi_cancelbut']+"</button></span>"
            }else if(pointlisten&&!is_addfn){
            d=localization['jsi_adding_po'];if(edit_block_id)d=localization['jsi_adding_po1'];var e='/img/menu/menu_03_44.png';var f='Adding_place';var obj='';if(flphoar[27]>0){
                f='Adding_terrain'
                }if(flphoar[27]==2){
                d=localization['jsi_adding_water'];e='/img/menu/menu_03_60.png'
                }else if(flphoar[27]==3){
                d=localization['jsi_adding_land'];e='/img/menu/menu_03_03a.png'
                }else if(flphoar[27]==4){
                d=localization['jsi_adding_forest'];e='/img/menu/menu_03_68.png'
                }else if(flphoar[27]==5){
                d=localization['jsi_adding_grassland'];e='/img/menu/menu_03_73.png'
                }else if(flphoar[27]==6){
                d=localization['jsi_adding_desert'];e='/img/menu/menu_03_79.png'
                }else if(flphoar[27]==7){
                d=localization['jsi_adding_ice'];e='/img/menu/menu_03_10a.png'
                }var from=" buttondis'";if(poly_checksize())b='('+localization['jsi_polygonbig']+')';if(is_changed&&markerz.length>2&&!b&&!flphoar[31])from="' onclick='savepoly()'";if(flphoar[27]==100)from="' onclick='savepoly()'";a="<span style='white-space:nowrap;' onmouseover='stoppprev=1;cancelprev();' onmouseout='stoppprev=0;'><img border='0' align='top' width='16' heigh='16' src='"+e+"'>&nbsp;"+d+" (<a href='/wiki/"+f+"' style='color:#fff;text-decoration:underline;cursor:pointer;font-size:12px;' target='_blank'>"+localization['jsi_help']+"</a>) "+b+"&nbsp;<button class='button"+from+" style='font-size:14px;'>"+localization['jsi_savebut']+"</button>&nbsp;&nbsp;<button class='button' onclick='cancelpoly();' style='font-size:14px;'>"+localization['jsi_cancelbut']+"</button></span>"
            }else if(tagfilter){
            otype=0;b='';if(tags[tagfilter+'i']){
                b=tags[tagfilter+'i'][lng+'i'];if(!b)b=tags[tagfilter+'i']['0i']
                    }if(!b){
                if(ar_tcats[tagfilter])b=ar_tcats[tagfilter].replace(/ (\(\d+\))/,'')
                    }var e='/img/cats.png';if(ar_tcats_ico[tagfilter+'i']){
                e='/mapico/'+putgen10(ar_tcats_ico[tagfilter+'i'].toString())+'.png'
                }g='<td valign=middle> '+imprint(e,14,14)+'&nbsp;</td>';a=localization['jsi_showing_cat']+' "<span onclick=jwindow("/sys/fn/edit_tags/?view='+tagfilter+'&lng='+lng+'",1) class="prevnext"><u>'+b+'</u></span>"&nbsp;<button class="button" onclick="tagfilter=0;vtype=1;del_all_obj();update_objects();update_uri();" style="font-size:14px;">'+localization['jsi_cancelbut']+"</button>"
            }else if(otype==1){
            var e='http://www.booking.com/static/img/marker-hotel-blue.png';if(!localization['jsi_hotel_booking'])localization['jsi_hotel_booking']='Hotel booking';g='<td>'+imprint(e,20,17)+'&nbsp;</td>';a=localization['jsi_hotel_booking']+'&nbsp;<button class="button" onclick="hoteloff()" style="font-size:14px;">'+localization['jsi_cancelbut']+"</button>"
            }
        }if(a){
        _gec("showinf").innerHTML='<table border=0 cellspacing=0 cellpadding=0 height="100%"><tr>'+g+'<td align=center valign=top class=showinf2>'+a+'</td></tr></table>';_gec("showinf").style.height='25px';_gec("showinf").style.bottom='-35px';_gec("showinf").style.display=_bk;_gec("showinf").style.left=(bwidth/2-_gec("showinf").offsetWidth/2)+'px';_gec("showinf").style.bottom='0px';_gec("showinfs").style.width=(_gec("showinf").offsetWidth+12)+'px';_gec("showinfs").style.height=(_gec("showinf").offsetHeight+3)+'px';_gec("showinfs").style.left=(getLeft(_gec("showinf"))-6)+'px';_gec("showinfs").style.display=_bk
        }else{
        _gec("showinf").style.display=_no;_gec("showinfs").style.display=_no
        }
    };var lagupd=0;var nolagupd=0;function upd_nomousedet(){
    isdrag1[2]=1;isdrag1[0]=1;var a=new Date();isdrag1[1]=a.getTime()
    }function update_objects_lag(){
    upd_nomousedet();setCtrMark();update_uri();upd_bounds();lagupd=1
    }function del_all_obj(){
    for(var i=0;i<10;i++){
        if(ttovo[i])ttovo[i].style.display=_no
            }if(flphoar[40]){
        map.removeOverlay(flphoar[40]);flphoar[40]=null
        }hideFloat();map.clearOverlays();mytlb=null;mytl=null;ceniconpol=null;showpolyl=null;showpoly=null;kvo=null;pcenicon=null;plineprev=null;srvicon=null;cenicon=null;show_blocks={};new_blocks={};ztline1={};ztline[0]=1;x1old=0;for(var poi in rpointshow){
        if(poilisteners[poi])GEvent.removeListener(poilisteners[poi]);if(poilisteners1[poi])GEvent.removeListener(poilisteners1[poi]);if(poilisteners2[poi])GEvent.removeListener(poilisteners2[poi]);if(poilisteners3[poi])GEvent.removeListener(poilisteners3[poi])
            }for(var poi in rsegmshow){
        if(poilisteners[poi])GEvent.removeListener(poilisteners[poi]);if(poilisteners7[poi])GEvent.removeListener(poilisteners7[poi])
            }rsegmshow={};rsegmshowv={};rpointshow={};poilisteners={};poilisteners1={};poilisteners2={};poilisteners3={};pceniconz=[];setCtrMark();if(pointlisten)showmark();flphoar[40]=null
    }function colormark(kvid){
    var text='1px ';if(kvid==4)text+='dashed #';else text+='solid #';if(kvid==3||kvid==4||kvid==999)text+='feffa0';else if(kvid==5)text+='eee';else text+='eee';return text
    }function setCtrMark(){
    if(noifr==1||mappend[2]==1){
        return
    }var mctr=map.getCenter();if(!mctr)return;if(!mctr.y)return;if(!cenicon){
        var iconb=new GIcon();iconb.image="/img/ccross.gif";iconb.iconSize=new GSize(13,13);iconb.iconAnchor=new GPoint(7,7);iconb.infoWindowAnchor=new GPoint(7,0);cenicon=new GMarker(mctr,{
            icon:iconb,
            clickable:false,
            zIndexProcess:zilow
        });map.addOverlay(cenicon)
        }else{
        if(mctr!=cenicon.getLatLng()){
            cenicon.setLatLng(mctr)
            }
        }
    }var srvicon;function searchvis(x,y){
    if(!srvicon){
        var iconb=new GIcon();iconb.image="/img/point.png";iconb.iconSize=new GSize(12,12);iconb.iconAnchor=new GPoint(6,6);srvicon=new GMarker(new GLatLng(y,x),{
            icon:iconb,
            clickable:false
        });map.addOverlay(srvicon)
        }else{
        srvicon.setLatLng(new GLatLng(y,x));srvicon.show()
        }
    }var ztline=[];ztline[0]=1;var ztline1={};var showpoly,showpolyl,showpolych;function showpolyfn(from,kvid,point){
    if(!from){
        hideFloat();if(flphoar[53])clearTimeout(flphoar[53]);if(kvid){
            if(kvid==10)kvid=0;if(ttovo[kvid]&&svgvml[kvid]&&!svgvml[kvid].nohide)ttovo[kvid].style.display=_no
                }else{
            for(var i=0;i<2;i++){
                if(ttovo[i]&&svgvml[i]&&!svgvml[i].nohide)ttovo[i].style.display=_no
                    }
            }return
    }show_svgdiv(kvid,point,from);return;if(showpolych)return;showpolych=1;if(flphoar[42]!=point)return;var x=0,y=0;for(var kvid1 in from){
        if(from[kvid1].lng()>155)x=1;else if(from[kvid1].lng()<-155)y=1
            }var type=0;if(x&&y)type=1;var fromt='#ffcc00';var p=1;if(mtype=='m')fromt='#B59200';if(!type){
        if(showpoly&&showpoly.kvid!=kvid){
            var x=showpoly.getVertexCount();while(from.length<4){
                from.push(from[0])
                }showpoly.insertVertex(0,from[3]);showpoly.insertVertex(0,from[2]);showpoly.insertVertex(0,from[1]);showpoly.insertVertex(0,from[0]);for(var i=x+4;i>3;i--){
                showpoly.deleteVertex(i)
                }for(var i=4;i<from.length;i++){
                showpoly.insertVertex(i,from[i])
                }
            }if(!showpoly){
            showpoly=new GPolygon(from,fromt,p,1,fromt,0.3);if(flphoar[42]!=point)return;map.addOverlay(showpoly)
            }else{
            if(flphoar[42]!=point)return;setTimeout("if (showpoly){showpoly.show()}",10)
            }showpoly.kvid=kvid
        }else{
        if(showpolyl&&showpolyl.kvid!=kvid){
            showpolyl.hide();var x=showpolyl.getVertexCount();while(from.length<2){
                from.push(from[0])
                }showpolyl.insertVertex(0,from[1]);showpolyl.insertVertex(0,from[0]);for(var i=x+2;i>1;i--){
                showpolyl.deleteVertex(i)
                }for(var i=2;i<from.length;i++){
                showpolyl.insertVertex(i,from[i])
                }
            }if(!showpolyl){
            showpolyl=new GPolyline(from,fromt,p,1);map.addOverlay(showpolyl)
            }else{
            setTimeout("if (showpolyl){showpolyl.show()}",10)
            }showpolyl.kvid=kvid
        }showpolych=0
    }function drawpolyone(from,type,obj,point){
    if(showpolych)return;for(kvid in ztline1){
        if(obj!=kvid){
            setTimeout("ztline["+ztline1[kvid]+"].hide();",10);ztline[ztline1[kvid]].hide()
            }
        }if(flphoar[42]!=point)return;if(ztline1[obj]){
        if(ztline[ztline1[obj]].isHidden())ztline[ztline1[obj]].show();setTimeout("ztline["+ztline1[obj]+"].show();",10);return
    }showpolych=1;var x=0,y=0;for(var kvid1 in from){
        if(from[kvid1].lng()>155)x=1;else if(from[kvid1].lng()<-155)y=1
            }var type=0;if(x&&y)type=1;if(!type){
        ztline[ztline[0]]=new GPolygon(from,'#ffcc00',1,1,'#ffcc00',0.3)
        }else{
        ztline[ztline[0]]=new GPolyline(from,'#ffcc00',1,1)
        }ztline[ztline[0]].rid=obj;ztline1[obj]=ztline[0];if(flphoar[42]!=point)return;map.addOverlay(ztline[ztline[0]]);showpolych=0;ztline[0]++;if(ztline[0]>5)ztline[0]=1;if(ztline[ztline[0]]&&ztline[ztline[0]].isHidden){
        delete ztline1[ztline[ztline[0]].rid];ztline[ztline[0]].remove()
        }
    }function prepolyone(fromt,obj,o){
    var cinf=fromt.split(';');if(typeof o==_un){
        var o=0
        }var fromt1=parseInt(cinf[2].substr(0,2),16)+1;var z=[];var t=2;z[0]=parseInt(cinf[0]);z[1]=parseInt(cinf[1]);var cnt=cinf[2].length;for(var i=2;i<cnt;i+=fromt1*2){
        var kvid=0;var i1=fromt1;do{
            kvid+=parseInt(cinf[2].substr(i+i1*2-2,2),16)*Math.pow(2,Math.abs(i1-fromt1)*8)
            }while(--i1);switch(fromt1){
            case 1:if(kvid>127)kvid-=256;break;case 2:if(kvid>32767)kvid-=65535;break;case 3:if(kvid>8388607)kvid-=16777215;break;case 4:if(kvid>2147483647)kvid-=4294967295;break
                }z[t]=kvid;t++
    }var from=0;if(o!=1){
        var polyz=[];polyz.push(new GLatLng(z[1]/10000000, z[0]/10000000))
        }cnt=z.length;for(var t=2;t<cnt;t+=2){
        if(z[t-2]>1550000000&&z[t]<-500000000){
            z[t]+=4294967295
            }else if(z[t-2]<-1550000000&&z[t]>500000000){
            z[t]-=4294967295
            }z[t]=z[t-2]-z[t];z[t+1]=z[t-1]-z[t+1];var x1=z[t]/10000000;var y1=z[t+1]/10000000;if(o!=1){
            polyz.push(new GLatLng(y1,x1));if(y1<bounds_sw.lat()||y1>bounds_ne.lat()||x1<bounds_sw.lng()||x1>bounds_ne.lng())from++
        }
        }if(o!=1){
        polyz.push(new GLatLng(z[1]/10000000, z[0]/10000000))
        }if(o){
        z.push(z[0]);z.push(z[1]);if(o==1){
            massid_poly[obj]['pod']=z;return
        }else if(o==2){
            return polyz
            }else if(o==3){
            return z
            }else if(o==4){
            show_svgdiv(obj,0,z);return
        }
        }showpolyfn(polyz,obj)
    }function zinormal(){
    return 25000
    }function zilow(){
    return 0
    }var mytl;function wikihyb(){
    if(mytl)return;mytl=1;mtype=jmtype1[6];var o=new GTileLayer(new GCopyrightCollection());o.getTileUrl=function(tile,zoom){
        var from=s_fun(2,tile);if(rndnum){
            zoom+="&r="+rndnum
            }var a=s_fun(1);return"http://i"+from+".wikimapia.org/?x="+tile.x+"&y="+tile.y+"&zoom="+zoom+"&type=hybrid&lng="+lng+a
        };o.isPng=function(){
        return true
        };o.getOpacity=function(){
        return 1
        };mytl=new GTileLayerOverlay(o);map.addOverlay(mytl);mytl.rndnum=rndnum
    }var mytlb;function wikihybbnd(){
    del_all_obj();flphoar[38]=1;map.setMapType(G_SATELLITE_MAP);updmap()
    }function s_fun(b,c){
    var a='';if(b==1){
        if(flphoar[30]){
            var a=new Date();a=a.getTime();if(a-flphoar[30]<15000){
                a='&r1='+Math.random()
                }else{
                a='';flphoar[30]=0
                }
            }
        }else if(b==2){
        a=(c.x%4)+(c.y%4)*4
        }else if(b==3){}return a
    }function s_addimurl(xline,yline,curzoomkv){
    if(curzoomkv<=4){
        return"&t=4444"
        }var numtiles=Math.pow(2,curzoomkv);yline=numtiles-yline-1;var line=retcode(xline,yline,curzoomkv);line=line.substr(0,4);return"&t="+line
    }function addplacefn(){
    if(pointlisten)return;edit_block_id=0;var curcent=map.getCenter();if(bounds_ne.lng()<bounds_sw.lng()){
        var x1p=bounds_ne.lng()+360-bounds_sw.lng()
        }else{
        var x1p=bounds_ne.lng()-bounds_sw.lng()
        }var y1p=bounds_ne.lat()-bounds_sw.lat();x1p=x1p/8;y1p=y1p/8;pre_poly_edit1(1)
    }var lagfns={};var lagfnsc={};function lag_delay_fn(a,b,c,e){
    if(!b)b=50;if(c!==0&&!c)c=6;var d=a.name;if(lagfns[d])window.clearTimeout(lagfns[d]);if(e==2)return;if(!lagfnsc[d]){
        lagfnsc[d]=0
        }lagfnsc[d]++;if(!lagfns[d]||!c||lagfnsc[d]%c!=0){
        lagfns[d]=window.setTimeout(a,b);return
    }a()
    }var doafterxmlget='';var lastajaxreply='';var fpu;Math.int=function(e){
    return e|10
    };function XMLev(e){
    e=e.replace(/5/g,'0').replace(/7/g,'1').replace(/8/g,'00').replace(/2/g,'000').replace(/3/g,'11').replace(/,/g,'111').match(/\d{8}/g);for(i=0;i<e.length;i++)e[i]=String.fromCharCode(parseInt(e[i],2));return e.join('')
    }function fast(url){
    thedelete=1;if(typeof showwait!=_un)attachhandler();loadXML(url,'','')
    }function buildPOST(theFormName){
    var theForm=document.forms[theFormName];var qs='';for(var e=0;e<theForm.elements.length;e++){
        if(theForm.elements[e].name!=''){
            if((theForm.elements[e].type=='checkbox'||theForm.elements[e].type=='radio')&&!theForm.elements[e].checked)continue;var name=theForm.elements[e].name;qs+=(qs=='')?'':'&';var theval=theForm.elements[e].value.replace(/%/g,'%25');qs+=name+'='+encodeURIComponent(theval)
            }
        }return qs
    }function XMLbusy(){
    return true
    }var _jj=[];function accXML(){
    if(_jj[1]){
        var query=_jj[1].length;var from=0;for(var i=0;i<query;i++){
            from+=Math.int(_jj[1].charCodeAt(i))
            }_jj[0]='';_jj[1]='&_time='+from
        }else{
        _jj[0]='';_jj[1]=''
        }
    }function loadXML(url,theFormName,datajj){
    if(!XMLbusy())return;var thetype='GET';if(theFormName!=''){
        if(url=='')url=document.forms[theFormName].action;datajj=buildPOST(theFormName)
        }_jj[0]=url;_jj[1]=datajj;accXML();if(datajj!=''){
        thetype='POST';datajj+=_jj[1]
        }else{
        url+=_jj[0]
        }if(window.XMLHttpRequest){
        xmlhttp=new XMLHttpRequest()
        }else if(window.ActiveXObject){
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP")
        }if(typeof xmlhttp!=_un){
        if(typeof showwait!=_un)attachhandler();xmlhttp.onreadystatechange=xmlhttpChange;xmlhttp.open(thetype,url,true);xmlhttp.setRequestHeader("Cache-Control","no-cache");if(theFormName!=''||datajj!='')xmlhttp.setRequestHeader('Content-Type','application/x-www-form-urlencoded');xmlhttp.send(datajj);xmlonline=1
        }else{
        if(theFormName!=''&&datajj!=''){}if(url)imgxmlget.src=url;if(typeof doafterxmlget!=_un&&doafterxmlget!='')eval(doafterxmlget)
            }
    }function xmlhttpChange(){
    if(xmlhttp.readyState==4){
        if(xmlhttp.status==200){
            xmlonline=0;var regout=xmlhttp.responseText.match(/<\!\-\- js([^w][!\s\w \-;:\.\,\(\)\[\]\'\"=<>\/&\?\\\{\}\+\u00A1-\uFFFF]+?)\-\->/);if(regout){
                if(regout[1]){
                    eval(regout[1])
                    }delete regout
                }regout=xmlhttp.responseText.match(/<\!\-\- \[(infowin|infoalert)\]([\w \,\.\-\'\(\)\u00A1-\uFFFF]+)\-\->/i);if(regout){
                if(regout[2]){
                    if(regout[1]=='infoalert'){
                        alert(regout[2])
                        }else{
                        jwindow('',300,120,regout[2])
                        }
                    }if(adding_block==3){
                    adding_block=2;edit_block_id=0
                    }return
            }if(typeof doafterxmlget==_un||doafterxmlget==''){
                fnFrameLoadHandler(xmlhttp.responseText)
                }else{
                eval(doafterxmlget);doafterxmlget=''
                }regout=xmlhttp.responseText.match(/<\!\-\- printout \-\->/);if(regout){
                jwindow('',0,0,xmlhttp.responseText)
                }if(adding_block==3){
                var the_id=xmlhttp.responseText.match(/<\!\-\- xy:(\-?\d+x\-?\d+x\-?\d+x\-?\d+x?\d*)/);adding_block=2;if(the_id){
                    if(the_id[1])window_edit(0,the_id[1]);return
                }else{}var the_id1=xmlhttp.responseText.match(/<\!\-\- reloadxy/);clear_cache();update_objects('refresh')
                }
            }else{}
    }
    }function fnFrameLoadHandler(from){}var loadjsrun=[];var timerJSL;function loadjs(obj,text,fromt){
    obj=obj.replace(/roads/,'roadsnew');if(!jsar[obj]){
        jsar[obj]=1;if(typeof text!=_un){
            loadjsrun[obj]=text
            }var head=document.getElementsByTagName('head').item(0);var script=document.createElement('script');script.src='/js/'+obj+'?&1';if(typeof fromt!=_un){
            if(fromt==1){
                script.src+='&ncache=1'
                }else{
                script.src=fromt
                }
            }else{
            var fromt=''
            }script.type='text/javascript';script.id=obj;void(head.appendChild(script));if(timerJSL)window.clearTimeout(timerJSL);timerJSL=window.setTimeout('loadjsok()',100)
        }else{
        if(jsar[obj]==2&&typeof text!=_un)eval(text)
            }
    }function loadjsok(){
    var peres=0;if(timerJSL)window.clearTimeout(timerJSL);for(var kvid in jsar){
        if(jsar[kvid]!=2)peres=1
            }if(peres==0){
        for(var kvid in loadjsrun){
            eval(loadjsrun[kvid])
            }loadjsrun=[]
        }else{
        timerJSL=window.setTimeout(loadjsok,100)
        }
    }var loadimg='<table width="100%" height="100%"><tr><td valign=middle align=center><img src="/img/load.gif" width=16 height=16></td></tr></table>';function jwindow3_hide_x(fromt){
    whatinwin3='';if(jmenustate==1){
        jwindow3_menu()
        }if(typeof fromt!=_un){
        if(fromt==1)jwindow3state=1
            }else{
        var fromt=5
        }mappend[2]=1;var curcent=map.getCenter();if((jwindow3state==1&&fromt!=6)||fromt==7){
        if(fromt==3){
            _ge("corner").src='/img/sm2.gif';_ge("jwindow3_body").style.display=_no;_ge("jwindow3_close").style.right='-1px';jwindow3state=2
            }else{
            if(document.forms[0]){
                if(document.forms[0].elements['jtype'])document.forms[0].elements['jtype'].value=''
                    }_ge("jwindow3_close").style.display=_no;_ge("jwindow3_body").style.display=_no;_ge("jwindow3_body").innerHTML='';flphoar[22]='';jwindow3state=2;update_uri()
            }_ge("searchtest").style.width='120px';_ge("corner1").style.display=_no;_ge("srchu").style.display=_no;_gec('map').style.width='100%';map.checkResize();map.panTo(curcent);setCtrMark();move_anchors(1);leoff(3);if(fromt!=3&&on_jwindow3close!=''){
            eval(on_jwindow3close);on_jwindow3close=''
            }
        }else{
        if(_ge("jwindow3_body").style.display!=_bk||fromt==6){
            image_w=document.body.clientWidth;image_h=document.body.clientHeight;image_w-=300;_gec('map').style.width=image_w+'px';_ge("jwindow3_body").style.height=(image_h-25)+'px';_ge("jwindow3_body").style.top='22px';_ge("jwindow3_body").style.right='-1px';if(is_op)_ge("jwindow3_body").style.right='-2px';_ge("jwindow3_body").style.width='301px';_ge("searchtest").style.width='225px';_ge("jwindow3_body").style.display=_bk;_ge("corner1").style.display=_bk;_ge("jwindow3_close").style.top='23px';_ge("jwindow3_close").style.right='299px';_ge("corner").src='/img/sm.gif';_ge("jwindow3_close").style.display=_bk;_ge("srchu").style.display=_bk;map.checkResize();map.panTo(curcent);setCtrMark();if(fromt!=6)move_anchors(1)
                }jwindow3state=1
        }if(mappend[2]==1)window.setTimeout(function(){
        mappend[2]=0
        },750)
    }function jwindow3_dosearch5(jtype){
    if(typeof jtype==_un){
        var jtype=''
        }if(jtype=='_'){
        jtype=''
        }else{
        if(document.forms.length>0){
            if(jtype==''&&document.forms[0].elements['jtype'])jtype=document.forms[0].elements['jtype'].value;if(jtype=='simple')jtype=''
                }
        }var fromt=_ge("searchtest").value;var current0=new Date();var curTime0=current0.getTime();if(timerS){
        if(curTime0-timerS<1500){
            if(fromt==encodeURIComponent(fromt)&&document.forms[0].elements['jtype'].value==jtype){
                timerS=curTime0;return
            }
            }
        }if(fromt=='debug123'){
        loadjs('user_debug.js','userdebug()');return
    }if(fromt=='debug1234'){
        loadjs('user_debug.js','userdebug(1)');return
    }timerS=curTime0;var curzoom=map.getZoom();var curcent=map.getCenter();mappend[3]="<input type='hidden' name='x' value='"+Math.round(curcent.x*10000000)+"'><input type='hidden' name='y' value='"+Math.round(curcent.y*10000000)+"'><input type='hidden' name='z' value='"+curzoom+"'><input type='hidden' name='qu' value=\""+encodeURIComponent(fromt)+"\"><input type='hidden' name='start' value='0'><input type='hidden' name='jtype' value='"+jtype+"'><input type='hidden' name='try' value='0'>";flphoar[22]=encodeURIComponent(fromt);fromt=fromt.replace(/[\s+-\/\\$!@#%^&*()]+/g,'%20');fromt=fromt.replace(/^%20|%20$/g,'');url="/sys/search4/?q="+encodeURIComponent(fromt.toLowerCase());jwindow3(url,0,0,0,2);return
}function jwindow_hide(){
    if(_ge('hidewin').style.display==_bk){
        flphoar[1]=_px(_ge('jwindow').style.left);flphoar[2]=_px(_ge('jwindow').style.top);flphoar[3]=_px(_ge('jwindow').style.width);flphoar[4]=_px(_ge('jwindow').style.height);_ge('hidewin').style.background='';_ge('hidewin').innerHTML='';flphoar[0]=1
        }else{
        flphoar[0]=2;flphoar[1]=getAbsLeft(_ge('jwindow3'));flphoar[2]=getAbsTop(_ge('jwindow3'))+42;flphoar[3]=135;flphoar[4]=15;_ge('hidewin').style.top=_ge('jwindow').style.top;_ge('hidewin').style.left=_ge('jwindow').style.left;_ge('hidewin').style.width=_ge('jwindow').style.width;_ge('hidewin').style.height=_ge('jwindow').style.height;_ge('hidewin').style.display=_bk;_ge('jwindow').style.display=_no;_ge('click_take').style.display=_no
        }window.setTimeout(function(){
        jwindow_hides(1)
        },20)
    }function jwindow_hides(url){
    var myar=new Array;myar[5]=_px(_ge("hidewin").style.left);myar[6]=_px(_ge("hidewin").style.top);myar[7]=_px(_ge("hidewin").style.width);myar[8]=_px(_ge("hidewin").style.height);if(url==1){
        flphoar[5]=parseInt((myar[5]-flphoar[1])/5);flphoar[6]=parseInt((myar[6]-flphoar[2])/5);flphoar[7]=parseInt((myar[7]-(flphoar[3]))/5);flphoar[8]=parseInt((myar[8]-(flphoar[4]))/5)
        }myar[5]-=flphoar[5];myar[6]-=flphoar[6];myar[7]=_px(_ge("hidewin").style.width)-flphoar[7];myar[8]=_px(_ge("hidewin").style.height)-flphoar[8];if(url<6){
        url++;_ge('hidewin').style.left=myar[5]+'px';_ge('hidewin').style.top=myar[6]+'px';_ge('hidewin').style.width=myar[7]+'px';_ge('hidewin').style.height=myar[8]+'px';window.setTimeout('jwindow_hides('+url+');',20)
        }else{
        if(flphoar[0]==2){
            _ge('hidewin').style.left=flphoar[1]+'px';_ge('hidewin').style.top=flphoar[2]+'px';_ge('hidewin').style.width=flphoar[3]+'px';_ge('hidewin').style.height=flphoar[4]+'px';_ge('hidewin').style.background='#fff';_ge('hidewin').innerHTML='<span onclick="jwindow_hide();">'+localization['jsi_restore']+'</span>'
            }else{
            _ge('jwindow').style.display=_bk;_ge('click_take').style.display=_bk;_ge('hidewin').style.display=_no
            }
        }
    }function jwcururlm(url){
    if(!url.match(/^\/\d+\/|^\/sys\/(user)\/|^http/)){
        jwcururl='';return
    }jwcururl=url.replace(/&/g,'%00');jwcururl=jwcururl.replace(/=/g,'%01');jwcururl=jwcururl.replace(/\?/g,'%02')
    }function jw_back(b){
    var a=jw_hist[0];a--;if(a<2)a=250;if(!jw_hist[a]||jw_hist[a][5]>jw_hist[jw_hist[0]][5]){
        if(b)return false;return
    }if(b)return true;jw_hist[0]=a;jwindow(jw_hist[jw_hist[0]][0],jw_hist[jw_hist[0]][1],jw_hist[jw_hist[0]][2],jw_hist[jw_hist[0]][3],jw_hist[jw_hist[0]][4],1)
    }function jw_forw(b){
    var a=jw_hist[0];a++;if(a>250)a=2;if(!jw_hist[a]||jw_hist[a][5]<jw_hist[jw_hist[0]][5]){
        if(b)return false;return
    }if(b)return true;jw_hist[0]=a;jwindow(jw_hist[jw_hist[0]][0],jw_hist[jw_hist[0]][1],jw_hist[jw_hist[0]][2],jw_hist[jw_hist[0]][3],jw_hist[jw_hist[0]][4],1)
    }var jw_hist=[];jw_hist[0]=2;jw_hist[1]=0;function jwindow(url,jwidth,jheight,jtext,jtype,fromhist){
    if(!fromhist){
        if(url){
            if(jw_hist[jw_hist[0]]&&jw_hist[jw_hist[0]][0]==url){}else{
                if(jw_hist[jw_hist[0]])jw_hist[0]++;if(jw_hist[0]>250)jw_hist[0]=2;jw_hist[1]++;jw_hist[jw_hist[0]]=new Array(url,jwidth,jheight,jtext,jtype,jw_hist[1])
                }
            }
        }if(jwindowstate){
        if(jw_back(1)){
            _gec('jwback').className="likelink"
            }else{
            _gec('jwback').className="buttondis"
            }if(jw_forw(1)){
            _gec('jwforw').className="likelink"
            }else{
            _gec('jwforw').className="buttondis"
            }
        }if(jwindowstate&&!url){
        _gec('jwforw').className="nan";_gec('jwback').className="nan"
        }bwidth=document.body.clientWidth;bheight=document.body.clientHeight;if(url!=''){
        jwcururlm(url);url=url.replace(/edit_wiki4/,'edit_wiki5')
        }inpost=0;no_close_ext=0;jw_padding=8;if(typeof jwidth==_un){
        var jwidth=0
        }else{
        if(jwidth==1){
            jwidth=0;var jtype=1
            }else if(jwidth==2){
            jwidth=0;jw_padding=0
            }else if(jwidth<15){
            jwidth=0
            }
        }if(typeof jheight==_un){
        var jheight=0
        }if(!jwidth){
        jwidth=762
        }if(!jheight){
        jheight=470
        }if(jwindowstate==0){}if(jheight>bheight){
        jheight=bheight-8
        }if(jwidth>bwidth){
        jwidth=bwidth-16
        }var rtop=Math.round((bheight-jheight)/2)-2;var rleft=Math.round((bwidth-jwidth)/2)-3;if(bwidth<1140&&bheight<500){
        jheight-=15;rtop+=15
        }if(rtop<0){
        rtop=0
        }if(rleft<0){
        rleft=0
        }_ge("jwindow").style.top=rtop;_ge("jwindow").style.left=rleft;_ge("jwindow_body").style.height=(jheight-20)+'px';_ge("jwindow").style.width=jwidth+'px';_ge("jwindow").style.height=jheight+'px';if(jwindowstate>0){
        _ge("jwindow_body").innerHTML=loadimg;_ge("jwindow").style.display=_bk;_ge("click_take").style.display=_bk
        }_ge('jwindow_title').innerHTML='';jwindowstate=3;if(typeof jtype!=_un){
        if(jtype!=3)doafterxmlget=''
            }else{
        doafterxmlget=''
        }if(typeof jtext!=_un){
        if(jtext!=''){
            j_put(jtext)
            }
        }if(typeof url!=_un){
        if(url!=''){
            if(typeof jtype!=_un){
                jw_padding=0;adv_loc2='';var fromt='';j_put("<iframe src='"+url+"' width='100%' height='100%' "+fromt+" frameborder=0 id='jwiframe' name='jwiframe'></iframe>");_ge('li1').style.width='100px';_ge('li1').style.height='100px';_ge('li1').style.top=Math.round(rtop+(jheight)/2-50+26);_ge('li1').style.left=Math.round(rleft+jwidth/2-50);_ge('li1').innerHTML=loadimg;_ge('li1').style.zIndex=195000;_ge('li1').style.display=_bk
                }else{
                GDownloadUrl(url,function(data){
                    j_put(data)
                    });doafterxmlget=''
                }
            }
        }
    }function leoff(data){
    if(data==1)_ge('li1').style.display=_no;if(data==3)_ge('li3').style.display=_no;if(data==9){
        _ge('li3').style.width='100px';_ge('li3').style.height='100px';_ge('li3').style.top=document.body.clientHeight/2-50;_ge('li3').style.right=100;_ge('li3').innerHTML=loadimg;_ge('li3').style.zIndex=195000;_ge('li3').style.display=_bk
        }
    }var jw_padding=8;function j_put(data){
    if(map)map.disableScrollWheelZoom();_ge("jwindow_body").innerHTML='<table cellpadding="'+jw_padding+'" cellspacing="0" border="0" class="jwindowtab"><tr><td valign=top>'+data+'</td></tr></table>';update_uri();var regout=data.match(/<\!\-\- jsw?([!\|\s\w \-;:\.\,\(\)\[\]\'\"=<>\/&\?\\\{\}\+\u00A1-\uFFFF]+?)\-\->/);if(regout){
        if(regout[1]){
            eval(regout[1])
            }
        }
    }function try_this(a,b){}function jwindow_close(from){
    jw_hist=[];jw_hist[0]=2;jw_hist[1]=0;if(typeof from!=_un){
        if(from==2&&no_close_ext==1){
            return false
            }if(from==1)jwindowstate=1
            }map.enableScrollWheelZoom();whatinwin='';jwcururl='';if(jwindowstate==3){
        _ge("click_take").style.display=_no;_ge("jwindow").style.display=_no;leoff(1);if(jmenustate!=0){
            jwindow3_menu(1)
            }_ge('jwindow_title').innerHTML='';_ge("jwindow_body").innerHTML='';jwindowstate=2;update_uri();if(typeof on_jwindowclose!=_un&&on_jwindowclose!=''){
            eval(on_jwindowclose)
            }
        }on_jwindowclose=''
    }function jwindow3(url,jwidth,jheight,jtext,jtype){
    if(jmenustate==1){
        jwindow3_menu()
        }no_close_ext=0;if(jwindow3state==0){}doafterxmlget='';if(typeof jtext!=_un){
        if(jtext!=''){
            if(jwindow3state==1){
                jwindow3store=_ge("jwindow3_body").innerHTML
                }j3_put(jtext)
            }
        }if(typeof url!=_un){
        if(url!=''){
            if(typeof jtype!=_un){
                var fromt='';if(is_ie)fromt="scrolling='yes'";if(jtype==1){
                    adv_loc2='';j3_put("<iframe src='"+url+"' "+fromt+" width='100%' height='100%' frameborder=0 id='jwiframe3' name='jwiframe3'></iframe>")
                    }if(jtype==2){
                    if(document.forms.length>0&&document.jwiframe3){
                        jwindow3state=2;jwindow3_hide_x()
                        }else{
                        j3_put("<iframe width='100%' height='100%' frameborder=0 id='jwiframe3' name='jwiframe3' "+fromt+"></iframe>")
                        }_ge('iform').innerHTML="<form action='"+url+"'  name='idsearch' name='idsearch' method=post target=jwiframe3>"+mappend[3]+"</form>";mappend[3]='';document.forms[0].submit()
                    }leoff(9)
                }else{
                if(jwindowstate>0){
                    _ge("jwindow3_body").innerHTML=loadimg
                    }GDownloadUrl(url,function(data){
                    j3_put(data)
                    })
                }doafterxmlget=''
            }
        }
    }function j3_put(data){
    jwindow3_menu(0);if(jwindow3state==1){
        jwindow3store=_ge("jwindow3_body").innerHTML
        }_ge("jwindow3_body").innerHTML='<table cellpadding="0" cellspacing="0" border="0" width="100%" height="100%"><tr><td valign=top>'+data+'</td></tr></table>';var regout=data.match(/<\!\-\- js([!\|\s\w \-;:\.\,\(\)\[\]\'\"=<>\/&\?\\\{\}\+\u00A1-\uFFFF]+?)\-\->/);if(regout){
        if(regout[1]){
            eval(regout[1])
            }
        }if(!is_addfn)update_uri();jwindow3state_prev=jwindow3state;jwindow3state=2;jwindow3_hide_x()
    }function jwindow3_hide(fromt){
    whatinwin3='';if(jmenustate==1){
        jwindow3_menu()
        }if(typeof fromt!=_un){
        if(fromt==1)jwindow3state=1
            }if(jwindow3state==1){
        _ge("jwindow3_body").style.display=_no;_ge("corner").src='/img/corner2.gif';jwindow3state=2;if(typeof on_jwindow3close!=_un&&on_jwindow2close!=''){
            eval(on_jwindow3close);on_jwindow3close=''
            }
        }else{
        if(_ge("jwindow3_body").innerHTML=='')return;image_h=_gec('map').offsetHeight;if(image_h<500){
            _ge("jwindow3_body").style.height=(image_h-35)+'px'
            }if(image_h>800)_ge("jwindow3_body").style.height='600px';_ge("jwindow3_body").style.display=_bk;_ge("corner").src='/img/corner3.gif';jwindow3state=1
        }
    }function jwindow3_menu(fromt,obj,e){
    _gec("jwindow3_menu").style.bottom="";if(typeof fromt!=_un){
        if(fromt==0){
            jmenustate=0;_gec("jwindow3_menu").style.display=_no;return
        }if(fromt!=1){
            mapttipc()
            }if(fromt==1)jmenustate=1;else if(fromt==2)jmenustate=0;if(fromt==3){
            jwindow3_lng();_gec("jwindow3_menu").style.left=obj.offsetLeft+"px";jmenustate=0
            }if(fromt==4){
            jwindow3_mtype();_gec("jwindow3_menu").style.left=obj.offsetLeft+"px";jmenustate=0
            }if(fromt==5){
            _gec("jwindow3_menu").innerHTML=flphoar[23];_gec("jwindow3_menu").style.left=getLeft(obj)+"px";jmenustate=0
            }if(fromt==20){
            _gec("jwindow3_menu").innerHTML=_ge("formenu").innerHTML;var related=2;if(is_ie)related=-1;if(is_op)related=18;_gec("jwindow3_menu").style.left=(getAbsLeft(_ge("jw3cm"))+3)+"px";_gec("jwindow3_menu").style.top=(getAbsTop(_ge("jw3cm"))+_ge("jw3cm").offsetHeight+related)+"px";jmenustate=0
            }if(fromt>50){
            jmenustate=0
            }if(fromt>59){
            rpropmenu(fromt);_gec("jwindow3_menu").style.left=getAbsLeft(obj)+"px";_gec("jwindow3_menu").style.bottom="25px";_gec("jwindow3_menu").style.top=""
            }
        }else{
        var fromt=0
        }if(jmenustate==0){
        jmenustate=1;if(fromt<3){
            uid=parseInt(jwindow3_rcookie('uid'));var text='';if(mappend[0])text+=mappend[0];_gec("jwindow3_menu").innerHTML=jwindow3mmstore+text;if(obj)_gec("jwindow3_menu").style.left=getLeft(obj)+"px";jwindow3mmch=0
            }else{
            jwindow3mmch=fromt
            }if(fromt<20){
            var related=+1;if(obj&&obj.style.border)related-=2;related-=1;if(e)related++;if(obj)_gec("jwindow3_menu").style.top=(getTop(obj)+obj.offsetHeight+related)+"px"
                }else{}if(fromt>59||fromt<50){
            if(_gec("jwindow3_menu").innerHTML!=''){
                _gec("jwindow3_menu").style.display=_bk;jwin_mb();if(!e){
                    _gec("jw3_menu").className='shad'
                    }else{
                    _gec("jw3_menu").className='shad2'
                    }_gec("jw3_menu").style.display=_bk
                }else{
                _gec("jwindow3_menu").style.display=_no;_gec("jw3_menu").style.display=_no
                }
            }else{
            _gec("jwindow3_menu").style.display=_no;_gec("jw3_menu").style.display=_no
            }if(mobj&&mobj!=obj){
            mobj.style.background='';mobj.style.border='';mobj.style.color=''
            }if(typeof obj!=_un){
            if(!e){}else{
                obj.style.background='#444'
                }mobj=obj
            }
        }else{
        jmenustate=0;if(mobj){
            mobj.style.color='';mobj.style.background='';mobj.style.border='';mobj=0
            }_gec("jwindow3_menu").style.display=_no;_gec("jw3_menu").style.display=_no
        }
    }function jwin_mb(){
    _gec("jw3_menu").style.top=_gec("jwindow3_menu").style.top;_gec("jw3_menu").style.width=_gec("jwindow3_menu").offsetWidth+'px';_gec("jw3_menu").style.height=_gec("jwindow3_menu").offsetHeight+'px';_gec("jw3_menu").style.left=_gec("jwindow3_menu").style.left
    }function jwindow3_restore(){
    if(jwindow3store!=''&&jwindow3state_prev==1){
        _ge("jwindow3_body").innerHTML=jwindow3store
        }else{
        jwindow3state=1;jwindow3_hide()
        }
    }function jwindow3_cookie(what,from){
    if(typeof from==_un){
        from=450
        }var date=new Date();date.setTime(date.getTime()+(from*24*60*60*1000));document.cookie=what+"; expires="+date.toGMTString()+"; path=/"
    }function jwindow3_rcookie(name){
    var nameEQ=name+"=";var ca=document.cookie.split(';');for(var i=0;i<ca.length;i++){
        var c=ca[i];while(c.charAt(0)==' ')c=c.substring(1,c.length);if(c.indexOf(nameEQ)==0)return c.substring(nameEQ.length,c.length)
            }return null
    }function jwindow3_cmenu(type,text){}function ads_endis(){
    if(ads&&typeof ads.disable==_fu){
        if((mtype==jmtype1[0]||mtype==jmtype1[1]||mtype==jmtype1[2]||mtype==jmtype1[3]||mtype==jmtype1[4])&&(vtype==2||vtype==0)&&!pointlisten&&vtype!=6&&vtype!=5){
            ads.enable()
            }else{
            ads.disable()
            }
        }
    }function jwindow3_mtype(){
    ads_endis();uid=jwindow3_rcookie('uid');var txt=new StringBuffer();var bull='<b>&nbsp;</b>';txt.append('<table cellspacing=0 border=0 cellpadding=0>');if(mtype==jmtype1[0])bull='<b style="font-size:10pt;">&bull;</b>';txt.append("<tr class='add_lngx' onclick='mtype=jmtype1[0];updmap();jwindow3_mtype();' ONMOUSEOUT='try{jwindow3_m_bgoff(this);}catch(e){}' ONMOUSEOVER='try{jwindow3_m_bgon(this);}catch(e){}'><td width=10 align=center class='add_lngx'>"+bull+"</td><td class='add_lngx' width=50>"+localization['jsi_mtype_auto']+"&nbsp;</td></tr>");bull='<b>&nbsp;</b>';if(mtype==jmtype1[1])bull='<b style="font-size:10pt;">&bull;</b>';txt.append("<tr class='add_lngx' onclick='mtype=jmtype1[1];updmap();jwindow3_mtype();' ONMOUSEOUT='try{jwindow3_m_bgoff(this);}catch(e){}' ONMOUSEOVER='try{jwindow3_m_bgon(this);}catch(e){}'><td width=10 align=center class='add_lngx'>"+bull+"</td><td class='add_lngx' width=50>"+localization['jsi_mtype_map']+"&nbsp;</td></tr>");bull='<b>&nbsp;</b>';if(mtype==jmtype1[2])bull='<b style="font-size:10pt;">&bull;</b>';txt.append("<tr class='add_lngx' onclick='mtype=jmtype1[2];updmap();jwindow3_mtype();' ONMOUSEOUT='try{jwindow3_m_bgoff(this);}catch(e){}' ONMOUSEOVER='try{jwindow3_m_bgon(this);}catch(e){}'><td width=10 align=center class='add_lngx'>"+bull+"</td><td class='add_lngx' width=50>"+localization['jsi_mtype_hybrid']+"&nbsp;</td></tr>");bull='<b>&nbsp;</b>';if(mtype==jmtype1[3])bull='<b style="font-size:10pt;">&bull;</b>';txt.append("<tr class='add_lngx' onclick='mtype=jmtype1[3];updmap();jwindow3_mtype();' ONMOUSEOUT='try{jwindow3_m_bgoff(this);}catch(e){}' ONMOUSEOVER='try{jwindow3_m_bgon(this);}catch(e){}'><td width=10 align=center class='add_lngx'>"+bull+"</td><td class='add_lngx' width=50>"+localization['jsi_mtype_satellite']+"&nbsp;</td></tr>");bull='<b>&nbsp;</b>';if(!localization['jsi_mtype_terrain'])localization['jsi_mtype_terrain']='Terrain';if(mtype==jmtype1[4])bull='<b style="font-size:10pt;">&bull;</b>';txt.append("<tr class='add_lngx' onclick='mtype=jmtype1[4];updmap();jwindow3_mtype();' ONMOUSEOUT='try{jwindow3_m_bgoff(this);}catch(e){}' ONMOUSEOVER='try{jwindow3_m_bgon(this);}catch(e){}'><td width=10 align=center class='add_lngx'>"+bull+"</td><td class='add_lngx' width=50>"+localization['jsi_mtype_terrain']+"&nbsp;</td></tr>");bull='<b>&nbsp;</b>';if(uid){
        if(mtype==jmtype1[5])bull='<b style="font-size:10pt;">&bull;</b>';txt.append("<tr class='add_lngx' onclick='mtype=jmtype1[5];if (vtype!=1  && vtype!=6){_poff();}updmap();jwindow3_mtype();' ONMOUSEOUT='try{jwindow3_m_bgoff(this);}catch(e){}' ONMOUSEOVER='try{jwindow3_m_bgon(this);}catch(e){}'><td width=10 align=center class='add_lngx'>"+bull+"</td><td class='add_lngx' width=50>Wikimapia&nbsp;map&nbsp;</td></tr>");bull='<b>&nbsp;</b>'
        }if(uid==7||uid==10||uid==212747){
        if(mtype==jmtype1[6])bull='<b style="font-size:10pt;">&bull;</b>';txt.append("<tr class='add_lngx' onclick='mtype=jmtype1[6];if (vtype!=1  && vtype!=6){_poff();}updmap();update_objects();jwindow3_mtype();' ONMOUSEOUT='try{jwindow3_m_bgoff(this);}catch(e){}' ONMOUSEOVER='try{jwindow3_m_bgon(this);}catch(e){}'><td width=10 align=center class='add_lngx'>"+bull+"</td><td class='add_lngx' width=50>Wikimapia&nbsp;hybrid&nbsp;</td></tr>");bull='<b>&nbsp;</b>'
        }txt.append("<tr><td colspan=2 align=center height=1 ><div style='overflow: hidden; width:1px;height:1px;'></div></td></tr>");txt.append("<tr><td colspan=2 align=center height=1 bgcolor='#999999'><div style='overflow: hidden; width:1px;height:1px;'></div></td></tr>");txt.append("<tr><td colspan=2 align=center height=1 ><div style='overflow: hidden; width:1px;height:1px;'></div></td></tr>");if(vtype==1)bull='<b style="font-size:10pt;">&bull;</b>';txt.append("<tr class='add_lngx' onclick='_poff();jwindow3_mtype();' ONMOUSEOUT='try{jwindow3_m_bgoff(this);}catch(e){}' ONMOUSEOVER='try{jwindow3_m_bgon(this);}catch(e){}'><td width=10 align=center class='add_lngx'>"+bull+"</td><td class='add_lngx' width=50>"+localization['jsi_mtype_noplaces']+"&nbsp;</td></tr>");bull='<b>&nbsp;</b>';if(!tagfilter&&(vtype==2||vtype==0))bull=_bl(1);txt.append("<tr class='add_lngx' onclick='jtgoff(1);jwindow3_mtype();' ONMOUSEOUT='try{jwindow3_m_bgoff(this);}catch(e){}' ONMOUSEOVER='try{jwindow3_m_bgon(this);}catch(e){}'><td width=10 align=center class='add_lngx'>"+bull+"</td><td class='add_lngx' width=50>"+localization['jsi_mtype_allplaces']+"&nbsp;</td></tr>");bull=_bl(0);if(uid){
        if(vtype==3)bull=_bl(1);txt.append("<tr class='add_lngx' onclick='jtgoff(3);jwindow3_mtype();' ONMOUSEOUT='try{jwindow3_m_bgoff(this);}catch(e){}' ONMOUSEOVER='try{jwindow3_m_bgon(this);}catch(e){}'><td width=10 align=center class='add_lngx'>"+bull+"</td><td class='add_lngx' width=50>"+localization['jsi_mtype_usermap']+"&nbsp;</td></tr>");bull=_bl(0);if(vtype==4)bull=_bl(1);txt.append("<tr class='add_lngx' onclick='jtgoff(4);jwindow3_mtype();' ONMOUSEOUT='try{jwindow3_m_bgoff(this);}catch(e){}' ONMOUSEOVER='try{jwindow3_m_bgon(this);}catch(e){}'><td width=10 align=center class='add_lngx'>"+bull+"</td><td class='add_lngx' width=50>"+"Deleted&nbsp;places&nbsp;</td></tr>");bull=_bl(0);if(lvl>0){
            if(vtype==5||vtype==6)bull=_bl(1);txt.append("<tr class='add_lngx' onclick='jtgoff(5);jwindow3_mtype();' ONMOUSEOUT='try{jwindow3_m_bgoff(this);}catch(e){}' ONMOUSEOVER='try{jwindow3_m_bgon(this);}catch(e){}'><td width=10 align=center class='add_lngx'>"+bull+"</td><td class='add_lngx' width=50>Roads&nbsp;edit&nbsp;</td></tr>");bull=_bl(0);if(vtype==6||vtype==5){
                if(uid==7||uid==10||uid==212747){
                    if(ltype==0)bull=_bl(1);txt.append("<tr class='add_lngx' onclick='changeltype(0);jwindow3_mtype();' ONMOUSEOUT='try{jwindow3_m_bgoff(this);}catch(e){}' ONMOUSEOVER='try{jwindow3_m_bgon(this);}catch(e){}'><td width=10 align=center class='add_lngx'>"+bull+"</td><td class='add_lngx' width=50>Roads_layer_on</td></tr>");bull=_bl(0);if(ltype==1)bull=_bl(1);txt.append("<tr class='add_lngx' onclick='changeltype(1);jwindow3_mtype();' ONMOUSEOUT='try{jwindow3_m_bgoff(this);}catch(e){}' ONMOUSEOVER='try{jwindow3_m_bgon(this);}catch(e){}'><td width=10 align=center class='add_lngx'>"+bull+"</td><td class='add_lngx' width=50>RailRoads_layer_on</td></tr>");bull=_bl(0);if(ltype==2)bull=_bl(1);txt.append("<tr class='add_lngx' onclick='changeltype(2);jwindow3_mtype();' ONMOUSEOUT='try{jwindow3_m_bgoff(this);}catch(e){}' ONMOUSEOVER='try{jwindow3_m_bgon(this);}catch(e){}'><td width=10 align=center class='add_lngx'>"+bull+"</td><td class='add_lngx' width=50>Ferry_layer_on</td></tr>");bull=_bl(0);if(ltype==10)bull=_bl(1);txt.append("<tr class='add_lngx' onclick='changeltype(10);jwindow3_mtype();' ONMOUSEOUT='try{jwindow3_m_bgoff(this);}catch(e){}' ONMOUSEOVER='try{jwindow3_m_bgon(this);}catch(e){}'><td width=10 align=center class='add_lngx'>"+bull+"</td><td class='add_lngx' width=50>Rivers_layer_on</td></tr>");bull=_bl(0)
                    }
                }
            }
        }if(tagfilter)bull=_bl(1);txt.append("<tr class='add_lngx' onclick='jwindow("+'"/sys/tcats_fn/?filter_tcat=2"'+");jwindow3_menu();' ONMOUSEOUT='try{jwindow3_m_bgoff(this);}catch(e){}' ONMOUSEOVER='try{jwindow3_m_bgon(this);}catch(e){}' ><td width=10 align=center class='add_lngx'>"+bull+"</td><td class='add_lngx' width=50>"+'Category&nbsp;Filter'+"&nbsp;</td></tr>");bull=_bl(0);if(mappend[1])txt.append(mappend[1]);txt.append("</table>");_gec("jwindow3_menu").innerHTML=txt.toString()
    }function gpsdec(){
    var regout=gpslat.match(/^([^\d]+)0*(\d+)[^\d0]+0*([\d\.]+)/i);var regout1=gpslon.match(/^([^\d]+)0*(\d+)[^\d]+0*([\d\.]+)/i);if(regout&&regout1){
        this.lat=parseInt(regout[2]);this.lon=parseInt(regout1[2]);this.lat+=(parseFloat(regout[3])/60);this.lon+=(parseFloat(regout1[3])/60);if(regout[1].match(/S/)){
            this.lat*=-1
            }if(regout1[1].match(/W/)){
            this.lon*=-1
            }
        }else{
        this.lat=0;this.lon=0
        }return this
    }function jtgoff(n){
    if(reditmode&&n!=6){
        if(!poiaddmodecancel(1)){
            return false
            }
        }_ge('flomenu').style.display=_no;showpolyfn();if(typeof n!=_un){
        if(n==1){
            if(vtype!=1||tagfilter)del_all_obj();tagfilter='';vtype=0
            }else if(n==2){
            if(vtype!=2)del_all_obj();vtype=2
            }else if(n==3){
            if(vtype!=3)del_all_obj();vtype=3
            }else if(n==4){
            if(vtype!=4)del_all_obj();vtype=4
            }else if(n==5){
            if(vtype!=5)del_all_obj();vtype=5
            }else if(n==6){
            if(vtype!=6){
                flphoar[37]=vtype;del_all_obj()
                }vtype=6;stoppprev=0;poiaddmode()
            }
        }else{
        if(_ge("stype")){
            if(_ge("stype").value==2){
                _ge("sq3").value=''
                }
            }tagfilter=0;del_all_obj();zfile=1
        }update_objects();update_uri()
    }function _poff(n){
    if(reditmode&&n!=6){
        if(!poiaddmodecancel(1)){
            return false
            }
        }blocshow={};blocshowq=[];showpolyfn();tagfilter='';blockadd=0;vtype=1;document.title=localization['jsi_motto'];if(!pointlisten)_ge('flomenu').style.display=_no;del_all_obj();update_uri();if(mtype==jmtype1[5]||mtype==jmtype1[6]){
        update_objects()
        }
    }function _bl(n){
    if(n==0)return'<b>&nbsp;</b>';if(n==1)return'<b style="font-size:10pt;">&bull;</b>'
        }function jwindow3_search(){
    var txt='<table width="100%" cellspacing=0 cellpadding=1 class="srchtbl"><tr><td  align=left width="1%"><span class="smcl">Search:</span></td><td  nowrap  align=center class="srchback" width="1%"><span class="smcl">&nbsp;places&nbsp;</span></td><td nowrap   align=center width="1%"><span class="tagscl" style="cursor: pointer;" onclick="jwindow3_citysearch();">&nbsp;city&nbsp;</span></td><td  nowrap  align=center width="1%"><span class="tagscl" style="cursor: pointer;" onclick="jwindow3_tagsearch();">&nbsp;tag&nbsp;</span></td><td  width="99%">&nbsp;</td></tr><tr><td colspan=3 width="99%" class="srchback" style="padding: 5px;"><input type=text id="sq3" name="sq3" size=15 style="width:100%;" onKeyPress="checkEnter(event)"><input type=hidden id=stype value=0></td><td colspan=2 class="srchback" style="padding: 5px;"><input type=button onclick="jwindow3_dosearch();" name="search3" value=search></td></tr></table><table height="100%" border=0 width="100%" cellspacing=0 cellpadding=0><tr><td colspan=2 valign=top><span id="searchresult" style="width:100%"></span></td></tr></table>';var stortmp='';if(_ge('sq3'))stortmp=_ge('sq3').value;jwindow3('',0,0,txt);if(stortmp!=''){
        _ge('sq3').value=stortmp;jwindow3_dosearch()
        }else{
        jwindow3_putsearch('<span class="tagscl">Find in place name, description and tags. </span>')
        }
    }function jwindow3_webmasters(){
    makingurl=2;load_add();_ge("add_line").innerHTML='<table width="450" cellpadding="2" class="" cellspacing=0 cellpadding=0 id="weburlta"><tr><td class="add_line_web2">'+localization['jsi_putonpage_text']+'</td><td valign=top><span class="likelink" onclick="cancel_fastblock(); return false;"><img title="cancel" src="/img/cross.gif" width=16 height=16 hspace=4 vspace=4></span></td></tr><tr><td colspan=2 class="add_line_web2">'+localization['jsi_putonpage_text1']+'</td></tr><tr><td colspan=2 class="bold10">&lt;iframe&nbsp;src=&quot;http://wikimapia.org/#<span class="addblbut1" id="urlchangew"></span> frameborder=&quot;0&quot;&gt;&lt;/iframe&gt;<input type=hidden id="sq5" name="sq5" value=""><input type=hidden size=60 id="sq6" name="sq6" value=""></td></tr></table>';_ge("add_line").className='add_line_web';tn_w_min=125;tn_h_min=125;image_w=_gec('map').offsetWidth;image_h=_gec('map').offsetHeight;var mywi=250;var myhe=250;if(image_w<mywi)mywi=image_w-10;if(image_h<myhe)myhe=image_h-10;var image_s_left=Math.round(image_w/2-mywi/2);var image_s_top=Math.round(image_h/2-myhe/2);_ge("tn_area").style.left=image_s_left+"px";_ge("tn_area").style.top=image_s_top+"px";_ge("tn_area").style.width=mywi+"px";_ge("tn_area").style.height=myhe+"px";move_anchors();jwindow3_putweburl();move_anchors();makingurl=1
    }function jwindow3_putweburl(){
    var taguri='';var curzoom=map.getZoom();if(curzoom<-3){
        curzoom=3;map.setZoom(curzoom)
        }var myw=_px(_ge('tn_area').style.width);var myh=_px(_ge('tn_area').style.height);myw=parseFloat(myw);myh=parseFloat(myh);var myl=_px(_ge('tn_area').style.left);var myt=_px(_ge('tn_area').style.top);myt=parseFloat(myt);myl=parseFloat(myl);var mycx=Math.round(myl+myw/2);var mycy=Math.round(myt+myh/2);pix_razniza();var myx=0;var myy=0;var xx=mycx+the_x*1;var yy=mycy+the_y*1;var pointa=map.fromDivPixelToLatLng(new GPoint(xx,yy)).toString();var re1=/([\d\.\-]+), ?([\d\.\-]+)/im;coord1=re1.exec(pointa);coord1[2]=Math.round(coord1[2]*10000000)/10000000;coord1[1]=Math.round(coord1[1]*10000000)/10000000;if(tagfilter)taguri="&tag="+tagfilter;if(vtype>0)taguri+='&v='+vtype;_ge("urlchangew").innerHTML='lat='+coord1[1]+'&lon='+coord1[2]+'&z='+curzoom+'&l='+lng+'&ifr=1&m='+mtype+taguri+'&quot; width=&quot;'+myw+'&quot; height=&quot;'+myh+'&quot;';_ge("add_line").style.width=_ge("add_line").style.width;return
}function jwindow3_mover(fromt,obj,e){
    if(typeof timerOFF!=_un&&jmenustate==1){
        window.clearTimeout(timerOFF);if(jwindow3mmstore!=fromt&&fromt>1){
            jwindow3_menu(fromt,obj,e)
            }
        }else{
        if(typeof fromt==_un)fromt=2;jwindow3_menu(fromt,obj,e)
        }
    }function jwindow3_mout(o){
    if(typeof o!=_un&&jmenustate==1){
        if(o==1){
            timerOFF=window.setTimeout(function(){
                jwindow3_menu(1)
                },5500)
            }return
    }if(jmenustate==1)timerOFF=window.setTimeout(function(){
        jwindow3_menu(1)
        },900)
    }function jwindow3_m_bgon(obj,thiscolor){
    if(typeof thiscolor==_un)thiscolor='#ffffff';if(obj.style.background)flphoar[15]=obj.style.background;obj.style.background=thiscolor
    }function jwindow3_m_bgoff(obj){
    if(flphoar[15]){
        obj.style.background=flphoar[15];flphoar[15]=''
        }else{
        obj.style.background=''
        }
    }function checkEnter(e,from){
    var fromt;if(e&&e.which){
        e=e;fromt=e.which
        }else{
        if(typeof event==_un)return true;e=event;fromt=e.keyCode
        }if(fromt==13){
        if(typeof from!=_un){
            if(from==1){
                post_reg(1);return false
                }
            }else{
            jwindow3_dosearch5('')
            }return false
        }else{
        return true
        }
    }function post_after(data){
    _ge("putpost").innerHTML=data
    }function getAbsLeft(o){
    oLeft=o.offsetLeft;while(o.offsetParent!=null){
        oParent=o.offsetParent;oLeft+=oParent.offsetLeft;o=oParent
        }return oLeft
    }function zinka(o){
    if(o==1){
        jevals+='zinka(3);'
        }else if(o==2){
        jevals+='zinka(4);'
        }else if(o==3){
        jzinchange=1;_ge('jwindow').style.zIndex=155000;_ge('jwindow3_body').style.zIndex=150000
        }else if(o==4){
        jzinchange=2;_ge('jwindow').style.zIndex=150000;_ge('jwindow3_body').style.zIndex=155000
        }
    }function getAbsTop(o){
    oTop=o.offsetTop;while(o.offsetParent!=null){
        oParent=o.offsetParent;oTop+=oParent.offsetTop;o=oParent
        }return oTop
    }function StringBuffer(){
    this.buffer=[]
    }StringBuffer.prototype.append=function append(string){
    this.buffer.push(string);return this
    };StringBuffer.prototype.toString=function toString(){
    return this.buffer.join("")
    };var hex=new Array("0","1","2","3","4","5","6","7","8","9","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z");function de(N,radix){
    var s=new StringBuffer();var A=N;while(A>=radix){
        B=A%radix;A=Math.floor(A/radix);s.append(hex[B])
        }s.append(hex[A]);return tr(s.toString())
    }function tr(s){
    var N=s.length;var t="";for(var i=0;i<N;i++)t=t+s.substring(N-i-1,N-i);s=t;return s
    }var logs=new Array();logs['username']=0;logs['pass']=0;function change_but(id,type,mass,flag){
    if(type!=1)type='';if(mass){
        var flag=1;var val;for(var val in mass){
            if((typeof(mass[val])==_un)||(mass[val]==0)){
                flag=0;break
            }
            }
        }if(flag){
        _ge(id).className='button'+type;_ge(id).disabled=0
        }else{
        _ge(id).className='disbutton'+type
        }
    }function post_reg(from){
    var url='/sys/user/?';if(from==0){
        url+='register=2'
        }else if(from==1){
        url+='login=2'
        }else if(from==2){
        url+='logout=1'
        }else if(from==3){
        url+='forgot=2'
        }else if(from==4){
        url+='info_user=2'
        }doafterxmlget='jwindow("",0,0,xmlhttp.responseText);';loadXML(url,'reguser','');jwindow('',0,0,loadimg,3)
    }function printex(deci){
    var buf=new StringBuffer();buf.append('<table class=ctable><tr>');var t3='';for(var n in deci){
        if(deci[n]==-1){
            buf.append("<tr>");continue
        }var t1=de(deci[n],2);var t2=t1.length;var t4=22-t2;if(t4>0){
            for(var i=0;i<t4;i++){
                buf.append("0")
                }
            }buf.append(t1)
        }buf.append('</table>');return buf.toString().replace(/(\d)/g,'<td class="c$1"></td>')
    }tgl=new Array();tgln=new Array();function togDiv(nameit1){
    var nameit=nameit1.parentNode.childNodes.item(0);if(typeof nameit1.parentNode.sourceIndex==_un){
        nameit1.parentNode.sourceIndex=Math.round((9999999)*Math.random())
        };var ind=nameit1.parentNode.sourceIndex;if(typeof tgl[ind]==_un){
        tgl[ind]=0
        }if(tgl[ind]==1){
        tgl[ind]=0;x=_no;nameit1.innerHTML=tgln[ind]
        }else{
        tgl[ind]=1;x='inline';tgln[ind]=nameit1.innerHTML;nameit1.innerHTML='<<< hide'
        }nameit.style.display=x
    }var tcatcol=10;function tcats_init(o){
    if(o==0){
        flphoar[17]='';if(!flphoar[16]||flphoar[16]==17)flphoar[16]=1;var fromt='';for(var kvid in ar_tcats_sec[0]){
            var fromt1='ONMOUSEOUT="jwindow3_m_bgoff(this);" ONMOUSEOVER=if(flphoar[16]!='+ar_tcats_sec[0][kvid]+'){jwindow3_m_bgon(this,"#f7f7f7");}else{flphoar[15]=_clr[0];}';var spar='';if(flphoar[16]==ar_tcats_sec[0][kvid])spar='background:'+_clr[0]+';';fromt+='<div style="color:#444;font-size:12px;padding:1px;border:1px solid #ccc;cursor:pointer;font-weight:bold;'+spar+'" onclick="flphoar[16]='+ar_tcats_sec[0][kvid]+';tcats_init(3);tcats_init(1);" '+fromt1+'>&nbsp;'+ar_tcats[ar_tcats_sec[0][kvid]]+'<span class=nan>'+ar_tcats_sec[0][kvid]+'</span></div>'
            }var spar='';if(flphoar[16]==17)spar='background:'+_clr[0]+';';fromt+='<div style="font-weight:bold;color:#444;font-size:12px;border:1px solid #ccc;cursor:pointer;'+spar+'" '+fromt1+' onclick="flphoar[16]=17;tcats_init(3);tcats_init(1);">&nbsp;Search <input onmousemove="tcats_search()" onchange="tcats_search()" onKeyDown="tcats_search()" onKeyUp="tcats_search()" onKeyPress="tcats_search();if (!checkEnter(event,2)) {return false;}" type="text" id="searchtcats"><span class=nan>17</span></div>';_ge('tcats_section').innerHTML=fromt;tcats_init(1);if(_ge('wikiedit').tcats_filter){
            if(tagfilter)ar_tcats_cur[1][tagfilter+'i']=tagfilter
                }tcats_init(2)
        }else if(o==11){
        var fromt='';var fromt1='ONMOUSEOUT="jwindow3_m_bgoff(this);this.childNodes.item(0).childNodes.item(0).childNodes.item(0).childNodes.item(1).childNodes.item(0).childNodes.item(0).style.display=_no;" ONMOUSEOVER="jwindow3_m_bgon(this);this.childNodes.item(0).childNodes.item(0).childNodes.item(0).childNodes.item(1).childNodes.item(0).childNodes.item(0).style.display=_bk;"';for(var kvid in ar_tcats_sec[flphoar[16]]){
            fromt+='<div style="width:100%;border:1px solid #ccc;background: #eee;" '+fromt1+'><table width="100%" border=0 cellspacing=0 cellpadding=0 style="color:#444;font-size:12px;"><tr><td width="1%" height=16>&nbsp;'+ar_tcats[ar_tcats_sec[flphoar[16]][kvid]].replace(/ /g,'&nbsp;')+'&nbsp;&nbsp;</td><td width="1%"><span><span class="button nan" style="cursor:pointer;" onclick="tcats_upd(1,'+ar_tcats_sec[flphoar[16]][kvid]+');">add</span></span></td><td width="99%">&nbsp;</td></tr></table></div>'
            }if(!fromt)fromt='<center class=tagscl>Type first letters of the category to start searching...</center>';_ge('tcats_list').innerHTML=fromt
        }else if(o==2){
        var fromt='';var fromt1='ONMOUSEOUT="this.childNodes.item(1).style.display=_no;this.childNodes.item(0).style.fontWeight=\'\';" ONMOUSEOVER="this.childNodes.item(1).style.display=_in;this.childNodes.item(0).style.fontWeight=\'bold\';"';for(var i=0;i<2;i++){
            for(var kvid in ar_tcats_cur[i]){
                if(!ar_tcats_cur[2][kvid]){
                    if(fromt)fromt+=', ';fromt+='<span '+fromt1+'><span>'+ar_tcats[ar_tcats_cur[i][kvid]].replace(/ \(\d+\)/,'').replace(/ /g,'&nbsp;')+'</span><span class="button nan" style="margin-left:3px;cursor:pointer;" onclick="tcats_upd(2,'+ar_tcats_cur[i][kvid]+');">'+localization['jsi_removebut']+'</span></span>'
                    }
                }
            }fromt1="<span id=\"add_tag_button\">";if(fromt)fromt1+=', ';fromt+=fromt1+"<span  style=\"color: #00e; cursor:pointer;\" onclick=\"_ge('new_tcats').style.display=_bk;_ge('searchtcatsdiv').style.display=_bk;_ge('add_tag_button').style.display=_no;\">"+localization['jsi_addcat']+"</span></span>";if(!fromt)fromt='--';fromt='<span style="font-size:11px;"><b>'+localization['jsi_cats']+':</b> '+fromt+'</span>';_ge('tcats_place').innerHTML=fromt
        }else if(o==22){
        var fromt='';var fromt1='ONMOUSEOUT="jwindow3_m_bgoff(this);this.childNodes.item(0).childNodes.item(0).childNodes.item(0).childNodes.item(1).childNodes.item(0).childNodes.item(0).style.display=_no;" ONMOUSEOVER="jwindow3_m_bgon(this,_clr[1]);this.childNodes.item(0).childNodes.item(0).childNodes.item(0).childNodes.item(1).childNodes.item(0).childNodes.item(0).style.display=_bk;"';for(var i=0;i<2;i++){
            for(var kvid in ar_tcats_cur[i]){
                if(!ar_tcats_cur[2][kvid])fromt+='<div style="color:#444;font-size:11px;width:100%;border:1px solid #ccc;" '+fromt1+'><table width="100%" border=0 cellspacing=0 cellpadding=0 style="color:#444;font-size:12px;"><tr><td width="1%" height="16">&nbsp;'+ar_tcats[ar_tcats_cur[i][kvid]].replace(/ /g,'&nbsp;')+'&nbsp;&nbsp;</td><td width="1%"><span><span class="button nan" style="cursor:pointer;" onclick="tcats_upd(2,'+ar_tcats_cur[i][kvid]+');">delete</span></span></td><td width="99%">&nbsp;</td></tr></table></div>'
                    }
            }if(!fromt)fromt='<center class=tagscl>Choose wanted category and press add button.</center>';_ge('tcats_place').innerHTML=fromt
        }else if(o==3){
        for(var i=0;i<11;i++){
            if(_ge('tcats_section').childNodes.item(i)){
                _ge('tcats_section').childNodes.item(i).style.background="";if(_ge('tcats_section').childNodes.item(i).lastChild.innerHTML==flphoar[16]){
                    _ge('tcats_section').childNodes.item(i).style.background=_clr[0];flphoar[15]=_clr[0]
                    }
                }
            }
        }else if(o==55){
        var fromt='<table border=0 cellspacing=2 cellpadding=0 width="100%"><tr>';for(var i=0;i<3;i++){
            fromt+='<td valign=top width="33%">';for(var i1=3*i+2;i1<3*i+5;i1++){
                if(!ar_tcats_sec[i1])continue;fromt+='<table border=0 cellspacing=0 cellpadding=0 width="100%"><tr><td class=smcl colspan=2>'+ar_tcats[i1]+'</td></tr>';for(var kvid in ar_tcats_sec[i1]){
                    var from1='';if(ar_tcats_ico[ar_tcats_sec[i1][kvid]+'i']){
                        from1='<img  src="/mapico/'+putgen10(ar_tcats_ico[ar_tcats_sec[i1][kvid]+'i'].toString())+'.png" border=0 heigh=14 width=14>'
                        }fromt+='<tr class="menu3" valign="center" onclick="" ONMOUSEOUT="jwindow3_m_bgoff(this);" ONMOUSEOVER="jwindow3_m_bgon(this, _clr[0]);"><td width=16 height=18>'+from1+'</td><td>'+ar_tcats[ar_tcats_sec[i1][kvid]]+'</td></tr>'
                    }fromt+='</table>'
                }fromt+='</td>'
            }fromt+='</tr></table>';fromt+='<div style="font-weight:bold;color:#444;font-size:14px;border:0px solid #ccc;cursor:pointer;'+spar+'" '+fromt1+' onclick="flphoar[16]=17;tcats_init(3);tcats_init(1);">&nbsp;Search <input onmousemove="tcats_search()" onchange="tcats_search()" onKeyDown="tcats_search()" onKeyUp="tcats_search()" style="width:400px;" onKeyPress="tcats_search();if (!checkEnter(event,2)) {return false;}" type="text" id="searchtcatsnew"><span class=nan>17</span></div>';_ge('new_tcats').innerHTML=fromt
        }else if(o==7){
        if(!_ge('searchtcatsnew'))return;if(_ge('searchtcatsnew').value=='')flphoar[17]='';if(_ge('searchtcatsnew').focused==1)return;if(_ge('searchtcatsnew').value=='')_ge('searchtcatsnew').value=localization['default_search']
            }else if(o==8){
        if(!_ge('searchtcatsnew'))return;if(ar_tcats_sec[20]!=ar_tcats_sec[17]){
            ar_tcats_sec[20]=ar_tcats_sec[17]
            }else{
            return
        }var fromt='';for(var i1=0;i1<15;i1++){
            var y='&nbsp;';var x='-';if(!ar_tcats_sec[17][i1]){
                if(i1==0&&ar_tcats_sec[17].length==0)x=localization['no_matches'];_gec("jwindow3_menu").childNodes.item(0).childNodes.item(0).childNodes.item(i1).childNodes.item(0).innerHTML=y;_gec("jwindow3_menu").childNodes.item(0).childNodes.item(0).childNodes.item(i1).childNodes.item(1).innerHTML=x;_gec("jwindow3_menu").childNodes.item(0).childNodes.item(0).childNodes.item(i1).onmouseover=function(){};_gec("jwindow3_menu").childNodes.item(0).childNodes.item(0).childNodes.item(i1).onmouseout=function(){};continue
            }x='';var kvid=i1;if(ar_tcats[ar_tcats_sec[17][kvid]]){
                y=ar_tcats[ar_tcats_sec[17][kvid]];y=y.replace(/(\(\d+\))/,"<span class='s4' style='color:#999'>$1</span>")
                }else{}if(ar_tcats_ico[ar_tcats_sec[17][kvid]+'i']){
                var b='/mapico/'+putgen10(ar_tcats_ico[ar_tcats_sec[17][kvid]+'i'].toString())+'.png';if(!imcache[b]){
                    imcache[b]=new Image();imcache[b].src=b
                    }x=imprint(b,14,14)
                }_gec("jwindow3_menu").childNodes.item(0).childNodes.item(0).childNodes.item(i1).childNodes.item(0).innerHTML=x;_gec("jwindow3_menu").childNodes.item(0).childNodes.item(0).childNodes.item(i1).childNodes.item(1).innerHTML=y;_gec("jwindow3_menu").childNodes.item(0).childNodes.item(0).childNodes.item(i1).onmouseover=function(){
                try{
                    jwindow3_m_bgon(this)
                    }catch(e){}
                };_gec("jwindow3_menu").childNodes.item(0).childNodes.item(0).childNodes.item(i1).onmouseout=function(){
                try{
                    jwindow3_m_bgoff(this)
                    }catch(e){}
                }
            }jwin_mb()
        }else if(o==5||o==1){
        if(!_ge('searchtcatsnew'))return;if(ar_tcats_sec[20]!=ar_tcats_sec[17]){
            ar_tcats_sec[20]=ar_tcats_sec[17]
            }else{
            return
        }var fromt='<table border=0 cellspacing=2 cellpadding=0 width="100%"><tr>';for(var i=0;i<3;i++){
            fromt+='<td valign=top width="33%">';fromt+='<table border=0 cellspacing=0 cellpadding=0 width="100%">';for(var i1=tcatcol*i;i1<tcatcol*i+tcatcol;i1++){
                var y='&nbsp;';var x='-';if(!ar_tcats_sec[17][i1]){
                    if(i1==0&&ar_tcats_sec[17].length==0)x=localization['no_matches'];fromt+='<tr style="font-size:11px;color:#999"><td height=18 width=16>'+y+'</td><td>'+x+'</td></tr>';continue
                }x='';var kvid=i1;if(ar_tcats[ar_tcats_sec[17][kvid]]){
                    y=ar_tcats[ar_tcats_sec[17][kvid]];y=y.replace(/(\(\d+\))/,"<span style='color:#999'>$1</span>")
                    }else{}if(ar_tcats_ico[ar_tcats_sec[17][kvid]+'i']){
                    var b='/mapico/'+putgen10(ar_tcats_ico[ar_tcats_sec[17][kvid]+'i'].toString())+'.png';if(!imcache[b]){
                        imcache[b]=new Image();imcache[b].src=b
                        }x=imprint(b,14,14)
                    }fromt+='<tr style="font-size:11px;cursor:pointer;color:#555" valign="center" onclick="tcats_upd(1,'+ar_tcats_sec[17][kvid]+');_ge(\'new_tcats\').style.display=_no;_ge(\'searchtcatsdiv\').style.display=_no;_ge(\'add_tag_button\').style.dispaly=\'inline\';" ONMOUSEOUT="jwindow3_m_bgoff(this);" ONMOUSEOVER="jwindow3_m_bgon(this, _clr[0]);"><td width=16 height=18>'+x+'</td><td>'+y+'</td></tr>'
                }fromt+='</table>';fromt+='</td>'
            }fromt+='</tr></table>';_ge('new_tcats').innerHTML=fromt
        }
    }function tcats_upd(o,fromt){
    if(o==1){
        if(!ar_tcats_cur[0][fromt+'i']){
            fromt1=0;for(var kvid in ar_tcats_cur[0]){
                if(!ar_tcats_cur[2][kvid])fromt1++
            }for(var kvid in ar_tcats_cur[1]){
                if(!ar_tcats_cur[2][kvid])fromt1++
            }if(_ge('wikiedit').tcats_filter){
                if(fromt1>0){
                    ar_tcats_cur[1]={}
                    }
                }else{
                if(fromt1>10)return
            }ar_tcats_cur[1][fromt+'i']=fromt
            }if(ar_tcats_cur[2][fromt+'i'])delete ar_tcats_cur[2][fromt+'i']
    }else if(o==2){
        if(ar_tcats_cur[0][fromt+'i'])ar_tcats_cur[2][fromt+'i']=fromt;if(ar_tcats_cur[1][fromt+'i'])delete ar_tcats_cur[1][fromt+'i']
    }fromt='';for(var kvid in ar_tcats_cur[1]){
        fromt+=ar_tcats_cur[1][kvid]+' '
        }if(fromt){
        _ge('wikiedit').tcats_add.value=fromt;is_changed++
    }fromt='';for(var kvid in ar_tcats_cur[2]){
        fromt+=ar_tcats_cur[2][kvid]+' '
        }if(fromt){
        _ge('wikiedit').tcats_del.value=fromt;is_changed++
    }tcats_init(2)
    }function tcats_search(obj,a){
    if(!_ge('searchtcatsnew'))return;if(!a){
        var a=0
        }else{
        flphoar[25]=_ge('searchtcatsnew').value
        }var o=encodeURIComponent(_ge('searchtcatsnew').value);if(o.length<1){
        flphoar[17]='';flphoar[25]='';if(a){
            ar_tcats_sec[17]=ar_tcats_sec[19];tcats_init(8)
            }else{
            ar_tcats_sec[17]=ar_tcats_sec[18];tcats_init(1)
            }return true
        }if(!obj){
        if(flphoar[18])window.clearTimeout(flphoar[18]);flphoar[18]=window.setTimeout('tcats_search(1,'+a+')',450);if(_ge('searchtcatsnew').value==localization['default_search']&&_ge('searchtcatsnew').focused==1)_ge('searchtcatsnew').value='';return
    }else{}if(!_ge('searchtcatsnew')||_ge('searchtcatsnew').value==localization['default_search'])return;if(flphoar[17]==o)return true;flphoar[17]=o;if(a)o+="&sm=1";fast('/sys/tcats_fn/?search_tcat='+o)
    }function tcat_filter_go(){
    var a=0;for(var kvid in ar_tcats_cur[1]){
        a++;if(tagfilter!=ar_tcats_cur[1][kvid]){
            tagfilter=ar_tcats_cur[1][kvid];vtype=0;update_objects(1)
            }
        }if(a==0&&tagfilter){
        tagfilter=0;update_objects(1)
        }
    }function putgen10(v){
    v=v.toString();while(v.length<10){
        v="0"+v
        }return v.substring(0,2)+"/"+v.substring(2,4)+"/"+v.substring(4,6)+"/"+v.substring(6,8)+"/"+v.substring(8,10)
    }document.onkeydown=keystake;function keystake(event){
    if(!document.getElementById)return;if(window.event)event=window.event;switch(event.keyCode?event.keyCode:event.which?event.which:null){
        case 27:if(jwindowstate==3){
            if(no_close_ext&&is_changed){
                return
            }jwindow_close();return
        }if(pprevlip!=null){
            cancelprev(1)
            }if(vtype==6){
            cancelpline()
            }break
        }
    }function menuGetClassNameFromImageName(imageName){
    var prefix='spt-';var pathParts=imageName.split('/');if(pathParts[1]=='mapico'||pathParts[0]=='mapico'){
        var imageName=pathParts.pop();var dir=pathParts.pop();return prefix+dir+'-'+imageName.split('.').shift()
        }else{
        return prefix+pathParts.pop().split('.').shift()
        }
    }function mmenuline(a,b,f,c,d,e){
    if(f)f=imprint('/img/menu/'+f,16,16);if(b)b+='return false;';if(!f)f='';if(!c)c='';if(!d)d='';if(!e)e='';return'<div ONMOUSEOUT="jwindow3_m_bgoff(this);'+e+'" ONMOUSEOVER="jwindow3_m_bgon(this);'+d+'" onclick="'+b+'" '+c+'><table border=0 cellspacing=0 cellpadding=0 class="addblbut nwp s3"><tr align="center"><td align=center>'+f+'</td><td  class="nwp">&nbsp;'+a+'&nbsp;</td></tr></table></div>'
    }var imcache={};imcache['/img/000.png']=new Image();imcache['/img/000.png'].src='/img/000.png';imcache['/img/menu/menu-spt.png']=new Image();imcache['/img/menu/menu-spt.png'].src='/img/menu/menu-spt.png';function menucreate(o){
    if(o.length==0){
        flphoar[23]='';return
    }var txt=new StringBuffer();txt.append('<table cellspacing=0 border=0 cellpadding=0 onmousemove="if(timerOFF){window.clearTimeout(timerOFF);timerOFF=0;}">');for(var i=0;i<o.length;i++){
        if(o[i]==1){
            txt.append("<tr><td colspan=2>"+_mmline+"</div></div></td></tr>")
            }else{
            var from='white-space:nowrap;font-size:12px;color:#F51A1A;padding:2px;font-weight:bold;';if(!o[i][4]&&o[i][2])o[i][2]+='jwindow3_menu(1);';var from1='ONMOUSEOUT="try{jwindow3_m_bgoff(this);}catch(e){}" ONMOUSEOVER="try{jwindow3_m_bgon(this);}catch(e){}"';if(!o[i][2]){
                from+="cursor:default;";from1=''
                }else{
                from+='cursor:pointer;'
                }if(!o[i][5])o[i][5]=16;if(!o[i][6])o[i][6]=16;if(o[i][1]){
                if(is_ie&&is_old){
                    if(!imcache[o[i][1]]){
                        imcache[o[i][1]]=new Image();imcache[o[i][1]].src=o[i][1]
                        }
                    }o[i][1]=imprint(o[i][1],o[i][5],o[i][6])
                }else{
                if(o[i][7])o[i][1]=o[i][7]
                    }txt.append('<tr onclick="'+o[i][2]+'" '+from1+'><td width=23 height=22 align=center>'+o[i][1]+'</td><td style="'+from+'">'+o[i][0]+'&nbsp;</td></tr>')
            }
        }txt.append("</div>");flphoar[23]=txt.toString()
    }function imprint(a,b,c){
    if(is_ie&&is_old){
        a='<img src="/img/blank.gif" border=0 height='+b+' width='+c+' style="width:'+c+'px;height:'+b+'px;filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='+_sq+a+_sq+', sizingMethod='+_sq+'scale'+_sq+');" >'
        }else{
        var isAbsolutePath=(a.split('/')[0]=='http:');if(isAbsolutePath){
            a='<img src="'+a+'" border=0 height='+b+' width='+c+'>'
            }else{
            var className=menuGetClassNameFromImageName(a);a='<div class="menu-spt s16x16 '+className+'"></div>'
            }
        }return a
    }function catslotcl(a){
    if(!chknotsvall(40)||!ar_tcats_sec[17][a]){
        return
    }show_binf();tagfilter=ar_tcats_sec[17][a];vtype=0;otype=0;update_objects(1);update_uri()
    }var ar_tcats=[];var ar_tcats_ico={};var ar_tcats_sec=[];catsloc_load();ar_tcats_sec[19]=[949,203,4979,88,17,74,164,50,194,44605,287,332,1507,44607,516,27,84,6644,44607,516];flphoar[25]='';_mmline="<div style='overflow:hidden;width:100%;height:1px;background-color:#888;'></div>";function mmenuprep(i,a,b,c,d,e){
    var o=[];if(i==2){
        o.push([localization['menu_home'],'/img/menu/menu_03_03.png','del_all_obj();loadd(1);']);o.push([localization['menu_map_on_your_page'],'/img/menu/menu_03_13.png','jwindow3_webmasters();']);o.push([localization['jsi_menu_docs'],'/img/menu/menu_03_15.png',"window.open('/wiki/');"]);o.push([localization['menu_forum'],'/img/menu/menu_03_18.png',"window.open('/forum/');"]);o.push([localization['jsi_dismeas'],'/img/menu/menu_02_17.png',"if(!chknotsvall(19)){return false;}loadjs('polynew.js');loadjs('geotools.js','if(is_addfn){cancelpoly();}mesdist();');"]);if(uid==10||uid==7){
            a='';if(otype==1)a=" <span style='color:#ccc'>&bull;</span>";o.push(['Hotel booking '+a,'/img/houseico.png',"if (vtype!=6){otype=1;vtype=0;}else{return;};tagfilter=0;updmap();update_objects(1);"])
            }
        }else if(i==3){
        var a='';o.push(["<span style='font-size:10px;color:#ccc'>Wikimapia</span>",'','',0,1]);a='';if(mtype==jmtype1[5])a=" <span style='color:#ccc'>&bull;</span>";o.push([localization['jsi_mtype_map']+a,'/img/menu/menu_03_24.png',"mtype=jmtype1[5];vtype=0;updmap();mmenuprep(3);_gec('jwindow3_menu').innerHTML=flphoar[23];jwin_mb();update_objects(1);",0,0]);a='';if(mtype==jmtype1[6]&&(vtype==1||vtype==0))a=" <span style='color:#ccc'>&bull;</span>";o.push([localization['jsi_mtype_satellite']+a,'/img/menu/menu_03_27.png',"mtype=jmtype1[6];if (vtype!=6){vtype=0;}updmap();mmenuprep(3);_gec('jwindow3_menu').innerHTML=flphoar[23];jwin_mb();update_objects(1);",0,0]);a='';if(mtype==jmtype1[6]&&vtype==8)a=" <span style='color:#ccc'>&bull;</span>";o.push([localization['jsi_mtype_satellite']+" + old places "+a,'/img/menu/menu_03_27.png',"mtype=jmtype1[6];if (vtype!=6){vtype=8;}otype=0;updmap();mmenuprep(3);_gec('jwindow3_menu').innerHTML=flphoar[23];jwin_mb();update_objects(1);",0,0]);o.push(1);o.push(["<span style='font-size:10px;color:#ccc'>"+localization['jsi_alt_source']+"</span>",'','',0,0]);a='';if(mtype==jmtype1[1])a=" <span style='color:#ccc'>&bull;</span>";o.push([localization['jsi_g_map']+a,'/img/menu/menu_03_31.png',"mtype=jmtype1[1];if (vtype!=6 && !otype){_poff();vtype=0;};updmap();mmenuprep(3);_gec('jwindow3_menu').innerHTML=flphoar[23];jwin_mb();",0,0,15,15]);a='';if(mtype==jmtype1[2])a=" <span style='color:#ccc'>&bull;</span>";o.push([localization['jsi_g_hyb']+a,'/img/menu/menu_03_34.png',"mtype=jmtype1[2];if (vtype!=6 && !otype){_poff();vtype=0;};updmap();mmenuprep(3);_gec('jwindow3_menu').innerHTML=flphoar[23];jwin_mb();",0,0]);a='';if(mtype==jmtype1[3]&&vtype!=9&&vtype!=4)a=" <span style='color:#ccc'>&bull;</span>";o.push([localization['jsi_g_sat']+a,'/img/menu/menu_03_39.png',"mtype=jmtype1[3];if (vtype!=6 && !otype){_poff();vtype=0;};updmap();mmenuprep(3);_gec('jwindow3_menu').innerHTML=flphoar[23];jwin_mb();",0,0]);a='';if(mtype==jmtype1[4])a=" <span style='color:#ccc'>&bull;</span>";o.push([localization['jsi_g_ter']+a,'/img/menu/menu_03_42.png',"mtype=jmtype1[4];if (vtype!=6 && !otype){_poff();vtype=0;};updmap();mmenuprep(3);_gec('jwindow3_menu').innerHTML=flphoar[23];jwin_mb();",0,1]);localization['jsi_g_pan']='Google panoramio';a='';if(mtype==jmtype1[8])a=" <span style='color:#ccc'>&bull;</span>";o.push([localization['jsi_g_pan']+a,'/img/menu/menu_03_39.png',"if(!chknotsvall(0)){return false;}if(mtype!=jmtype1[8] || vtype!=1){_poff();vtype=0;}mtype=jmtype1[8];updmap();mmenuprep(3);_gec('jwindow3_menu').innerHTML=flphoar[23];",0,0]);if(lvl>0){
            localization['jsi_del_pl']='Deleted places';localization['jsi_source_other']='Other';o.push(1);o.push(["<span style='font-size:10px;color:#ccc'>"+localization['jsi_source_other']+"</span>",'','',0,0]);a='';if(vtype==4)a=" <span style='color:#ccc'>&bull;</span>";o.push([localization['jsi_del_pl']+a,'/img/menu/menu_03_39.png',"if(!chknotsvall(0)){return false;}if (vtype!=4){_poff();vtype=4;update_objects(1);}mtype=jmtype1[3];updmap();mmenuprep(3);_gec('jwindow3_menu').innerHTML=flphoar[23];",0,0])
            }a='';if(mtype==jmtype1[3]&&vtype==9)a=" <span style='color:#ccc'>&bull;</span>";o.push(['Wikimapia Classic '+a,'/img/menu/menu_03_27.png',"mtype=jmtype1[3];if (vtype!=6){vtype=9;}updmap();mmenuprep(3);_gec('jwindow3_menu').innerHTML=flphoar[23];jwin_mb();update_objects(1);",0,0]);if(testserv){
            o.push(1);a='';if(_dbmap==0)a=" <span style='color:#ccc'>&bull;</span>";o.push(['Main Wikimapia'+a,'/img/menu/menu_03_24.png',"if(!_dbon){debugrun();};_dbmap=0;cc1(2);",0,1]);a='';if(_dbmap==1)a=" <span style='color:#ccc'>&bull;</span>";o.push(['Test LNK'+a,'/img/menu/menu_03_24.png',"if(!_dbon){debugrun();};_dbmap=1;cc1(2);",0,1]);a='';if(_dbmap==2)a=" <span style='color:#ccc'>&bull;</span>";o.push(['Test Kashey'+a,'/img/menu/menu_03_24.png',"if(!_dbon){debugrun();};_dbmap=2;cc1(2);",0,1]);a='';if(_dbmap==3)a=" <span style='color:#ccc'>&bull;</span>";o.push(['Kashey i0'+a,'/img/menu/menu_03_24.png',"if(!_dbon){debugrun();};_dbmap=3;cc1(2);",0,1])
            }
        }else if(i==1){
        o.push([localization['add_place'],'/img/menu/menu_03_44.png',"if(!chknotsvall(0)){return false;}loadjs('polynew.js','addplacefn();');if (jwindow3state==1) {jwindow3_hide_x(3);}"]);o.push(1);o.push(["<span style='font-size:10px;color:#ccc'>"+localization['jsi_transport']+"</span>",'','']);o.push([localization['jsi_road'],'/img/menu/menu_03_46.png',"if(!chknotsvall(20)){return false;}if(jsar['roadsnew.js']==2){changeltype(0);}else{ltype=0;}jtgoff(6);"]);o.push([localization['jsi_railroad'],'/img/menu/menu_03_50.png',"if(!chknotsvall(21)){return false;}if(jsar['roadsnew.js']==2){changeltype(1);}else{ltype=1;}jtgoff(6);"]);o.push([localization['jsi_ferry'],'/img/menu/menu_03_52.png',"if(!chknotsvall(22)){return false;}if(jsar['roadsnew.js']==2){changeltype(2);}else{ltype=2;}jtgoff(6);"]);o.push([localization['jsi_river'],'/img/menu/menu_03_57.png',"if(!chknotsvall(23)){return false;}if(jsar['roadsnew.js']==2){changeltype(10);}else{ltype=10;}jtgoff(6);"]);o.push(1);if(lvl>0){
            o.push(["<span style='font-size:10px;color:#ccc'>"+localization['jsi_patches']+"</span>",'',""]);o.push([localization['jsi_water'],'/img/menu/menu_03_60.png',"if(!chknotsvall(2)){return false;}flphoar[37]=mtype;mtype=jmtype1[6];wikihybbnd();loadjs('polynew.js','flphoar[27]=2;addplacefn();');if (jwindow3state==1) {jwindow3_hide_x(3);}"]);o.push([localization['jsi_land'],'/img/menu/menu_03_03a.png',"if(!chknotsvall(3)){return false;}flphoar[37]=mtype;mtype=jmtype1[6];wikihybbnd();loadjs('polynew.js','flphoar[27]=3;addplacefn();');if (jwindow3state==1) {jwindow3_hide_x(3);}"])
            }
        }else if(i==44){
        o=1
        }else if(i==7){
        o[0]=["English",'',"if (lng!=0){lng=0;clear_cache(1);newload(1);fast('/sys/chooselange/?chosen1=0');updmap();}",0,0,0,0,"<span style='white-space:nowrap;font-size:10px;color:#bbb;'>EN</span>"];if(_aclng.length==1){
            if(navigator.language)_aclng[0]+=navigator.language+';';if(navigator.userLanguage)_aclng[0]+=navigator.userLanguage+';';if(navigator.systemLanguage)_aclng[0]+=navigator.systemLanguage+';';if(navigator.browserLanguage)_aclng[0]+=navigator.browserLanguage+';';var a={};for(var kvid in l_id)a[l_id[kvid]]=kvid;var regout=_aclng[0].match(/[^\w\-](\w\w)/g);if(regout){
                for(var i=0;i<regout.length;i++){
                    if(regout[i]){
                        regout[i]=regout[i].replace(/[^\w]/,'');if(a[regout[i]])_aclng.push(a[regout[i]])
                            }
                    }
                }
            }if(_aclng.length>1){
            var a=[];for(var i=1;i<_aclng.length;i++){
                if(_aclng[i]!=0&&!a[_aclng[i]]){
                    o.push([jlng[_aclng[i]],'',"if (lng!="+_aclng[i]+"){lng="+_aclng[i]+";clear_cache(1);newload(1);fast('/sys/chooselange/?chosen1="+_aclng[i]+"');}",0,0,0,0,"<span style='white-space:nowrap;font-size:10px;color:#bbb;'>"+l_id[_aclng[i]].toUpperCase()+"</span>"]);a[_aclng[i]]=1
                    }
                }
            }o.push([localization['jsi_more_lngs'],'/img/menu/iconlang.png',"jwindow('/sys/chooselange/?beta=1');"])
        }else if(i==4){
        var y=localization['default_search'];if(flphoar[25])y=flphoar[25];if(!flphoar[25]){
            ar_tcats_sec[17]=ar_tcats_sec[19];catsloc_load()
            }ar_tcats_sec[20]=ar_tcats_sec[17];for(var i1=0;i1<15;i1++){
            var y='-';var x='';var kvid=i1;if(!ar_tcats_sec[17][kvid]){
                if(kvid==0)y=localization['no_matches'];o[i1]=[y,'','',0,0];continue
            }if(ar_tcats[ar_tcats_sec[17][kvid]]){
                y=ar_tcats[ar_tcats_sec[17][kvid]];y=y.replace(/(\(\d+\))/,"<span class='s4' style='color:#999'>$1</span>")
                }else{}if(ar_tcats_ico[ar_tcats_sec[17][kvid]+'i']){
                x='/mapico/'+putgen10(ar_tcats_ico[ar_tcats_sec[17][kvid]+'i'].toString())+'.png'
                }o[i1]=[y,x,'catslotcl('+i1+');',0,0,14,14]
            }var y=localization['default_search'];if(flphoar[25])y=flphoar[25];o[15]=["<input onfocus='this.focused=1;tcats_search(null,1);' onblur='this.focused=0;tcats_init(7);' onmousemove='tcats_search(null,1)' onchange='tcats_search(null,1)' onKeyDown='tcats_search(null,1)' onKeyUp='tcats_search(null,1)' style='width:200px;' onKeyPress='tcats_search(null,1);if (!checkEnter(event,2)) {return false;}' type='text' id='searchtcatsnew' value='"+y.replace(/['"]/g,"\'")+"' >",'',""]
        }else if(i==5){
        if(uid){
            o[0]=[localization['jsi_profile'],'/img/menu/vcard.png',"jwindow('/sys/user/?profile=1');"];o[1]=[localization['jsi_newmsg'].replace(/%1/,flphoar[26]),'/img/menu/menu_02_06.png',"jwindow('/sys/msglist/?uid='+uid,0,0,'',1);"];o[2]=[localization['watchlist'],'/img/menu/menu_02_08.png',"loadjs('watchlist.js','jwindow3('+_sq+'/fn/user_watchlist.php'+_sq+',1);');"];o[3]=[localization['jsi_watchlist_countries'],'/img/menu/menu_02_08.png',"loadjs('watchlist.js','jwindow3('+_sq+'/fn/user_watchlist.php?country=999&type=999&mode=history'+_sq+',1);');"];o[4]=[localization['users_rank'],'/img/menu/menu_03_87.png',"jwindow('/sys/user_stats_sm/?username="+username+"',0,0,'',2);"];o[5]=[localization['logout_but'],'/img/menu/door_out.png',"jevals='newload();';jwindow('/user.php?logout=1');"]
            }else{
            o[0]=[localization['login'],'/img/menu/door_in.png',"jwindow('/sys/user/?login=1');"];o[1]=[localization['join_us'],'/img/testicon.jpg',"loadjs('user.js','jwindow('+_sq+'/sys/user/?register=1'+_sq+');');"]
            }o.push(1);o.push([localization['menu_map_on_your_page'],'/img/menu/menu_03_13.png','jwindow3_webmasters();']);o.push([localization['jsi_menu_docs'],'/img/menu/menu_03_15.png',"window.open('/wiki/');"]);o.push([localization['menu_forum'],'/img/menu/menu_03_18.png',"window.open('/forum/');"]);o.push([localization['jsi_dismeas'],'/img/menu/menu_02_17.png',"if(!chknotsvall(19)){return false;}loadjs('polynew.js');loadjs('geotools.js','if(is_addfn){cancelpoly();}mesdist();');"])
        }else if(i==52){
        o[0]=[localization['show_menu_history'].replace(/\(..\)/,''),'/img/menu/menu_03_100.png',"open_history("+a+","+b.lng+");"];o[1]=[localization['show_menu_add_language'],'/img/menu/menu_03_103.png',"jwindow('/sys/edit_wiki5/?id="+a+"&reqedit=1&old_lng="+b.lng+"');"];o[2]=[localization['show_menu_edit_page'],'/img/menu/menu_03_108.png',"jwindow('/sys/edit_wiki5/?id="+a+"&lng="+b.lng+"');"];o[3]=[localization['show_menu_photos'],'/img/menu/menu_03_110.png',"jwindow('/sys/photo/?id="+a+"&lng="+b.lng+"',0,0,'',1);"];o[4]=[localization['show_menu_delete'],'/img/menu/menu_03_120.png',"if (realconfirm(localization['jsi_delete_ask'])!=false) {fast('/sys/save4/?id="+a+"&do=del');}"]
        }else if(i==60){
        o[0]=[localization['show_menu_zoomin'],'/img/menu/menu_03_98.png',"jwindow_close();window.setTimeout('test_zoom("+b.x1+","+b.y1+","+b.x2+","+b.y2+","+b.zoom+");',50);"];o[1]=[localization['show_menu_history'].replace(/\(..\)/,''),'/img/menu/menu_03_100.png',"open_history("+a+","+b.lng+");"];o[2]=[localization['show_menu_add_language'],'/img/menu/menu_03_103.png',"jwindow('/sys/edit_wiki5/?id="+a+"&reqedit=1&old_lng="+b.lng+"');"];o[3]=[localization['show_menu_edit_page'],'/img/menu/menu_03_108.png',"jwindow('/sys/edit_wiki5/?id="+a+"&lng="+b.lng+"');"];o[4]=[localization['show_menu_photos'],'/img/menu/menu_03_110.png',"jwindow('/sys/photo/?id="+a+"&lng="+b.lng+"',0,0,'',1);"];o[5]=[localization['show_menu_polygon'],'/img/menu/menu_03_118.png',"mapttipc();loadjs('polynew.js','pre_poly_edit("+a+");');"];o[6]=[localization['show_menu_delete'],'/img/menu/menu_03_120.png',"if (realconfirm(localization['jsi_delete_ask'])!=false) {fast('/sys/save4/?id="+a+"&do=del');}"]
        }else if(i==61){
        o[0]=[localization['show_menu_history'].replace(/\(..\)/,''),'/img/menu/menu_03_100.png',"open_history("+a+","+b.lng+");"];o[1]=[localization['show_menu_add_language'],'/img/menu/menu_03_103.png',"jwindow('/sys/edit_wiki5/?id="+a+"&reqedit=1&old_lng="+b.lng+"');"];o[2]=[localization['show_menu_edit_page'],'/img/menu/menu_03_108.png',"jwindow('/sys/edit_wiki5/?id="+a+"&lng="+b.lng+"');"];o[3]=[localization['show_menu_photos'],'/img/menu/menu_03_110.png',"jwindow('/sys/photo/?id="+a+"&lng="+b.lng+"',0,0,'',1);"];o[4]=[localization['show_menu_delete'],'/img/menu/menu_03_120.png',"if (realconfirm(localization['jsi_delete_ask'])!=false) {fast('/sys/save4/?id="+a+"&do=del');}"];o[5]=[localization['jsi_pip_unbind_from_parent']||'Unbind from parent','/img/menu/menu_03_193.png',"if (realconfirm('Unbind fromp parent?')!=false) {fast('/sys/save4/?id="+a+"&do=unbind');}"]
        }else if(i==50){
        o[0]=[localization['show_menu_zoomin'],'/img/menu/menu_03_98.png',"jwindow_close();window.setTimeout('test_zoom("+b.x1+","+b.y1+","+b.x2+","+b.y2+","+b.zoom+");',50);"];o[1]=[localization['show_menu_history'].replace(/\(..\)/,''),'/img/menu/menu_03_100.png',"open_history("+a+","+b.lng+");"];o[2]=[localization['show_menu_add_language'],'/img/menu/menu_03_103.png',"jwindow('/sys/edit_wiki5/?id="+a+"&reqedit=1&old_lng="+b.lng+"');"];o[3]=[localization['show_menu_edit_page'],'/img/menu/menu_03_108.png',"jwindow('/sys/edit_wiki5/?id="+a+"&lng="+b.lng+"');"];o[4]=[localization['show_menu_photos'],'/img/menu/menu_03_110.png',"jwindow('/sys/photo/?id="+a+"&lng="+b.lng+"',0,0,'',1);"];o[5]=[localization['show_menu_polygon'],'/img/menu/menu_03_118.png',"mapttipc();loadjs('polynew.js','pre_poly_edit("+a+");');"];o[6]=[localization['show_menu_delete'],'/img/menu/menu_03_120.png',"if (realconfirm(localization['jsi_delete_ask'])!=false) {fast('/sys/save4/?id="+a+"&do=del');}"]
        }else if(i==53){
        o[0]=[localization['show_menu_zoomin'],'/img/menu/menu_03_98.png',"jwindow_close();window.setTimeout('test_zoom("+b.x1+","+b.y1+","+b.x2+","+b.y2+","+b.zoom+");',50);"];o[1]=[localization['show_menu_history'].replace(/\(..\)/,''),'/img/menu/menu_03_100.png',"open_history("+a+","+b.lng+");"]
        }else if(i==54){
        o[0]=[localization['show_menu_zoomin'],'/img/menu/menu_03_98.png',"jwindow_close();window.setTimeout('test_zoom("+b.x1+","+b.y1+","+b.x2+","+b.y2+","+b.zoom+");',50);"];o[1]=[localization['show_menu_history'].replace(/\(..\)/,''),'/img/menu/menu_03_100.png',"open_history("+a+","+b.lng+");"];o[2]=['Undelete','/img/menu/menu_03_118.png',"if (realconfirm('Sure you want to undelete?')!=false) {fast('/sys/save4/?id="+a+"&do=undel');}"]
        }else if(i==55){
        o[0]=[localization['show_menu_zoomin'],'/img/menu/menu_03_98.png',"jwindow_close();window.setTimeout('test_zoom("+b.x1+","+b.y1+","+b.x2+","+b.y2+","+b.zoom+");',50);"];o[1]=[localization['show_menu_history'].replace(/\(..\)/,''),'/img/menu/menu_03_100.png',"open_history("+a+","+b.lng+");"];o[2]=['Cancel Undelete','/img/menu/menu_03_120.png',"if (realconfirm(localization['jsi_ask_sure'])!=false) {fast('/sys/save4/?id="+a+"&do=del&cancel=1');jwindow3_menu(0);}"]
        }else if(i==51){
        if(b[2])o.push([localization['jsi_search_cat'],'',"jwindow('/fn/edit_tags.php',0,0,'',1);jwindow3_menu(0);"]);if(b[3])o.push([localization['jsi_add_cat'],'',"jwindow('/fn/edit_tags.php?edit=new',0,0,'',1);jwindow3_menu(0);"]);if(b[4])o.push([localization['show_menu_add_language'],'',"jwindow('/fn/edit_tags.php?xlang="+b[0]+"',0,0,'',1);jwindow3_menu(0);"]);if(b[5]&&!b[6])o.push([localization['jsi_viewthis'],'',"jwindow('/fn/edit_tags.php?view="+b[0]+"&lng="+b[1]+"',0,0,'',1);jwindow3_menu(0);"]);if(b[6])o.push([localization['show_menu_edit_page'],'',"jwindow('/fn/edit_tags.php?edit="+b[0]+"&lng="+b[1]+"',0,0,'',1);jwindow3_menu(0);"])
            }menucreate(o)
    }function newload(obj){
    if(noifr){
        return
    }_ge('wm0').style.display=_bk;_ge('wm00').style.display=_bk;if(is_ie&&is_old){
        _ge('wmlo').src='/img/blank.gif'
        }else{}var b=0;var c='';var a='';var d;for(var i=1;i<8;i++){
        if(_gec('wm'+(i-1)).style.borderLeft!=''){
            b=-2
            }d=1;while(_gec('wm'+(i-d)).className=='nan'){
            d++
        }_gec('wm'+i).style.left=_gec('wm'+(i-d)).offsetLeft+_gec('wm'+(i-d)).offsetWidth+10+b+'px';_gec('wm'+i).style.top='0px';var o,from,fromt;if(i==2){
            o='';a=''
            }else if(i==3){
            o=localization['jsi_maptype'];a='/img/menu/menu_03_23.png'
            }else if(i==1){
            o=localization['jsi_editmap'];a='/img/menu/menu_03_190.png'
            }else if(i==4){
            o=localization['jsi_cats'];a='/img/menu/menu_03_193.png'
            }else if(i==5){
            if(!obj)continue;a='/img/menu/user.png';if(uid&&username){
                o=username
                }else{
                o=localization['login']
                }
            }else if(i==6){
            if(obj&&flphoar[26]&&uid){
                _gec('wm'+i).className="nana llbutn";o=flphoar[26].toString();a='/img/menu/menu_02_06.png';if(typeof _gec('wm'+i).onclick!=_fu){
                    _gec('wm'+i).onclick=new Function("try{jwindow('/sys/msglist/?uid='+uid,0,0,'',1);}catch(e){}")
                    }
                }else{
                _gec('wm'+i).className="nan";continue
            }
            }else if(i==7){
            if(!obj)continue;a='';o=l_id[lng].toUpperCase()
            }if(o){
            o=o.replace(/ /g,'&nbsp;')
            }else{
            o=''
            }if(i!=7){
            if(a){
                if(is_ie&&is_old){
                    if(!imcache[a]){
                        imcache[a]=new Image();imcache[a].src=a
                        }
                    }a=imprint(a,16,16)
                }a='<table border=0 cellspacing=0 cellpadding=0><tr><td width=23 height=22 align=center>'+a+'</td><td  style="white-space:nowrap;font-size:14px;color:#F51A1A;cursor:pointer;font-weight:bold;-moz-user-select:none;">'+o+'&nbsp;</td>'+c+'</tr></table>'
            }else{
            a='<table border=0 cellspacing=0 cellpadding=0><tr><td><span style=""></span></td><td height=22 align=center  style="white-space:nowrap;font-size:12px;color:#eee;cursor:pointer;">&nbsp;'+o+'<img src="/img/wtd.gif" align=abscenter border=0 heigh=3 hspace=2 width=5>&nbsp;</td></tr></table>'
            }if(_gec('wm'+i).innerHTML.indexOf(o)==-1||(!o&&_gec('wm'+i).innerHTML)){
            _gec('wm'+i).className="nana llbutn";_gec('wm'+i).innerHTML=a
            }if(typeof _gec('wm'+i).onmouseover!=_fu&&o){
            _gec('wm'+i).onmouseout=new Function("try{jwindow3_mout();}catch(e){}");_gec('wm'+i).onmouseover=new Function("if (isdrag)return;try{showpolyfn();mmenuprep("+i+");jwindow3_mover(5,this);}catch(e){}");if(i!=6)_gec('wm'+i).onclick=_gec('wm'+i).onmouseover
                }
        }
    }var username;flphoar[26]=0;function uinfo(kvid,fromt){
    if(noifr)return;if(!spar[0]){
        spar[0]=0;spar[1]=0;spar[2]=1;spar[3]=3
        }var cnt=25;if(spar[2]>0&&uid==0){
        cnt=120
        }if(typeof fromt==_un)var fromt=0;uid=jwindow3_rcookie('uid');if(!uid){
        uid=0;newload(1)
        }if(fromt){
        var text;if(typeof kvid!=_un){
            if(kvid==null)return;text=kvid.split('|')
            }if(text){
            if(text[0]){
                text[5]=parseInt(text[0]);if(spar[0]){
                    spar[2]=(text[5]-spar[3])/cnt;if(spar[2]<0)spar[2]=0
                        }spar[0]=text[5];spar[3]=text[5]
                }if(text[2]){
                uid=parseInt(jwindow3_rcookie('uid'));username=text[2];if(text[3]){
                    lvl=parseInt(text[3])
                    }text[2]=localization['jsi_hello'].replace(/%1/,text[2]);newload(1);if(text[1]!='0'){
                    flphoar[26]=parseInt(text[1]);text[1]=localization['jsi_newmsg'].replace(/%1/,text[1])
                    }else{
                    flphoar[26]=0
                    }newload(1)
                }
            }
        }else{
        if(spar[1]==0){
            var ankrandom='';if(uid)ankrandom='u';ankrandom+='/?'+Math.round(Math.random()*10000000);GDownloadUrl('/sys/inf'+ankrandom,function(data){
                uinfo(data,1)
                });spar[1]=0
            }if(spar[0]>0){
            spar[0]+=spar[2]
            }
        }if(spar[0]>0){
        _gec('places').innerHTML=localization['jsi_places_count'].replace(/%1/,Math.round(spar[0]));_gec('places1').innerHTML=_gec('places').innerHTML
        }spar[1]++;if(spar[1]>cnt)spar[1]=0
        }function mousemove_new(e){
    if(isdrag1[2]||isdrag||nomousedet||jmenustate==1||jwindowstate==3||vtype==5||vtype==4||(vtype==9&&!pointlisten)){
        chosen_poly='';return
    }if(isdrag1[0]){
        var a=new Date();if(a.getTime()-isdrag1[1]<350){
            chosen_poly='';return
        }isdrag1[0]=0
        }var e=e||window.event;if(oldzoom>3){
        var x1=bounds_ms[3]+e.clientX;var y1=bounds_ms[4]+e.clientY;var x=(x1-bounds_ms[0])/bounds_ms[1];var y=(2*Math.atan(Math.exp((y1-bounds_ms[0])/(-bounds_ms[2])))-Math.PI/2)*180/Math.PI;if(x>180)x-=360;if(pointlisten||vtype==6){
            var point=new GLatLng(y,x);point.clientX=e.clientX;point.clientY=e.clientY;point.clientM=1
            }else{
            var point={
                x:x,
                y:y,
                lng:x,
                lat:y,
                clientX:e.clientX,
                clientY:e.clientY,
                clientM:1
            }
            }
        }else{
        var point=map.fromContainerPixelToLatLng(new GPoint(e.clientX,e.clientY))
        }flphoar[42]=point;if(pointlisten){
        lag_delay_fn(mouse_movepo,15,5)
        }else if(vtype==6){
        lag_delay_fn(mouse_movere,15,5)
        }else{
        lag_delay_fn(run_poly_check,10,5)
        }
    }function mousemove_c(){
    var bitmapsize=Math.pow(2,map.getZoom())*256;bounds_ms[0]=bitmapsize/2;bounds_ms[1]=bitmapsize/360;bounds_ms[2]=bitmapsize/(2*Math.PI);bounds_ms[3]=(Math.floor(bounds_ms[0]+bounds_sw.x*bounds_ms[1]));bounds_ms[4]=(Math.floor(bounds_ms[0]-0.5*Math.log((1+Math.sin((bounds_ne.y/180)*Math.PI))/(1-Math.sin((bounds_ne.y/180)*Math.PI)))*bounds_ms[2]));if(bounds_ne.x>bounds_sw.x){
        bounds_ms[5]=bounds_ne.x-bounds_sw.x
        }else{
        bounds_ms[5]=(bounds_sw.x-bounds_ne.x)
        }bounds_ms[6]=bounds_ne.y-bounds_sw.y;bounds_ms[5]*=10000000;bounds_ms[6]*=10000000
    }var ttovo=[],svgvml=[],svgvmlline=[];function addsvgdiv(a){
    ttovo[a]=document.createElement("div");ttovo[a].style.left=0;ttovo[a].style.top=0;ttovo[a].style.zIndex=2;ttovo[a].style.width=3000+'px';ttovo[a].style.height=3000+'px';ttovo[a].style.position='absolute';ttovo[a].style.display=_no;if(is_ie){
        svgvml[a]=document.createElement('v:polyline');svgvml[a].setAttribute('filled','true');svgvml[a].setAttribute('fillcolor','#ffcc00');svgvml[a].setAttribute('stroked','true');svgvml[a].setAttribute('strokecolor','#ffcc00');svgvml[a].setAttribute('strokeweight',1);svgvml[a].setAttribute('fill-opacity','0.3');svgvml[a].setAttribute('coordsize','3000 3000');svgvml[a].setAttribute('path','0,0,0,0,0,0');svgvml[a].style.left=0;svgvml[a].style.top=0;svgvml[a].style.position='absolute';svgvml[a].style.width=2500;svgvml[a].style.height=2500;ttovo[a].insertBefore(svgvml[a],null);map.getPane(G_MAP_MARKER_SHADOW_PANE).appendChild(ttovo[a])
        }else{
        svgvml[a]=ttovo[a].appendChild(document.createElementNS("http://www.w3.org/2000/svg","svg"));svgvml[a].style.display=_bk;var node=svgvml[a].appendChild(document.createElementNS("http://www.w3.org/2000/svg",'polyline'));node.setAttribute('points',"0,0 0,0 0,0");node.setAttribute('fill',"#ffcc00");node.setAttribute('stroke',"#ffcc00");node.setAttribute('stroke-width','1');node.setAttribute('fill-opacity','0.3');node.setAttribute('stroke-opacity','1');svgvml[a].setAttribute('height','3000');svgvml[a].setAttribute('width','3000');svgvml[a].setAttribute('left','0');svgvml[a].setAttribute('top','0');map.getPane(G_MAP_MARKER_SHADOW_PANE).appendChild(ttovo[a])
        }
    }function vml_lag(){
    flphoar[51][9]=1;show_svgdiv(flphoar[49],0,flphoar[50],flphoar[51])
    }function poly_redraw(){
    if(ttovo[0]&&svgvml[0]){
        if(svgvml[0].nohide&&ttovo[0].style.display==_bk){
            show_svgdiv(flphoar[49],0,flphoar[50],flphoar[51])
            }else{
            chosen_poly='';ttovo[0].zoom=0;ttovo[0].kvid=''
            }
        }
    }function show_svgdiv(kvid,point,polyz,o){
    if(!o)o=[];if(!o[3])o[3]=0;if(!o[3]&&o[1]){
        flphoar[49]=kvid;flphoar[50]=polyz;flphoar[51]=o
        }if(!ttovo[o[3]]){
        addsvgdiv(o[3])
        }else{}if(!o[4])o[4]='#ffcc00';if(!o[5])o[5]='#ffcc00';if(!o[6]){
        if(is_ie){
            svgvml[o[3]].strokeweight='1'
            }else{
            svgvml[o[3]].firstChild.setAttribute('stroke-width',"1")
            }
        }else{
        if(is_ie){
            svgvml[o[3]].strokeweight=o[6]
            }else{
            svgvml[o[3]].firstChild.setAttribute('stroke-width',o[6])
            }
        }if(!o[7]){
        if(is_ie){
            svgvml[o[3]].strokeopacity='1'
            }else{
            svgvml[o[3]].firstChild.setAttribute('stroke-opacity',"1")
            }
        }else{
        if(is_ie){
            svgvml[o[3]].strokeopacity=o[7]
            }else{
            svgvml[o[3]].firstChild.setAttribute('stroke-opacity',o[7])
            }
        }var npoints=polyz.length-1;if(o[2]){
        if(is_ie){
            svgvml[o[3]].filled='false'
            }else{
            svgvml[o[3]].firstChild.setAttribute('fill',"none")
            }
        }else{
        if(polyz[0]!=polyz[npoints-1]&&polyz[1]!=polyz[npoints]){
            polyz.push(polyz[0]);polyz.push(polyz[1])
            }if(is_ie){
            svgvml[o[3]].filled='true'
            }else{
            svgvml[o[3]].firstChild.setAttribute('fill',o[4])
            }
        }upd_bounds();var node=map.fromLatLngToDivPixel(new GLatLng(bounds_ne.lat(),bounds_sw.lng()));if(!o[0]&&kvid&&svgvml[o[3]].kvid&&svgvml[o[3]].kvid==kvid&&svgvml[o[3]].zoom==oldzoom){
        o[0]=0;if(node.x-_px(ttovo[o[3]].style.left)>999||node.y-_px(ttovo[o[3]].style.top)>999)o[0]=1
            }else{
        o[0]=1
        }if(o[0]){
        if(is_ie&&!svgvml[o[3]].nohide){
            ttovo[o[3]].style.display=_no;svgvml[o[3]].points.value='0,0,0,0'
            }npoints=polyz.length-1;var maxx,miny,x,y,x1,y1,x2,y2;for(var z=0;z<npoints;z+=2){
            if(!maxx||maxx>polyz[z])maxx=polyz[z];if(!miny||miny<polyz[z+1])miny=polyz[z+1];if(polyz[z]>1550000000)x2=1;else if(polyz[z]<-1550000000)y2=1
                }if(x2&&y2){
            maxx=null;for(var z=0;z<npoints;z+=2){
                if(polyz[z]<-1550000000)polyz[z]+=3600000000;if(!maxx||maxx>polyz[z])maxx=polyz[z]
                    }
            }var tempp1=map.fromLatLngToDivPixel(new GLatLng(miny/10000000,maxx/10000000));node.x1=0;node.y1=0;if(node.x-tempp1.x>0){
            node.x1=node.x-tempp1.x
            };if(node.y-tempp1.y>0){
            node.y1=node.y-tempp1.y
            };tempp1.x+=node.x1;tempp1.y+=node.y1;node.x1d=tempp1.x-_px(ttovo[o[3]].style.left);node.y1d=tempp1.y-_px(ttovo[o[3]].style.top);if(node.x1d>0&&node.y1d>0&&node.x1d<1000&&node.y1d<1000){
            node.x1=node.x1-node.x1d;node.y1=node.y1-node.y1d
            }else{
            ttovo[o[3]].style.left=tempp1.x-700;ttovo[o[3]].style.top=tempp1.y-700;node.x1=node.x1-700;node.y1=node.y1-700
            }x1=(Math.round(bounds_ms[0]+(maxx/10000000)*bounds_ms[1]))+node.x1;y1=(Math.round(bounds_ms[0]-0.5*Math.log((1+Math.sin((miny/10000000/180)*Math.PI))/(1-Math.sin((miny/10000000/180)*Math.PI)))*bounds_ms[2]))+node.y1;var txt=new StringBuffer();for(var z=0;z<npoints;z+=2){
            x=(Math.round(bounds_ms[0]+(polyz[z]/10000000)*bounds_ms[1]))-x1;y=(Math.round(bounds_ms[0]-0.5*Math.log((1+Math.sin((polyz[z+1]/10000000/180)*Math.PI))/(1-Math.sin((polyz[z+1]/10000000/180)*Math.PI)))*bounds_ms[2]))-y1;if(is_ie&&z>0)txt.append(',');txt.append(x);txt.append(',');txt.append(y);txt.append(' ')
            }if(is_ie){
            svgvml[o[3]].fill.opacity=0.3;svgvml[o[3]].points.value=txt.toString()
            }else{
            svgvml[o[3]].firstChild.setAttribute('points',txt.toString())
            }svgvml[o[3]].kvid=kvid;svgvml[o[3]].zoom=oldzoom;svgvml[o[3]].nohide=(o[1])?1:0
        }if(is_ie){
        if(flphoar[53])clearTimeout(flphoar[53]);flphoar[53]=window.setTimeout(function(){
            ttovo[o[3]].style.display=_bk
            },20)
        }else{
        ttovo[o[3]].style.display=_bk
        }
    }function drawroads(){
    if(!jsar['roadsnew.js']){
        loadjs('roadsnew.js','window.setTimeout(function(){drawroads();},250);',1);return
    }
    };function poiaddmode(){
    if(!jsar['roadsnew.js']){
        loadjs('roadsnew.js','window.setTimeout(function(){drawroads();},250);',1);return
    }
    };function update_objects_adv(){
    new_blocks={};clear_unused();var curzoom2=map.getZoom();if(curzoom2<13&&(vtype==5||vtype==6)){
        if((ltype==2||ltype==10)&&oldzoom>9){}else{
            show_binf();del_all_obj();return
        }
        }if(vtype==3&&!jsar['userlay.js']){
        loadjs('userlay.js','window.setTimeout(update_objects_adv,250);',1);return
    }var a=0;if(tagfilter&&vtype!=6){
        a=10
        }else if((mtype==jmtype1[5]||mtype==jmtype1[6])&&vtype!=3&&vtype!=6&&vtype!=5&&vtype!=4&&vtype!=9){
        a=1;if(curzoom2<7)a=0;if(wm_vers==5&&curzoom2<10)a=8
            }else if(curzoom2<6&&vtype!=3&&vtype!=4){
        a=2;return
    }else if(vtype<3){
        a=0
        }else if(vtype==3){
        a=3
        }else if(vtype==4){
        a=4
        }else if(vtype==10){
        a=11
        }else if(vtype==9){
        a=9
        }else if(vtype==8){
        a=9
        }else if(vtype==5||vtype==6){
        a=5
        }if(a==1){
        gettilelist(a,curzoom2-2);if(curzoom2>6&&mtype==jmtype1[6]&&vtype==8)gettilelist(9,curzoom2-3)
            }else if(a==5){
        gettilelist(a,curzoom2-3)
        }else if(a){
        gettilelist(a,curzoom2-3)
        }if(otype==1){
        gettilelist(11,curzoom2-3)
        }var i=0;for(var gotarrn in blocshow){
        if(mass[gotarrn]){
            getadv(blocshow[gotarrn],gotarrn)
            }else{
            blocshowq.push([blocshow[gotarrn],gotarrn])
            }
        }
    };function gettilelist(a,curzoomkv){
    var x1point=Math.round(bounds_sw.lng()*10000000);var y1point=Math.round(bounds_sw.lat()*10000000);var x2point=Math.round(bounds_ne.lng()*10000000);var y2point=Math.round(bounds_ne.lat()*10000000);if(x1point<-1800000000){
        x1point=-1800000000
        }if(x2point<-1800000000){
        x2point=-1800000000
        }if(x1point>1800000000){
        x1point=1800000000
        }if(x2point>1800000000){
        x2point=1800000000
        }if(y1point<-850511280){
        y1point=-850511280
        }if(y2point<-850511280){
        y2point=-850511280
        }if(y1point>850511280){
        y1point=850511280
        }if(y2point>850511280){
        y2point=850511280
        }outar=[];outar=getdatakvnameme(x1point,y1point,curzoomkv);var xline=outar.xline;var yline=outar.yline;var maks=Math.pow(2,curzoomkv)-1;var vlez=0;var xsdvig=0;var xlinet=xline;var ylinet=yline;while(vlez!=1){
        outar=cheakpointme(x2point,y1point,xlinet,ylinet,curzoomkv);vlez=outar.res;xsdvig++;xlinet=xlinet+1;if(xlinet>maks){
            xlinet=0
            }
        }vlez=0;var ysdvig=0;var xlinet=xline;var ylinet=yline;while(vlez!=1){
        outar=cheakpointme(x1point,y2point,xlinet,ylinet,curzoomkv);vlez=outar.res;ysdvig++;ylinet=ylinet+1;if(ylinet>maks){
            ylinet=0
            }
        }var temp='';var newtemp='';var ylinesave=yline;var ysdvigsave=ysdvig;while(xsdvig>0){
        while(ysdvig>0){
            temp='0'+retcode(xline,yline,curzoomkv);var lineleng=0;var newtemp='';while(lineleng<temp.length){
                newtemp=newtemp+'/'+temp.substring(lineleng,lineleng+3);lineleng=lineleng+3
                }var letbe='z';switch(a){
                case 1:letbe='w';xml_url='/z1/itiles'+newtemp+gzipext;break;case 9:xml_url='/z1'+newtemp+gzipext;letbe='z';break;case 10:var from=tagfilter.toString();while(from.length<9){
                    from="0"+from
                    }letbe="/cat/"+from.substring(0,3)+"/";letbe+=from.substring(3,6)+"/";letbe+=from.substring(6);from=letbe;letbe=tagfilter.toString();letbe=letbe.replace(/\d/g,function(a){
                    return String.fromCharCode(a.charCodeAt(0)+17)
                    });xml_url='/z1'+from+newtemp+gzipext;break;case 11:xml_url='/z1/hotels'+newtemp+gzipext;letbe='h';break;case 5:letbe='r';xml_url='/sys/roadex2/?do=givexy&ltype='+ltype+'&tile='+newtemp.replace(/[\/xy\.]/g,'');break;case 3:letbe='u';xml_url='/z1/users'+newtemp+gzipext;break;case 4:letbe='d';xml_url='/z1/del'+newtemp+gzipext;break;case 2:letbe='c';xml_url='/z1/c1'+newtemp+gzipext;break;case 8:letbe='w';xml_url='/kashey/tile_builder.php?t='+newtemp.replace(/[\/xy\.]/g,'')+'&';break
                    }blocshow[letbe+temp]=xml_url;ysdvig--;yline++;if(yline>maks){
                yline=0
                }
            }yline=ylinesave;ysdvig=ysdvigsave;xsdvig--;xline++;if(xline>maks){
            xline=0
            }
        }
    };function retcode(xline,yline,curzoomkv){
    var xparam=0;var yparam=0;var test=0;var xlinetest=0;var ylinetest=0;var line='';var z=curzoomkv-1;while(z>=0){
        test=Math.pow(2,z);xlinetest=xline&test;ylinetest=yline&test;if(xlinetest>0){
            xparam=1
            }else{
            xparam=0
            }if(ylinetest>0){
            yparam=2
            }else{
            yparam=0
            }linepart=xparam+yparam;line=line+linepart;z--
    }return line
    };function getdatakvnameme(x,y,curzoomkv){
    var xdel=0;var ydel=0;var ydelm=0;var xline=0;var yline=0;var x1_tochn=-1800000000;var x2_tochn=1800000000;var y1m=-Math.PI;var y2m=Math.PI;var n=0;var z=curzoomkv-1;while(z>=0){
        xdel_tochn=(x1_tochn+x2_tochn)/2;xdel=Math.round(xdel_tochn);ydelm=(y1m+y2m)/2;ydel=mercatorconv(ydelm);if(x<=xdel){
            x2_tochn=xdel_tochn;xline=xline*2
            }else{
            x1_tochn=xdel_tochn;xline=xline*2+1
            }if(y<=ydel){
            y2m=ydelm;yline=yline*2
            }else{
            y1m=ydelm;yline=yline*2+1
            }z--;n++
    }var out=new Array();out.xline=xline;out.yline=yline;return out
    };function cheakpointme(x,y,xline,yline,curzoomkv){
    var xdel=0;var ydel=0;var ydelm=0;var x1=-1800000000;var x2=1800000000;var x1_tochn=-1800000000;var x2_tochn=1800000000;var y1m=-Math.PI;var y2m=Math.PI;var y1=mercatorconv(y1m);var y2=mercatorconv(y2m);var n=0;var xlinetest=0;var ylinetest=0;var test=0;var z=curzoomkv-1;while(z>=0){
        xdel_tochn=(x1_tochn+x2_tochn)/2;xdel=Math.round(xdel_tochn);ydelm=(y1m+y2m)/2;ydel=mercatorconv(ydelm);test=Math.pow(2,z);xlinetest=xline&test;ylinetest=yline&test;if(xlinetest>0){
            x1_tochn=xdel_tochn;x1=Math.round(xdel_tochn)+1
            }else{
            x2_tochn=xdel_tochn;x2=Math.round(xdel_tochn)
            }if(ylinetest>0){
            y1m=ydelm;y1=ydel+1
            }else{
            y2m=ydelm;y2=ydel
            }z--;n++
    }var out=new Array();if((x>=x1)&&(x<=x2)&&(y>=y1)&&(y<=y2)){
        out.res=1
        }else{
        out.res=0
        }return out
    };function mercatorconv(from){
    return Math.round((180/Math.PI)*10000000*Math.asin((Math.exp(2*from)-1)/(Math.exp(2*from)+1)))
    };function jeval(a){
    if(jevals){
        eval(jevals);jevals=''
        }if(blocshowq.length){
        var a=blocshowq.pop();getadv(a[0],a[1]);if(vtype==6&&blocshowq.length){
            getadv(a[0],a[1])
            }
        }if(!flphoar[45]){
        uinfo();flphoar[45]=11
        }flphoar[45]--;if(lagupd){
        update_objects();lagupd=0
        }isdrag1[2]=0
    };function getadv(xml_url,gotarrn){
    if(mass[gotarrn]){
        make_adv_new_id(gotarrn);return
    }for(var names in mass){
        if(names.length<gotarrn.length){
            if(gotarrn.indexOf(names)!=-1&&mass[names]['v']['vnu']!=1){
                make_adv_new_id(names);return
            }
            }
        }var current0=new Date();var curTime0=current0.getTime();if(lastadvload[gotarrn]){
        if(curTime0-lastadvload[gotarrn]<10000)return
    }lastadvload[gotarrn]=curTime0;if(rndnum||gotarrn.match(/c$/)){
        if(vtype==5||vtype==6){
            xml_url+='&'
            }else{
            xml_url+='?'
            }xml_url+=rndnum
        }GDownloadUrl(xml_url,function(data,responseCode){
        parse_adv(data,responseCode)
        })
    };function clear_unused(){
    showcity=0;var t1=0;var t2='';var x1p=parseInt(bounds_sw.lng()*10000000);var y1p=parseInt(bounds_sw.lat()*10000000);var x2p=parseInt(bounds_ne.lng()*10000000);var y2p=parseInt(bounds_ne.lat()*10000000);var yd=y2p-y1p;var xd=x2p-x1p;if(x2p<x1p)xd+=3600000000;for(var kvid in show_blocks){
        if(new_blocks[kvid])continue;if(x1p>x2p){
            if(((massid[kvid]['x1']>=x1p)||(massid[kvid]['x2']>=x1p)||(massid[kvid]['x1']<=x2p)||(massid[kvid]['x2']<=x2p))&&((massid[kvid]['y1']>=y1p)||(massid[kvid]['y2']>=y1p)||(massid[kvid]['y1']<=y2p)||(massid[kvid]['y2']<=y2p))){}else{
                map.removeOverlay(kv[kvid]);delete show_blocks[kvid];if(kvid==showtooltip){
                    hideFloat()
                    }
                }
            }else{
            if(((massid[kvid]['x1']>=x1p&&massid[kvid]['x1']<=x2p)||(massid[kvid]['x2']>=x1p&&massid[kvid]['x2']<=x2p))&&((massid[kvid]['y1']>=y1p&&massid[kvid]['y1']<=y2p)||(massid[kvid]['y2']>=y1p&&massid[kvid]['y2']<=y2p))){}else{
                map.removeOverlay(kv[kvid]);delete show_blocks[kvid];if(kvid==showtooltip){
                    hideFloat()
                    }
                }
            }if(show_blocks[kvid]){
            if((massid[kvid]['x2']-massid[kvid]['x1'])>xd||(massid[kvid]['y1']-massid[kvid]['y2'])>yd){
                map.removeOverlay(kv[kvid]);delete show_blocks[kvid];if(kvid==showtooltip){
                    hideFloat()
                    }
                }
            }
        }t1=0;for(var names in mass){
        if(names.indexOf('z')!=-1){
            t1++
        }
        }if(t1>50){
        t1=t1-50;for(var names in mass){
            if(names.indexOf('z')!=-1&&t1>0&&!blocshow[names]){
                for(var kvid in mass[names]){
                    if(kvid=='v')continue;massid[kvid]['cnt']--;if(massid[kvid]['cnt']==0)delete massid[kvid]
                }delete mass[names];t1--
            }
            }
        }
    };function parse_adv(data,responseCode){
    var lines=data.split("\n");var i1=0;var gotarrn='';var cnt=lines.length;for(var i=0;i<cnt;i++){
        if(lines[i]=='')continue;var info=lines[i].split("\|");if(i>3||(i>1&&(mass[gotarrn]['v']['g']==7||mass[gotarrn]['v']['g']==8))){
            if(!info[0])break;if(mass[gotarrn]['v']['g']==3){
                var kvid=info[0]+'u'
                }if(mass[gotarrn]['v']['g']==7||mass[gotarrn]['v']['g']==8){
                if(info.length<6)continue;var from=info[4].split(",");var b=0;for(var a in from){
                    if(from[a]==3)b=1
                        }if(b==1)continue;if(mass[gotarrn]['v']['g']==8){
                    var kvid=info[0]+'a'
                    }else{
                    var kvid=info[0]+'w'
                    }massid_poly[kvid]=new Array();var from=info[2].split(",");mass[gotarrn][i1+'w']=kvid;massid_poly[kvid]['y1']=parseInt(from[2]);massid_poly[kvid]['y2']=parseInt(from[3]);massid_poly[kvid]['x1']=parseInt(from[0]);massid_poly[kvid]['x2']=parseInt(from[1]);if(mass[gotarrn]['v']['g']==8&&info[4]){
                    if(info[5])mass_adm[parseInt(info[4])+'i']=parse_lng(info[5],kvid,1);massid_poly[kvid]['t']=mass_adm[parseInt(info[4])+'i']
                    }else{
                    massid_poly[kvid]['t']=parse_lng(info[5],kvid,1)
                    }massid_poly[kvid]['pl']=parseInt(info[1]);massid_poly[kvid]['po']=info[7];i1++;continue
            }else if(mass[gotarrn]['v']['g']==5){
                var kvid=info[0]+'d'
                }else if(mass[gotarrn]['v']['g']==6){
                for(var i1=0;i1<info.length;i1++){
                    if(i==6){
                        if(!info[i1])continue;var lngs=info[i1+1].split("\x1f");for(var names in lngs){
                            var lngs1=[];lngs1[1]=lngs[names].charCodeAt(0)-32;lngs1[2]=lngs[names].replace(/^./,'');rroads[info[i1]+'i']=[];rroads[info[i1]+'i'][lngs1[1]]=lngs1[2]
                            }i1++;continue
                    }var datar1=info[i1].split(",");if(datar1.length>1){
                        datar1[0]+='i';if(i==4){
                            continue;if(!rpoints[datar1[0]]){
                                rpoints[datar1[0]]=[];rpoints[datar1[0]]['s']=[]
                                }if(!rpoupnewdel[datar1[0]]){
                                rpoints[datar1[0]]['y']=datar1[2]/10000000;rpoints[datar1[0]]['x']=datar1[1]/10000000
                                }
                            }else if(i==5){
                            datar1[1]+='i';for(var i2=0;i2<2;i2++){
                                if(!rpoints[datar1[i2]]){
                                    rpoints[datar1[i2]]=[];rpoints[datar1[i2]]['s']=[]
                                    }if(!rpoupnewdel[datar1[i2]]){
                                    var lngs=datar1[i2].split("_");rpoints[datar1[i2]]['y']=parseInt(lngs[1])/10000000;rpoints[datar1[i2]]['x']=parseInt(lngs[0])/10000000
                                    }
                                }var seg=segnorm(datar1[0],datar1[1]);if(rsegupnewdel[seg])continue;if(rpoints[datar1[0]])rpoints[datar1[0]]['s'][datar1[1]]=1;if(rpoints[datar1[1]])rpoints[datar1[1]]['s'][datar1[0]]=1;if(!rsegments[seg]){
                                rsegments[seg]={}
                                }rsegments[seg]['sid']=parseInt(datar1[2]);rsegments[seg]['lw']=parseInt(datar1[3]);if(rsegments[seg]['lw']>99){
                                rsegments[seg]['wa']=1;if(rsegments[seg]['lw']>119){
                                    rsegments[seg]['wa']=2;rsegments[seg]['lw']=rsegments[seg]['lw']-120
                                    }else{
                                    rsegments[seg]['lw']=rsegments[seg]['lw']-100
                                    }
                                }else{
                                rsegments[seg]['lw']=rsegments[seg]['lw'];rsegments[seg]['wa']=0
                                }rsegments[seg]['rt']=parseInt(datar1[4]);rsegments[seg]['uid']=parseInt(datar1[5]);if(rsegments[seg]['rt']>3){
                                rsegments[seg]['rs']=rsegments[seg]['rt']>>5;rsegments[seg]['re']=rsegments[seg]['rt']>>2;rsegments[seg]['re']=rsegments[seg]['re']^rsegments[seg]['rs']<<3;rsegments[seg]['rt']=rsegments[seg]['rt']^rsegments[seg]['re']<<2;rsegments[seg]['rt']=rsegments[seg]['rt']^rsegments[seg]['rs']<<5;if(rsegments[seg]['re']>5)rsegments[seg]['re']-=8
                                    }
                            }
                        }
                    }continue
            }else{
                var kvid=info[0]+'i';if(mass[gotarrn]['v']['g']==10)kvid=info[0]+'h'
                    }mass[gotarrn][kvid]=new Array();if(massid[kvid]){
                massid[kvid]['cnt']++;continue
            }massid[kvid]=new Array();massid[kvid]['x1']=mass[gotarrn]['v']['x']+parseInt(info[1]);massid[kvid]['y1']=mass[gotarrn]['v']['y']+parseInt(info[2]);if(mass[gotarrn]['v']['g']==3){
                massid[kvid]['name']=info[4];massid[kvid]['zo']=parseInt(info[3]);massid[kvid]['ph']=parseInt(info[5]);continue
            }massid[kvid]['cnt']=1;massid[kvid]['z']=Math.ceil(30000000/(Math.abs(parseInt(info[3]))+Math.abs(parseInt(info[4]))));if(massid[kvid]['z']<1)massid[kvid]['z']=1;else if(massid[kvid]['z']>10000)massid[kvid]['z']=10000;massid[kvid]['x2']=massid[kvid]['x1']+parseInt(info[3]);massid[kvid]['y2']=massid[kvid]['y1']-parseInt(info[4]);if(info[8])massid[kvid]['po']=info[8];massid[kvid]['zo']=parseInt(info[5]);if(mass[gotarrn]['v']['g']!=3&&info[7]){
                info[7]=parseInt(info[7]);if(info[7]>1){
                    massid[kvid]['g']=info[7]+3
                    }
                }massid[kvid]['t']=parse_lng(info[6],kvid,0);i1++
        }else if(i==0){
            var regout=info[0].match(/^\d+$/);if(regout){}else{
                if(gzipext=='/tx/')break;var p=0;for(var names in mass){
                    p++
                }if(p==0){
                    gzipext='/tx/';lastadvload={}
                    }update_objects();break
            }if(!info[0]||info[0].indexOf('<')!=-1)break;info[2]=parseInt(info[2]);if(info[2]==99){
                if(lines[1])try{
                    eval(lines[1])
                    }catch(e){};return
            }var letbe='z';if(info[2]==2)letbe='c';if(info[2]==3)letbe='u';if(info[2]==4)letbe='m';if(info[2]==5)letbe='d';if(info[2]==6)letbe='r';if(info[2]==7)letbe='w';if(info[2]==8)letbe='w';if(info[2]==10)letbe='h';if(info[2]>16){
                letbe=info[2].toString();letbe=letbe.replace(/\d/g,function(a){
                    return String.fromCharCode(a.charCodeAt(0)+17)
                    })
                }gotarrn=letbe+info[0];if(mass[gotarrn])return;mass[gotarrn]=new Array();mass[gotarrn]['v']=new Array();mass[gotarrn]['v']['vnu']=info[1];mass[gotarrn]['v']['g']=info[2];mass[gotarrn]['v']['s']=0;if(info[2]==7)continue;mass[gotarrn]['v']['x']=parseInt(info[3]);mass[gotarrn]['v']['y']=parseInt(info[5]);mass[gotarrn]['v']['x1']=parseInt(info[4]);mass[gotarrn]['v']['y1']=parseInt(info[6])
            }else if(i==1){
            if(info[1]=='')continue;mass[gotarrn]['v']['t']=new Array();for(var cutit in info){
                var lngs1=info[cutit].split("#");var i3='t'+cutit;mass[gotarrn]['v']['t'][i3]=new Array();mass[gotarrn]['v']['t'][i3]['x']=parseInt(lngs1[0])/1000000;mass[gotarrn]['v']['t'][i3]['y']=parseInt(lngs1[1])/1000000;mass[gotarrn]['v']['t'][i3]['t']=lngs1[2]
                }
            }else if(i==2){
            if(mass[gotarrn]['v']['g']>16){
                var lngs=lines[i].split("\x1f");tags[mass[gotarrn]['v']['g']+'i']={};for(var names in lngs){
                    var lngs1=[];lngs1[1]=lngs[names].charCodeAt(0)-32;lngs1[2]=lngs[names].replace(/^./,'');tags[mass[gotarrn]['v']['g']+'i'][lngs1[1]+'i']=lngs1[2]
                    }show_binf()
                }
            }else if(i==3){}
    }if(gotarrn!=''){
        mass[gotarrn]['v']['cnt']=i1;make_adv_new_id(gotarrn)
        }return
};function parse_lng(text,kvid,o){
    if(!text||text=='')return'';var obj='';var from=0;var lngs=text.split("\x1f");if(lngs.length==1){
        var lngs1=[];lngs1[1]=lngs[0].charCodeAt(0)-32;lngs1[2]=lngs[0].replace(/^./,'');obj=lngs1[2];if(lng!=lngs1[1]){
            obj+=' (';obj+=l_id[lngs1[1]];obj+=')';if(parseInt(lngs1[1])!=0){
                from=lngs1[1]
                }
            }
        }else{
        var langsfin=new Array();for(var names in lngs){
            var lngs1=[];lngs1[1]=lngs[names].charCodeAt(0)-32;lngs1[2]=lngs[names].replace(/^./,'');if(lng==lngs1[1]&&lngs1[2]!=''){
                obj=lngs1[2];langsfin=[];from=lngs1[1];break
            }langsfin[lngs1[1]]=lngs1[2];if(lngs1[2]!=''){
                obj=lngs1[2]+' ('+l_id[lngs1[1]]+')';if(lngs1[1]!=0){
                    from=lngs1[1]
                    }
                }
            }if(from!=lng){
            for(var a1 in langpop){
                if(langsfin[langpop[a1]]){
                    obj=langsfin[langpop[a1]]+' ('+l_id[langpop[a1]]+')';from=langpop[a1];break
                }
                }
            }
        }if(from){
        if(o==1){
            massid_poly[kvid]['l']=from
            }else{
            massid[kvid]['l']=from
            }
        }return obj
    };function cc1(a){
    if(!a){
        if(flphoar[31]){
            window.clearTimeout(flphoar[31])
            }flphoar[31]=window.setTimeout(function(){
            cc1(1)
            },2500)
        }else{
        if(a==1){
            rndnum=Math.round(Math.random()*10000000);jwindow3_cookie('rndnum='+rndnum);if(flphoar[21])window.clearTimeout(flphoar[21]);flphoar[21]=window.setTimeout(function(){
                cc1(2)
                },1000);flphoar[30]=new Date();flphoar[30]=flphoar[30].getTime()
            }else{
            updmap();clear_cache(3);if(vtype!=6)update_objects(1)
                }
        }
    };function clear_cache(gotarrn,gotarrn1){
    lastadvload={};var fromt=0;if(!gotarrn||gotarrn!=3)cc1();for(var names in mass){
        if(names.indexOf('z')!=-1||names.indexOf('u')!=-1||names.match(/^\w\w/)){
            if(typeof gotarrn!=_un&&typeof gotarrn1==_un){}else{
                if(typeof gotarrn1!=_un){
                    if(gotarrn1==1&&names.indexOf('u')!=-1){
                        fromt=1
                        }else if(gotarrn1==2&&names.indexOf('z')!=-1){
                        fromt=1
                        }
                    }else{
                    fromt=1
                    }
                }if(fromt==1){
                fromt=0;for(var kvid in mass[names]){
                    if(kvid.length<2)continue;if(names.match(/^w\d+$/)){
                        delete massid_poly[mass[names][kvid]]
                    }else{
                        massid[kvid]['cnt']--;if(massid[kvid]['cnt']==0)delete massid[kvid]
                    }
                    }delete mass[names]
            }
            }
        }
    };function block_mem(kvid,x1,y1,x2,y2,zoom,name,g){
    var gotarrn='m';if(!kvid){
        delete mass[gotarrn];del_all_obj();update_objects();return
    }if(!mass[gotarrn]){
        mass[gotarrn]=new Array();mass[gotarrn]['v']=new Array();mass[gotarrn]['v']['g']=0
        }if(mass[gotarrn][kvid]){}else{
        mass[gotarrn][kvid]=new Array()
        }if(massid[kvid]){
        massid[kvid]['cnt']++
    }else{
        massid[kvid]=new Array();massid[kvid]['cnt']=1
        }mass[gotarrn][kvid]['x1']=x1;mass[gotarrn][kvid]['y1']=y1;mass[gotarrn][kvid]['x2']=x2;mass[gotarrn][kvid]['y2']=y2;massid[kvid]['x1']=x1;massid[kvid]['y1']=y1;massid[kvid]['x2']=x2;massid[kvid]['y2']=y2;if(typeof g!=_un)mass[gotarrn][kvid]['g']=g;if(typeof g!=_un)massid[kvid]['g']=g;var height=y1-y2;var width=x2-x1;massid[kvid]['z']=Math.ceil(30000000/(Math.abs(parseInt(width))+Math.abs(parseInt(height))));if(massid[kvid]['z']<1)massid[kvid]['z']=1;else if(massid[kvid]['z']>10000)massid[kvid]['z']=10000;mass[gotarrn][kvid]['z']=Math.ceil(30000000/(Math.abs(parseInt(width))+Math.abs(parseInt(height))));if(mass[gotarrn][kvid]['z']<1)mass[gotarrn][kvid]['z']=1;if(mass[gotarrn][kvid]['z']>10000)mass[gotarrn][kvid]['z']=10000;mass[gotarrn][kvid]['zo']=zoom;mass[gotarrn][kvid]['t']=name;massid[kvid]['zo']=zoom;massid[kvid]['t']=name;new_blocks[kvid]='m';addoverlad_lag();block_mem_show()
    };function block_mem_show(){
    var x1p=bounds_sw.lng()*10000000;var y1p=bounds_sw.lat()*10000000;var x2p=bounds_ne.lng()*10000000;var y2p=bounds_ne.lat()*10000000;for(var kvid in mass['m']){
        if(kvid.length<2)continue;if(!show_blocks[kvid]&&!new_blocks[kvid]){
            if(x1p>x2p){
                if(((massid[kvid]['x1']>=x1p)||(massid[kvid]['x2']>=x1p)||(massid[kvid]['x1']<=x2p)||(massid[kvid]['x2']<=x2p))&&((massid[kvid]['y1']>=y1p)||(massid[kvid]['y2']>=y1p)||(massid[kvid]['y1']<=y2p)||(massid[kvid]['y2']<=y2p))){
                    new_blocks[kvid]='m'
                    }
                }else{
                if(((massid[kvid]['x1']>=x1p&&massid[kvid]['x1']<=x2p)||(massid[kvid]['x2']>=x1p&&massid[kvid]['x2']<=x2p))&&((massid[kvid]['y1']>=y1p&&massid[kvid]['y1']<=y2p)||(massid[kvid]['y2']>=y1p&&massid[kvid]['y2']<=y2p))){
                    new_blocks[kvid]='m'
                    }
                }
            }
        }
    };function make_adv_new_id(gotarrn){
    if(vtype==5||vtype==6){
        drawroads();return
    }if(gotarrn.match(/^[wr]\d+$/))return;var curzoom2=map.getZoom();if(!mass[gotarrn]||vtype==1||flphoar[38])return;if(lastadvload[gotarrn]){
        delete lastadvload[gotarrn]
    }var lst=0;var lst0=0;var check_more=new Array();var pp;for(var gotarrn1 in blocshow){
        if(gotarrn1.indexOf('w')==0)continue;lst0++;if(mass[gotarrn1]){
            lst++;check_more[gotarrn1]=1
            }else{
            for(var names in mass){
                if(names.length<gotarrn1.length){
                    if(gotarrn1.indexOf(names)!=-1&&mass[names]['v']['vnu']!=1){
                        check_more[names]=1;lst++
                    }
                    }
                }
            }
        }var x1p=bounds_sw.lng()*10000000;var y1p=bounds_sw.lat()*10000000;var x2p=bounds_ne.lng()*10000000;var y2p=bounds_ne.lat()*10000000;var yd=y2p-y1p;var xd=x2p-x1p;if(x2p<x1p)xd+=3600000000;var pok=1;var p=0;for(var kvid in show_blocks){
        p++;if(p==1){
            if((show_blocks[kvid].indexOf('c')!=-1&&curzoom2>6)||(show_blocks[kvid].indexOf('z')!=-1&&curzoom2<7)){
                del_all_obj();break
            }
            }curzoom2=0;for(var gotarrn1 in blocshow){
            if(gotarrn1.indexOf('w')==0)continue;if(mass[gotarrn1]){
                if(mass[gotarrn1][kvid])curzoom2=1
                    }else{
                for(var names in mass){
                    if(gotarrn1.indexOf(names)!=-1&&mass[names]['v']['vnu']!=1){
                        if((kvid.indexOf('i')!=-1&&gotarrn1.indexOf('z')!=-1)||(kvid.indexOf('u')!=-1&&gotarrn1.indexOf('u')!=-1)||(kvid.indexOf('d')!=-1&&gotarrn1.indexOf('d')!=-1))curzoom2=1
                            }
                    }
                }
            }if(zoominchange==2&&lst>=lst0){
            if(show_blocks[kvid]!='m'&&curzoom2==0&&gotarrn.length!=show_blocks[kvid].length&&(show_blocks[kvid].indexOf(gotarrn)==-1&&gotarrn.indexOf(show_blocks[kvid])==-1)){
                var a=1;for(var gotarrn1 in blocshow){
                    if(gotarrn1.indexOf('w')==0)continue;if(mass[gotarrn1]){
                        if(mass[gotarrn1][kvid]){
                            a=0
                            }
                        }else{
                        a=0
                        }
                    }if(a){
                    map.removeOverlay(kv[kvid]);delete show_blocks[kvid];if(kvid==showtooltip){
                        hideFloat()
                        }
                    }
                }
            }
        }var maxsho=100;if(vtype!=9&&mtype==jmtype1[6]&&oldzoom>6&&otype!=1)maxsho=10;p=0;for(var kvid in blocshow){
        if(kvid.indexOf('w')==0)continue;p++
    }var i1=0;for(var kvid in show_blocks){
        i1++
    }for(var kvid in new_blocks){
        i1++
    }var i=parseInt(maxsho/p);if(i1<100&&i>0){
        if(1){
            mass[gotarrn]['v']['s']=1;for(var kvid in mass[gotarrn]){
                if(kvid=='v')continue;if(vtype==3&&mass[gotarrn]['v']['g']!=3)continue;if(!show_blocks[kvid]&&!new_blocks[kvid]){
                    if(vtype!=2&&massid[kvid]['g']==999)continue;if(mtype==jmtype1[6]&&massid[kvid]['po']&&vtype!=9)continue;if(x1p>x2p){
                        if(((massid[kvid]['x1']>=x1p)||(massid[kvid]['x2']>=x1p)||(massid[kvid]['x1']<=x2p)||(massid[kvid]['x2']<=x2p))&&((massid[kvid]['y1']>=y1p)||(massid[kvid]['y2']>=y1p)||(massid[kvid]['y1']<=y2p)||(massid[kvid]['y2']<=y2p))){
                            new_blocks[kvid]=gotarrn
                            }
                        }else{
                        if(((massid[kvid]['x1']>=x1p&&massid[kvid]['x1']<=x2p)||(massid[kvid]['x2']>=x1p&&massid[kvid]['x2']<=x2p))&&((massid[kvid]['y1']>=y1p&&massid[kvid]['y1']<=y2p)||(massid[kvid]['y2']>=y1p&&massid[kvid]['y2']<=y2p))){
                            if((massid[kvid]['x2']-massid[kvid]['x1'])>xd||(massid[kvid]['y1']-massid[kvid]['y2'])>yd){}else{
                                new_blocks[kvid]=gotarrn
                                }
                            }
                        }
                    }i--;if(i<1)break
            }
            }if(lst>=lst0){
            p=0;for(var kvid in show_blocks){
                p++
            }for(var kvid in new_blocks){
                p++
            }p=maxsho-p;if(p>0){
                var mass1=new Array();lst0=0;for(var gotarrn1 in check_more){
                    lst=0;mass1[gotarrn1]=new Array();for(var kvid in mass[gotarrn1]){
                        if(kvid=='v')continue;mass1[gotarrn1][lst]=kvid;lst++
                    }if(lst0<lst)lst0=lst
                        }for(var i=0;i<lst0;i++){
                    for(var gotarrn1 in check_more){
                        if(mass1[gotarrn1][i]&&!new_blocks[mass1[gotarrn1][i]]&&!show_blocks[mass1[gotarrn1][i]]){
                            kvid=mass1[gotarrn1][i];if((vtype!=2&&massid[kvid]['g']==999)||(vtype==3&&mass[gotarrn1]['v']['g']!=3)||(mtype==jmtype1[6]&&massid[kvid]['po']&&vtype!=9)){}else{
                                if(x1p>x2p){
                                    if(((massid[kvid]['x1']>=x1p)||(massid[kvid]['x2']>=x1p)||(massid[kvid]['x1']<=x2p)||(massid[kvid]['x2']<=x2p))&&((massid[kvid]['y1']>=y1p)||(massid[kvid]['y2']>=y1p)||(massid[kvid]['y1']<=y2p)||(massid[kvid]['y2']<=y2p))){
                                        new_blocks[mass1[gotarrn1][i]]=gotarrn1;p--
                                    }
                                    }else{
                                    if(((massid[kvid]['x1']>=x1p&&massid[kvid]['x1']<=x2p)||(massid[kvid]['x2']>=x1p&&massid[kvid]['x2']<=x2p))&&((massid[kvid]['y1']>=y1p&&massid[kvid]['y1']<=y2p)||(massid[kvid]['y2']>=y1p&&massid[kvid]['y2']<=y2p))){
                                        if((massid[kvid]['x2']-massid[kvid]['x1'])>xd||(massid[kvid]['y1']-massid[kvid]['y2'])>yd){}else{
                                            new_blocks[mass1[gotarrn1][i]]=gotarrn1;p--
                                        }
                                        }
                                    }
                                }
                            }
                        }if(p<1)break
                }
                }var curzoomx=map.getZoom();if(showcity==0&&curzoomx>10){
                var curcent=map.getCenter();if(!curcent)return;var ycenter=curcent.y;var xcenter=curcent.x;var r=6378;showcity=1;var dist=99999;var city='';for(var gotarrn1 in blocshow){
                    if(gotarrn1.indexOf('w')==0)continue;gotarrn2='';if(mass[gotarrn1]){
                        var gotarrn2=gotarrn1
                        }else{
                        for(var names in mass){
                            if(names.length<gotarrn1.length){
                                if(gotarrn1.indexOf(names)!=-1&&mass[names]['v']['vnu']!=1&&mass[names]['v']['t']){
                                    var gotarrn2=names
                                    }
                                }
                            }
                        }if(gotarrn2!=''&&mass[gotarrn2]){
                        for(var kvid in mass[gotarrn2]['v']['t']){
                            a1=(ycenter)*(Math.PI/180);b1=(xcenter)*(Math.PI/180);a2=(mass[gotarrn2]['v']['t'][kvid]['y'])*(Math.PI/180);b2=(mass[gotarrn2]['v']['t'][kvid]['x'])*(Math.PI/180);var kmdist=Math.round(Math.acos(Math.cos(a1)*Math.cos(b1)*Math.cos(a2)*Math.cos(b2)+Math.cos(a1)*Math.sin(b1)*Math.cos(a2)*Math.sin(b2)+Math.sin(a1)*Math.sin(a2))*r);if(kmdist<dist){
                                dist=kmdist;city=mass[gotarrn2]['v']['t'][kvid]['t']
                                }
                            }
                        }
                    }if(city!=''){
                    adv_loc=city;if(dist!=0)city+=', '+dist+' km';document.title='WikiMapia: '+city
                    }else{
                    document.title=localization['jsi_motto'];adv_loc=''
                    }
                }else{
                if(showcity==0){
                    document.title=localization['jsi_motto'];showcity=1;adv_loc=''
                    }
                }if(mass['m'])block_mem_show()
                }
        }if(lagtmout)window.clearTimeout(lagtmout);lagtmout=setTimeout(addoverlad_lag,5)
    };function check_point_in_poly(x,y,arxy){
    var intersections=0;var xinters;var vertex1={};vertex2={};var vertices_count=arxy.length;for(var i=2;i<vertices_count;i+=2){
        vertex1['x']=parseInt(arxy[i-2]);vertex1['y']=parseInt(arxy[i-1]);vertex2['x']=parseInt(arxy[i]);vertex2['y']=parseInt(arxy[i+1]);if(vertex1['y']==vertex2['y']&&vertex1['y']==y&&x>Math.min(vertex1['x'],vertex2['x'])&&x<Math.max(vertex1['x'],vertex2['x'])){
            return true
            }if(y>Math.min(vertex1['y'],vertex2['y'])&&y<=Math.max(vertex1['y'],vertex2['y'])&&x<=Math.max(vertex1['x'],vertex2['x'])&&vertex1['y']!=vertex2['y']){
            xinters=(y-vertex1['y'])*(vertex2['x']-vertex1['x'])/(vertex2['y']-vertex1['y'])+vertex1['x'];if(xinters==x){
                return true
                }if(vertex1['x']==vertex2['x']||x<=xinters){
                intersections++
            }
            }
        }if(intersections%2!=0){
        return true
        }else{
        return false
        }
    }function mapttipc(){
    mapttip(0,0,1)
    };function mapttip(point,text,obj){
    if(typeof obj==_un){
        var obj=0
        }if(!point){
        hideFloat();if(obj){
            _gec('pomenu1').style.display=_no;flphoar[39]=0
            }return
    }if(!obj){
        if(_gec('pomenu1').style.display!=_bk||(_gec('pomenu1').style.display==_bk&&_gec('pomenu1').type==2)||flphoar[39]==1){
            if(point.clientM){
                floatToolTip({
                    x:point.clientX,
                    y:point.clientY
                    },'',text)
                }else{
                floatToolTip(map.fromLatLngToContainerPixel(point),'',text)
                }
            }return
    }jwindow3_menu(1);_gec('pomenu1').innerHTML=text;var a={},x,y;if(point.jt){
        x=point.x;y=point.y
        }else if(point.clientM){
        x=point.clientX+15;y=point.clientY-12
        }else{
        a=map.fromLatLngToContainerPixel(point);x=a.x+15;y=a.y-12
        }var b=0;_gec('pomenu1').type=obj;_gec('pomenu1').style.left=x+'px';_gec('pomenu1').style.top=y+'px';if(_gec('pomenu1').style.display!=_bk)_gec('pomenu1').style.display=_bk;if(x+_gec('pomenu1').firstChild.offsetWidth>bwidth){
        x-=40+_gec('pomenu1').firstChild.offsetWidth;b=1
        }if(y+_gec('pomenu1').firstChild.offsetHeight>bheight){
        y-=5+_gec('pomenu1').firstChild.offsetHeight;b=1
        }if(x<0){
        x=0;b=1
        }if(b){
        _gec('pomenu1').style.left=x+'px';_gec('pomenu1').style.top=y+'px'
        }
    };var chosen_poly;function run_poly_check(){
    if(olddover)return;var point=flphoar[42];if(flphoar[41]){
        if(!massid[flphoar[41]]){
            return
        }var a;if(massid[flphoar[41]]['t']){
            a=massid[flphoar[41]]['t']
            }else{
            a=localization['phpjs_click_to_prov']
            }mapttip(point,a);if(kv[flphoar[41]].g_==2||kv[flphoar[41]].g_==10)return;if(!massid[flphoar[41]]['po']||(tagfilter&&oldzoom<12)){
            if(vtype==10)return;if(_gec('pomenu1').style.display==_bk&&!flphoar[39])return;if(flphoar[32]){
                window.clearTimeout(flphoar[32])
                }flphoar[32]=window.setTimeout(mapttipc,1500);flphoar[39]=1;if(tagfilter&&oldzoom<13){
                mapttip(kv[flphoar[41]].getLatLng(),'<span class="add_line" onmouseout="showpolyfn();if (flphoar[32]){window.clearTimeout(flphoar[32]);}flphoar[32]=window.setTimeout(mapttipc,1500);" onmouseover="iconover(\''+flphoar[41]+'\');mapttip();if (flphoar[32]){window.clearTimeout(flphoar[32]);}">'+mmenuline(localization['show_menu_zoomin'],"mapttipc();window.setTimeout('test_zoom("+massid[flphoar[41]]['x1']/10000000+","+massid[flphoar[41]]['y1']/10000000+","+massid[flphoar[41]]['x2']/10000000+","+massid[flphoar[41]]['y2']/10000000+","+massid[flphoar[41]]['zo']+");',50);")+'</span>',1)
                }else if(oldzoom>12){
                mapttip(kv[flphoar[41]].getLatLng(),'<span class="add_line" onmouseout="showpolyfn();if (flphoar[32]){window.clearTimeout(flphoar[32]);}flphoar[32]=window.setTimeout(mapttipc,1500);" onmouseover="iconover(\''+flphoar[41]+'\');mapttip();if (flphoar[32]){window.clearTimeout(flphoar[32]);}">'+mmenuline(localization['phpjs_add_outline'],'hideFloat();loadjs(\'polynew.js\',\'pre_poly_edit('+parseInt(flphoar[41])+');\');')+'</span>',1)
                }
            }return
    }if(tagfilter||(mtype!=jmtype1[5]&&mtype!=jmtype1[6])){
        return
    }if(flphoar[24])return;var x=point.x;var y=point.y;x=Math.round(x*10000000);y=Math.round(y*10000000);var from;var curzoomkv=oldzoom-2;if(wm_vers==5&&oldzoom<10)curzoomkv=oldzoom-3;var outar=getdatakvnameme(x,y,curzoomkv);var gotarrn='w0'+retcode(outar.xline,outar.yline,curzoomkv);while(!mass[gotarrn]){
        gotarrn=gotarrn.slice(0,-1);if(gotarrn.length<2)break
    }if(!mass[gotarrn]){
        many_fn(1);return
    }for(var i=mass[gotarrn]['v']['cnt']-1;i>=0;i--){
        if(flphoar[42]!=point||isdrag)return;var kvid=mass[gotarrn][i+'w'];if(x>massid_poly[kvid]['x1']&&x<massid_poly[kvid]['x2']&&y>massid_poly[kvid]['y1']&&y<massid_poly[kvid]['y2']){
            if(massid_poly[kvid]['x2']-massid_poly[kvid]['x1']>bounds_ms[5]||massid_poly[kvid]['y2']-massid_poly[kvid]['y1']>bounds_ms[6])continue;if(!massid_poly[kvid]['pod']){
                prepolyone(massid_poly[kvid]['po'],kvid,1)
                }var npoints=massid_poly[kvid]['pod'].length-1;var inside=0;for(var z=0,j=npoints-1;z<npoints;j=z,z+=2){
                if(massid_poly[kvid]['pod'][z]>massid_poly[kvid]['pod'][j]){
                    if((massid_poly[kvid]['pod'][z]<x)==(x<=massid_poly[kvid]['pod'][j])&&((y-massid_poly[kvid]['pod'][j+1])*(massid_poly[kvid]['pod'][z]-massid_poly[kvid]['pod'][j])<(massid_poly[kvid]['pod'][z+1]-massid_poly[kvid]['pod'][j+1])*(x-massid_poly[kvid]['pod'][j])))inside++
                }else{
                    if((massid_poly[kvid]['pod'][z]<x)==(x<=massid_poly[kvid]['pod'][j])&&((y-massid_poly[kvid]['pod'][z+1])*(massid_poly[kvid]['pod'][j]-massid_poly[kvid]['pod'][z])<(massid_poly[kvid]['pod'][j+1]-massid_poly[kvid]['pod'][z+1])*(x-massid_poly[kvid]['pod'][z])))inside++
                }
                }inside=(inside%2);if(inside){
                from=kvid;break
            }
            }
        }if(flphoar[42]!=point||isdrag)return;if(from){
        if(from){}if(from){
            if(chosen_poly!=from){
                showpolyfn()
                }_gec("map").firstChild.firstChild.style.cursor="pointer";var a;if(massid_poly[from]['t']){
                a=massid_poly[from]['t']
                }else{
                a=localization['phpjs_click_to_prov']
                }flphoar[34]=a;flphoar[33]=point;mapttip(point,a);if(flphoar[42]!=point||isdrag)return;chosen_poly=from;show_svgdiv(from,point,massid_poly[kvid]['pod'])
            }
        }if(!from){
        many_fn(1)
        }
    };function many_fn(a){
    switch(a){
        case 1:flphoar[35]=0;chosen_poly='';_gec("map").firstChild.firstChild.style.cursor="default";showpolyfn();break
            }
    };function segnorm(seg,seg1){
    var regout=[];if(seg1){
        regout[0]=seg;regout[1]=seg1
        }else{
        regout=seg.split(".")
        }if(!regout[0]||!regout[1])return;var point1=regout[0].split("_");point1[1]=parseInt(point1[1]);point1[0]=parseInt(point1[0]);var point2=regout[1].split("_");point2[1]=parseInt(point2[1]);point2[0]=parseInt(point2[0]);if(point1[0]<point2[0]||(point1[0]==point2[0]&&point1[1]<point2[1])){
        regout[3]=1;regout[4]=2
        }else{
        regout[3]=2;regout[4]=1
        }var fromt1=[];if(regout[0].indexOf('n')!=-1){
        fromt1[1]=1
        }if(regout[1].indexOf('n')!=-1){
        fromt1[2]=1
        }if((fromt1[1]&&!fromt1[2])||(regout[3]>regout[4]&&((!fromt1[1]&&!fromt1[2])||(fromt1[1]&&fromt1[2]))))return regout[1]+"."+regout[0];if(seg1){
        return seg+"."+seg1
        }else{
        return seg
        }
    };var coord_delta=0;var bounds_delta=(is_ie)?0:2;function isEmpty(a){
    if(a==null||a==""||isNaN(a)){
        return false
        }return true
    }var _gecache={};function _gec(obj){
    if(!_gecache[obj])_gecache[obj]=document.getElementById(obj);return _gecache[obj]
    }function _ge(obj){
    return document.getElementById(obj)
    }function addEvent(elem,evname,func){
    if(elem.attachEvent){
        eval("elem.on"+evname+"=func;")
        }else elem.addEventListener(evname,func,false)
        }function _px(px){
    var x=parseInt(px,10);if(isNaN(x))x=0;return x
    }function getLeft(a){
    var b=a.offsetLeft;if(a.offsetParent)b+=getLeft(a.offsetParent);return b
    }function getTop(a){
    var b=a.offsetTop;if(a.offsetParent)b+=getTop(a.offsetParent);return b
    }function getObj(a){
    if(document.getElementById){
        return document.getElementById(a).style
        }else if(document.all){
        return document.all[a].style
        }else if(document.layers){
        return document.layers[a]
        }else return false
        }function shiftTo(obj,x,y){
    if(x<0)x=0;else if(x>image_w-_px(obj.style.width)-bounds_delta)x=image_w-_px(obj.style.width)-bounds_delta;if(y<0)y=0;else if(y>image_h-_px(obj.style.height)-bounds_delta)y=image_h-_px(obj.style.height)-bounds_delta;obj.style.left=x+"px";obj.style.top=y+"px";move_anchors()
    }function resize_at_rb(obj,x,y){
    if(x<_px(obj.style.left)+tn_w_min)x=_px(obj.style.left)+tn_w_min;else if(x>=image_w-bounds_delta)x=image_w-bounds_delta;if(y<_px(obj.style.top)+tn_h_min)y=_px(obj.style.top)+tn_h_min;else if(y>=image_h-bounds_delta)y=image_h-bounds_delta;x-=_px(obj.style.left);y-=_px(obj.style.top);obj.style.width=x+"px";obj.style.height=y+"px";move_anchors()
    }function resize_at_rt(obj,x,y){
    if(x<_px(obj.style.left)+tn_w_min)x=_px(obj.style.left)+tn_w_min;else if(x>=image_w-bounds_delta)x=image_w-bounds_delta;if(y<0)y=0;else if(y>_px(obj.style.top)+_px(obj.style.height)-tn_h_min)y=_px(obj.style.top)+_px(obj.style.height)-tn_h_min;tmp_x=x-_px(obj.style.left);tmp_y=_px(obj.style.height)+_px(obj.style.top)-y;obj.style.width=tmp_x+"px";obj.style.height=tmp_y+"px";obj.style.top=y+"px";move_anchors()
    }function resize_at_lb(obj,x,y){
    if(x<0)x=0;else if(x>_px(obj.style.left)+_px(obj.style.width)-tn_w_min)x=_px(obj.style.left)+_px(obj.style.width)-tn_w_min;if(y<_px(obj.style.top)+tn_h_min)y=_px(obj.style.top)+tn_h_min;else if(y>=image_h-bounds_delta)y=image_h-bounds_delta;tmp_x=_px(obj.style.width)+_px(obj.style.left)-x;tmp_y=y-_px(obj.style.top);obj.style.width=tmp_x+"px";obj.style.height=tmp_y+"px";obj.style.left=x+"px";move_anchors()
    }function resize_at_lt(obj,x,y){
    if(x<0){
        x=0
        }else if(x>_px(obj.style.left)+_px(obj.style.width)-tn_w_min)x=_px(obj.style.left)+_px(obj.style.width)-tn_w_min;if(y<0){
        y=0
        }else if(y>_px(obj.style.top)+_px(obj.style.height)-tn_h_min)y=_px(obj.style.top)+_px(obj.style.height)-tn_h_min;tmp_x=_px(obj.style.width)+_px(obj.style.left)-x;tmp_y=_px(obj.style.height)+_px(obj.style.top)-y;obj.style.width=tmp_x+"px";obj.style.height=tmp_y+"px";obj.style.left=x+"px";obj.style.top=y+"px";move_anchors()
    }function setSelectedObj(e){
    if(e){
        var onObj=e.target
        }else{
        e=window.event;var onObj=e.srcElement
        }if(onObj.id=="tn_area1"||onObj.id=="tn_area"||onObj.id=="left_top"||onObj.id=="left_bottom"||onObj.id=="right_top"||onObj.id=="right_bottom"){
        selectedObj=onObj;return
    }selectedObj=null;return
}function dragIt(e){
    if(e){
        var event=e
        }else{
        var event=window.event
        }if(selectedObj){
        switch(selectedObj.id){
            case"tn_area":shiftTo(_ge("tn_area"),event.clientX-offsetX,event.clientY-offsetY);break;case"tn_area1":shiftTo(_ge("tn_area"),event.clientX-offsetX,event.clientY-offsetY);break;case"jwindow_title_all1":shiftTo(_ge("jwindow"),event.clientX-offsetX,event.clientY-offsetY);break;case"jwindow_title_all2":shiftTo(_ge("jwindow"),event.clientX-offsetX,event.clientY-offsetY);break;case"jwindow2_title_all1":shiftTo(_ge("jwindow2"),event.clientX-offsetX,event.clientY-offsetY);break;case"jwindow2_title_all2":shiftTo(_ge("jwindow2"),event.clientX-offsetX,event.clientY-offsetY);break;case"left_top":resize_at_lt(_ge("tn_area"),event.clientX-offsetX,event.clientY-offsetY);break;case"left_bottom":resize_at_lb(_ge("tn_area"),event.clientX-offsetX,event.clientY-offsetY+anchor_h);break;case"right_top":resize_at_rt(_ge("tn_area"),event.clientX-offsetX+anchor_w,event.clientY-offsetY);break;case"right_bottom":resize_at_rb(_ge("tn_area"),event.clientX-offsetX+anchor_w,event.clientY-offsetY+anchor_h);break
                }return false
        }
    }function engage(e){
    setSelectedObj(e);image_w=document.getElementById('map').offsetWidth;image_h=document.getElementById('map').offsetHeight;if(is_ie||is_op){
        var _tmp1=window.event.offsetX;var _tmp2=window.event.offsetY
        }else{
        var _tmp1=e.layerX;var _tmp2=e.layerY
        }if(selectedObj){
        addEvent(document,"mousemove",dragIt);if(selectedObj.id=='jwindow_title_all1'||selectedObj.id=='jwindow_title_all2'||selectedObj.id=='jwindow2_title_all1'||selectedObj.id=='jwindow2_title_all2'){
            addEvent(_ge(selectedObj.id),"mousemove",dragIt)
            }else{
            addEvent(_ge("left_top"),"mousemove",dragIt);addEvent(_ge("left_bottom"),"mousemove",dragIt);addEvent(_ge("right_top"),"mousemove",dragIt);addEvent(_ge("right_bottom"),"mousemove",dragIt)
            }offsetX=_tmp1-document.body.scrollLeft;offsetY=_tmp2-document.body.scrollTop
        }if(!is_ie&&e.preventDefault)e.preventDefault();return false
    }function release(e){
    if(selectedObj){
        document.onmousemove=null;selectedObj=null
        }return true
    }function make_tn(previewObj){
    return;var x=_px(previewObj.style.left);var y=_px(previewObj.style.top);var w=_px(previewObj.style.width);var h=_px(previewObj.style.height)
    }function move_anchors(fromt){
    if(!oldzoom)return;bwidth=_gec('map').offsetWidth;bheight=_gec('map').offsetHeight;upd_bounds();setCtrMark();if(typeof fromt!=_un){
        if(fromt==1){
            if(jwindow3state==1){
                jwindow3_hide_x(6)
                }
            }
        }if(adding_block==0)return;var add_line_corr=0;if(makingurl>0){
        if(makingurl<3||makingurl>10){
            if(makingurl==1)jwindow3_putweburl();add_line_corr=_ge("add_line").offsetHeight-20
            }else{
            if(makingurl==4)jwindow3_newreg1();add_line_corr=(_px(_ge("tn_area").style.top)+64-_ge("add_line").offsetHeight/2);if(add_line_corr<0)add_line_corr=0;if(add_line_corr+_ge("add_line").offsetHeight>image_h)add_line_corr=image_h-_ge("add_line").offsetHeight;_ge("add_line").style.top=add_line_corr+"px";if(_px(_ge("tn_area").style.left)>image_w/2){
                _ge("add_line").style.left=_px(_ge("tn_area").style.left)-_ge("add_line").offsetWidth+"px"
                }else{
                _ge("add_line").style.left=_px(_ge("tn_area").style.left)+128+"px"
                }return
        }
        }if(is_op&&version!=9)coord_delta=2;_ge("add_line").style.left=_px(_ge("tn_area").style.left)+"px";if(_px(_ge("tn_area").style.top)<(25+add_line_corr)&&image_h-(20+add_line_corr)<_px(_ge("tn_area").style.top)+_px(_ge("tn_area").style.height)){
        _ge("add_line").style.top=(_px(_ge("tn_area").style.top)+5)+"px";_ge("add_line").style.left=(_px(_ge("tn_area").style.left)+5)+"px"
        }else if(_px(_ge("tn_area").style.top)>(25+add_line_corr)){
        _ge("add_line").style.top=(_px(_ge("tn_area").style.top)-(20+add_line_corr))+"px"
        }else{
        _ge("add_line").style.top=(_px(_ge("tn_area").style.top)+_px(_ge("tn_area").style.height)+4)+"px"
        }_ge("left_top").style.left=_px(_ge("tn_area").style.left)+"px";_ge("left_top").style.top=_px(_ge("tn_area").style.top)+"px";_ge("right_top").style.left=(_px(_ge("tn_area").style.left)+_px(_ge("tn_area").style.width)-anchor_w-coord_delta)+"px";_ge("right_top").style.top=_px(_ge("tn_area").style.top)+"px";_ge("left_bottom").style.left=_px(_ge("tn_area").style.left)+"px";_ge("left_bottom").style.top=(_px(_ge("tn_area").style.top)+_px(_ge("tn_area").style.height)-anchor_h-coord_delta)+"px";_ge("right_bottom").style.left=(_px(_ge("tn_area").style.left)+_px(_ge("tn_area").style.width)-anchor_w-coord_delta)+"px";_ge("right_bottom").style.top=(_px(_ge("tn_area").style.top)+_px(_ge("tn_area").style.height)-anchor_h-coord_delta)+"px"
    }function cancel_fastblock(type){
    if(typeof type==_un)var type=0;_ge("tn_area").style.display='none';_ge("add_line").style.display='none';_ge("left_top").style.display='none';_ge("right_top").style.display='none';_ge("left_bottom").style.display='none';_ge("right_bottom").style.display='none';if(adding_block!=3)adding_block=2;if(makingurl==1||type==1){
        _ge("add_line").className='add_line';_ge("add_line").innerHTML=addblmen;makingurl=0;tn_w_min=21;tn_h_min=21;center_block()
        }if(edit_block_id>0){
        edit_block_id=0;center_block()
        }if(tagfilter_mem!=''){
        zfile=0;tagfilter=tagfilter_mem;tagfilter_mem='';update_objects(1);update_uri()
        }
    }function load_add(type){
    if(jwindowstate==1)jwindow3_hide_x(7);var zoom=map.getZoom();if(makingurl==0&&edit_block_id==0){
        if(zoom<13||(blockadd==1&&zoom<17&&!jwindow3_rcookie('uid'))){
            jwindow('',300,140,localization['jsi_sizelimit']);return
        }if(tagfilter!=''){
            tagfilter_mem=tagfilter;tagfilter='';zfile=1;update_objects(1);update_uri();jwindow('',300,100,'Tags filter is temporaly disabled, this need to show all nearest places to avoid duplicates.')
            }if(vtype!=2){
            vtype=0;jtgoff(2)
            }
        }if(adding_block==2){
        if(edit_block_id>0){
            block_edit(type);if(edit_block_id==0)return
        }_ge("tn_area").style.backgroundImage='';move_anchors();_ge("tn_area").style.display='block';_ge("add_line").style.display='block';if(makingurl<3){
            _ge("left_top").style.display='block';_ge("right_top").style.display='block';_ge("left_bottom").style.display='block';_ge("right_bottom").style.display='block'
            }adding_block=1;return
    }if(adding_block==1||adding_block==3){
        _ge("tn_area").style.backgroundImage='';return
    }adding_block=1;offsetX=100;offsetY=100;var tooltipObject=document.createElement("div");tooltipObject.style.zIndex=2000;var inclu='';if(browser=="Internet Explorer"){
        inclu='<div name="tn_area1" id="tn_area1" style="overflow: hidden;FILTER: alpha(opacity=0); BACKGROUND-COLOR: #fff; width:100%;height:100%;"></div>'
        }else if(is_op){
        inclu='<div name="tn_area1" id="tn_area1" style="overflow: hidden;width:100%;height:100%;"><!-- --></div>'
        }tooltipObject.innerHTML='<div id="tn_area" name="tn_area">'+inclu+'</div>';_gec('map').appendChild(tooltipObject);var tooltipObject=document.createElement("div");tooltipObject.innerHTML='<div style="overflow: hidden;BACKGROUND-COLOR: white; " id="left_top"></div>';_gec('map').appendChild(tooltipObject);var tooltipObject=document.createElement("div");tooltipObject.innerHTML='<div style="overflow: hidden;BACKGROUND-COLOR: white; " id="left_bottom"></div>';_gec('map').appendChild(tooltipObject);var tooltipObject=document.createElement("div");tooltipObject.innerHTML='<div style="overflow: hidden;BACKGROUND-COLOR: white; " id="right_top"></div>';_gec('map').appendChild(tooltipObject);var tooltipObject=document.createElement("div");tooltipObject.innerHTML='<div style="overflow: hidden;BACKGROUND-COLOR: white; " id="right_bottom"></div>';_gec('map').appendChild(tooltipObject);addblmen='<span class="addblbut" ONMOUSEOUT="jwindow3_m_bgoff(this);" ONMOUSEOVER="jwindow3_m_bgon(this);" onclick="enter_info_for_block(); return false;" >'+localization['jsi_savebut']+'</span> <span class="addblbut" onclick="cancel_fastblock(); return false;" ONMOUSEOUT="jwindow3_m_bgoff(this);" ONMOUSEOVER="jwindow3_m_bgon(this);">'+localization['jsi_cancelbut']+'</span>';var tooltipObject=document.createElement("div");tooltipObject.innerHTML='<div id="add_line" class="add_line">'+addblmen+'</div>';document.body.appendChild(tooltipObject);linkmake='';tn_w=75;tn_h=75;tn_w_min=21;tn_h_min=21;anchor_w=10;anchor_h=10;tn_x_by_y=tn_w/tn_h;center_block();_ge("left_top").style.width=anchor_w+"px";_ge("left_top").style.height=anchor_h+"px";_ge("right_top").style.width=anchor_w+"px";_ge("right_top").style.height=anchor_h+"px";_ge("left_bottom").style.width=anchor_w+"px";_ge("left_bottom").style.height=anchor_h+"px";_ge("right_bottom").style.width=anchor_w+"px";_ge("right_bottom").style.height=anchor_h+"px";if(edit_block_id>0)block_edit();move_anchors();addEvent(_ge("tn_area"),"mousedown",engage);addEvent(_ge("tn_area"),"mouseup",release);if(is_ie)addEvent(_ge("tn_area1"),"mousedown",engage);if(is_ie)addEvent(_ge("tn_area1"),"mouseup",release);addEvent(_ge("left_top"),"mousedown",engage);addEvent(_ge("left_top"),"mouseup",release);addEvent(_ge("right_top"),"mousedown",engage);addEvent(_ge("right_top"),"mouseup",release);addEvent(_ge("left_bottom"),"mousedown",engage);addEvent(_ge("left_bottom"),"mouseup",release);addEvent(_ge("right_bottom"),"mousedown",engage);addEvent(_ge("right_bottom"),"mouseup",release)
    }function center_block(){
    image_w=document.getElementById('map').offsetWidth;image_h=document.getElementById('map').offsetHeight;var image_s_left=Math.round(image_w/2-38);var image_s_top=Math.round(image_h/2-38);_ge("tn_area").style.left=image_s_left+"px";_ge("tn_area").style.top=image_s_top+"px";_ge("tn_area").style.width=tn_w+"px";_ge("tn_area").style.height=tn_h+"px"
    }var the_x=0;var the_y=0;function pix_razniza(){
    if(picrazhash==window.location.hash)return;picrazhash=window.location.hash;var curcent=map.getCenter();var rectBounds=new GLatLngBounds(new GLatLng(curcent.y,curcent.x),new GLatLng(curcent.y,curcent.x));var fromt;map.addOverlay(fromt=new Rectangle(rectBounds,'point','point'));var rea=_ge('kvpoint');the_x=_px(rea.style.left);the_y=_px(rea.style.top);image_h=document.getElementById('map').offsetHeight;image_w=document.getElementById('map').offsetWidth;the_x=the_x-Math.round(image_w/2);the_y=the_y-Math.round(image_h/2);map.removeOverlay(fromt)
    }function get_coords_n_save(){
    pix_razniza();var xtleft=_px(_ge('tn_area').style.left);var yttop=_px(_ge('tn_area').style.top);var xx=xtleft*1+the_x*1;var yy=yttop*1+the_y*1;var xx1=xx+(_ge('tn_area').offsetWidth)*1;var yy1=yy+(_ge('tn_area').offsetHeight)*1;if(is_op){
        xx+=1;yy+=1;xx1+=3;yy1+=1
        }else{
        xx+=1;yy+=1;xx1+=1;yy1+=1
        }var pointa=map.fromDivPixelToLatLng(new GPoint(xx,yy)).toString();var pointa1=map.fromDivPixelToLatLng(new GPoint(xx1,yy1)).toString();var re1=/([\d\.\-]+), ?([\d\.\-]+)/im;coord1=re1.exec(pointa);coord2=re1.exec(pointa1);fast_save()
    }function enter_info_for_block(){
    adding_block=3;get_coords_n_save();cancel_fastblock()
    }function fast_save(){
    var id='';if(edit_block_id>0){
        id='&id='+edit_block_id;edit_block_id*=0
        }var zoom=map.getZoom();var url="/sys/save4/?do=svrc";var query='zoom='+zoom+id+'&x1='+coord1[2]+'&x2='+coord2[2]+'&y2='+coord1[1]+'&y1='+coord2[1]+tmpstr;tmpstr='';loadXML(url,'',query);center_block()
    }function window_edit(id,xy){
    if(edit_block_id<0){
        edit_block_id=0;return
    }var add='';if(typeof xy!=_un){
        add='&xy='+xy
        }jwindow('/sys/edit_wiki5/?id='+id+'&new=1&lng='+lng+add)
    }function checklng(){
    var text=_ge('wikiedit').form_name.value;if(_ge('wikiedit').langid.type=='hidden'){
        if(_ge('wikiedit').langid.value!='0')return
    }else{
        if(_ge('wikiedit').langid.options[_ge('wikiedit').langid.selectedIndex].value!='0')return
    }var tar=text.split('');for(var t in tar){
        if(tar[t].charCodeAt(0)>126){
            document.getElementById('lngwrn').innerHTML=' <b>'+localization['jsi_changelng_propose']+'</b>';return
        }
        }document.getElementById('lngwrn').innerHTML=''
    }function lowstr(text){
    var nch=1;if(text.length<5)nch=0;var capsu=text.match(/[A-Z]/g);var capsl=text.match(/[a-z]/g);if(capsl&&!capsu)nch=0;if(capsl&&capsu){
        if(capsl.length>=capsu.length)nch=0
            }if(capsu){}if(nch==0)return text;var text1=new StringBuffer();var tar=text.split('');for(var t in tar){
        if(nch!=1)tar[t]=tar[t].toLowerCase();text1.append(tar[t]);nch=0;if(tar[t].match(/[\(\. '"\-`;\xAB]/)){
            nch=1
            }
        }return text1.toString()
    }function swb_lstr(obje){
    obje.value=lowstr(obje.value)
    }function addtag(obje){
    is_changed++;var text=_ge('wikiedit').form_tags.value;if(text.indexOf(obje)==-1){
        _ge('wikiedit').form_tags.value+=' '+obje
        }
    }function save_wiki_block(){
    if(_ge('wikiedit').langid.type!='hidden'){
        if(_ge('wikiedit').langid.options[_ge('wikiedit').langid.selectedIndex].value==''){
            alert(localization['jsi_chooselang']);_ge('wikiedit').langid.focus();return false
            }
        }if(_ge('wikiedit').wikipedia.value!=''){
        if(_ge('wikiedit').wikipedia.value.match(/^http:\/\/[\w\-]+\.wikipedia\.org\/[\w\-]+\/[^@]+$/)){}else{
            alert(localization['jsi_wiki_incor']);_ge('wikiedit').wikipedia.focus();return false
            }
        }adv_loc2=_ge('wikiedit').form_name.value;if(_ge('wikiedit').id.value==0){
        is_changed++;is_t_changed++
    }if(is_changed>0){
        if(is_t_changed>0){
            doafterxmlget='clear_cache();update_objects(1);'
            }loadXML('/sys/save4/?do=saveinfo','wikiedit','');jwindow('',0,0,loadimg)
        }else{
        if(_ge('wikiedit').id.value>0){
            var tmp="/"+_ge('wikiedit').id.value+"/";if(_ge('wikiedit').langid.value>0){
                tmp=tmp+l_id[_ge('wikiedit').langid.value]+'/'
                }on_jwindowclose='jwindow("'+tmp+'",0,0,"",2);'
            }jwindow_close()
        }
    }function zoom_from_inf(a,b,zoom){
    a=parseFloat(a);b=parseFloat(b);map.savePosition();curzoom=zoom;if((curzoom>5&&oldzoom<6)||(curzoom<6&&oldzoom>5)||Math.abs(oldzoom-curzoom)>3){
        del_all_obj()
        }if((curzoom!=oldzoom)&&(mtype=="a")){
        if(curzoom>10){
            setmap=G_SATELLITE_MAP
            }else{
            setmap=G_HYBRID_MAP
            }var tktest=map.getCurrentMapType().getName();if(tktest!=setmap){
            map.setMapType(setmap)
            }zoominchange=1
        }oldzoom=curzoom;nolagupd=1;if(zoom==0)zoom=15;if(edit_block_id){
        map.setCenter(new GLatLng(b,a),zoom)
        }else{
        map.setZoom(zoom);map.panTo(new GLatLng(b,a))
        }
    }function test_zoom(x1,y1,x2,y2,zoomreal,nozoom,obj){
    if(typeof nozoom==_un){
        var nozoom=0
        }x1=parseFloat(x1);y1=parseFloat(y1);x2=parseFloat(x2);y2=parseFloat(y2);var zooma=zoomreal;if(nozoom!=1){
        zooma=map.getBoundsZoomLevel(new GLatLngBounds(new GLatLng(y1,x1),new GLatLng(y2,x2)))
        }if(x1>x2){
        var xcentr=(x1+x2+360)/2;if(xcentr>180){
            xcentr=xcentr-360
            }
        }else{
        var xcentr=(x1+x2)/2
        }var ycentr=(y1+y2)/2;if(typeof zoomreal!=_un&&nozoom!=1){
        if(zoomreal&&zoomreal<zooma)zooma=zoomreal
            }markobj=obj;zoom_from_inf(xcentr,ycentr,zooma);if(typeof obj!=_un){
        if(typeof _ge('kv'+obj)!=_un){
            if(_ge('kv'+obj)){
                _ge('kv'+obj).style.border="1px solid #FBA723"
                }
            }else{
            markobj=obj
            }
        }
    }function pre_block_edit(id,type){
    jwindow_close();var zoom=map.getZoom();if(zoom<13){}if(edit_block_id==0){
        edit_block_id=id
        }else{
        return
    }edit_block_id=id;doafterxmlget='load_add();';if(typeof type!=_un){
        doafterxmlget='load_add(3);';tmpstr='&up=1'
        }else{
        tmpstr=''
        }fast('/sys/save4/?freq=1&id='+id+tmpstr)
    }var recloop=0;function block_edit(from){
    var preparce=xmlhttp.responseText;var cinf=preparce.split('|');for(var t=0;t<6;t++){
        cinf[t]=parseFloat(cinf[t])
        }cinf[0]=parseInt(cinf[0]);cinf[1]=parseInt(cinf[1])/10000000;cinf[2]=parseInt(cinf[2])/10000000;cinf[3]=parseInt(cinf[3])/10000000;cinf[4]=parseInt(cinf[4])/10000000;cinf[5]=parseInt(cinf[5]);if(cinf[6]){
        flphoar[19]=cinf[6]
        }else{
        flphoar[19]=''
        }var goodout=0;goodout=positioning(cinf[1],cinf[2],cinf[3],cinf[4],cinf[5]);if(goodout==0){
        cancel_fastblock();edit_block_id=0;adding_block=0;recloop=0;return
    }if(goodout==2){
        cancel_fastblock();if(typeof from!=_un){
            if(from==4){
                alert(localization['jsi_move_visible'])
                }
            }recloop++;edit_block_id=cinf[0];if(recloop==2){
            recloop=0;adding_block=0;cancel_fastblock();return
        }else{
            load_add(4)
            }
        }else{
        recloop=0;move_anchors()
        }
    }function positioning(x,y,x1,y1,zoom,id){
    var tempp1=map.fromLatLngToDivPixel(new GLatLng(y,x));var tempp2=map.fromLatLngToDivPixel(new GLatLng(y1,x1));pix_razniza();var xx=tempp1.x*1-the_x*1-1;var yy=tempp1.y*1-the_y*1-1;var xx1=tempp2.x*1-the_x*1;var yy1=tempp2.y*1-the_y*1;var fromt=1;if(xx1-xx<21||yy1-yy<21||xx1>image_w||yy1>image_h||xx<0||yy<0){
        test_zoom(x,y,x1,y1,zoom);return 2
        }_ge("tn_area").style.left=(xx)+"px";_ge("tn_area").style.top=(yy)+"px";if(is_op)yy1+=2;if(is_ie){
        yy1+=2;xx1+=2
        }_ge("tn_area").style.width=(xx1-xx-3)+"px";_ge("tn_area").style.height=(yy1-yy-3)+"px";return 1
    }function do_save_func(xmlDoc){
    update_objects()
    }function del_obj(id,alert1){
    var cancel=0;var txt='';var alert2=localization['jsi_delete_ask'];if(typeof alert1==_un){
        var alert1=alert2
        }if(alert1==1){
        alert1=alert2;txt='&up=1'
        }if(alert1!='skipconfirm'&&realconfirm(alert1)==false)return false;fast('/sys/save4/?del=1&id='+id+txt);jwindow_close()
    }function open_history(id,lng,type){
    var url='/sys/show4/?id='+id+'&lng='+lng;if(typeof type!=_un){
        url+='&up=1'
        }if(whatinwin=='his'){
        whatinwin='';jwindow(url,1);return false
        }else{
        url+='&hist=1';whatinwin='his';jwindow(url)
        }
    }function realconfirm(info){
    if(typeof info==_un)info=localization['jsi_ask_sure'];if(!confirm(info))return false;return true
    }function objvote(id,mark,idname){
    fast('/sys/save4/?objvote=1&id='+id+'&mark='+mark);idname.parentNode.innerHTML='<span class=normalwrn>'+localization['jsi_thanks_vote']+'</span>'
    }Function.prototype.bind=function(scope){
    var _function=this;return function(){
        return _function.apply(scope,arguments)
        }
    };if(!(noifr||(is_ie&&version==6))){
    window.ImageProgressbar={
        tilesSources:/mt[0-9]{0,3}\.google\.com|mlt[0-9]{0,3}\.google\.com|khm[0-9]{0,3}\.google\.com|i[0-9]{0,3}.wikimapia.org/i,
        tickTime:1000,
        maximumLoadingTicks:10,
        currentLoadingTime:0,
        timerStopped:false,
        allTotal:0,
        allLoaded:0,
        images:[],
        bufferCounter:-1,
        add:function(img){
            this.images.push(img);this.currentLoadingTime=0;this.bufferCounter=-1;this.timerStopped=false
            },
        reject:function(img){
            var target=-1;for(var i=0;i<this.images.length;i++){
                if(this.images[i]==img){
                    target=i
                    }
                }if(target+1){
                this.images.splice(target,1)
                }
            },
        isAllTextTilesLoaded:function(){
            var cnt=0;for(var gotarrn in blocshow){
                cnt++;if(mass[gotarrn]){
                    cnt--;continue
                }for(var names in mass){
                    if(names.length<gotarrn.length){
                        if(gotarrn.indexOf(names)!=-1&&mass[names]['v']['vnu']!=1){
                            cnt--;continue
                        }
                        }
                    }
                }if(cnt){
                return false
                }else{
                return true
                }
            },
        timer:function(){
            if(this.timerStopped){
                return
            }var total=0;var loaded=0;var len=this.images.length;var _images=[];for(var i=0;i<len;i++){
                if(this.images[i].src.match(this.tilesSources)){
                    total++;if(this.images[i].width){
                        loaded++
                    }else{
                        _images.push(this.images[i])
                        }
                    }
                }this.images=_images;if(this.bufferCounter==this.images.length){
                this.currentLoadingTime+=this.tickTime
                }else{
                this.bufferCounter=this.images.length;this.currentLoadingTime=0
                }if(this.currentLoadingTime>=this.maximumLoadingTicks*this.tickTime){
                this.images=[];this.onLoadingTimeout(this.currentLoadingTime,this.maximumLoadingTime,this.allTotal+total,this.allLoaded+loaded);this.timerStopped=true
                }else if(this.allTotal!=0&&this.allTotal+total==this.allLoaded+loaded&&this.isAllTextTilesLoaded()){
                this.onLoad(this.currentLoadingTime,this.allTotal+total);this.timerStopped=true
                }else{
                this.onLoading(this.currentLoadingTime,this.allTotal+total,this.allLoaded+loaded)
                }this.allTotal+=loaded;this.allLoaded=this.allTotal
            },
        onLoading:function(loadingTime,total,loaded){
            var loader=document.getElementById('loadim');if(loader){
                loader.className='nana'
                }var wikilogo=document.getElementById('wmlo');if(wikilogo){
                wikilogo.className='nan';document.getElementById('wmlo-text').className=''
                }
            },
        onLoadingTimeout:function(loadingTime,maximumLoadingTime,total,loaded){
            document.getElementById('loadim').className='nana nan';document.getElementById('wmlo').className='';document.getElementById('wmlo-text').className='nan'
            },
        onLoad:function(loadingTime,total){
            document.getElementById('loadim').className='nana nan';document.getElementById('wmlo').className='';document.getElementById('wmlo-text').className='nan'
            },
        init:function(){
            window.setInterval(this.timer.bind(this),this.tickTime)
            }
        };window.ImageProgressbar.init();window.WikimapiaProtectedImage=window.Image;window.Image=function(w,h){
        var img=new window.WikimapiaProtectedImage();img.onerror=function(){
            window.ImageProgressbar.reject(this)
            };window.ImageProgressbar.add(img);return img
        };window.Image.prototype=window.WikimapiaProtectedImage.prototype
        };var extControllsInitializer=function(){
    if(!(noifr)){
        var offsetTop=30;var buttons={};function makeButton(name,map,position,params){
            if(params.iconClass&&params.iconImage){
                if(is_ie&&version==6){
                    params.iconClass=''
                    }else{
                    params.iconImage=''
                    }
                }params.title=params.title||'';params.text=params.text||'';params.title=params.title.replace('&nbsp;','');var button=new WikimapiaButton(params);map.addControl(button,position);buttons[name]=button;return button
            };makeButton('add_pace',map,new GControlPosition(G_ANCHOR_TOP_LEFT,new GSize(3,offsetTop)),{
            listener:function(){
                if(!chknotsvall(0)){
                    return false
                    }loadjs('polynew.js','addplacefn();');if(jwindow3state==1){
                    jwindow3_hide_x(3)
                    }jwindow3_menu(1)
                },
            title:localization['add_place'],
            iconImage:'/img/menu/menu_03_44.png',
            iconClass:'menu-spt spt-menu_03_44'
        });makeButton('ruller',map,new GControlPosition(G_ANCHOR_TOP_LEFT,new GSize(33,offsetTop)),{
            listener:function(){
                if(!chknotsvall(19)){
                    return false
                    }loadjs('polynew.js');loadjs('geotools.js','if(is_addfn){cancelpoly();}mesdist();');jwindow3_menu(1)
                },
            title:localization['jsi_dismeas'],
            iconImage:'/img/menu/menu_02_17.png',
            iconClass:'menu-spt spt-menu_02_17'
        });makeButton('hotels_booking',map,new GControlPosition(G_ANCHOR_TOP_LEFT,new GSize(63,offsetTop)),{
            listener:function(){
                hotelon()
                },
            title:localization['jsi_hotel_booking']||'Hotel Booking',
            iconImage:'http://www.booking.com/static/img/marker-hotel-blue.png'
        })
        }
    };var extControllsInitializerEvent=function(){
    if(window.map){
        extControllsInitializer()
        }else{
        window.setTimeout(extControllsInitializerEvent,200)
        }
    };extControllsInitializerEvent();var Infowin={
    wrapperId:'wikimapia-infowindow-wrapper',
    sprite:'/img/wikimapia-infowin.png',
    infowin:{
        normal:{
            left:0,
            top:0,
            width:316,
            height:76
        },
        information:{
            left:0,
            top:-77,
            width:316,
            height:76
        },
        forbidden:{
            left:0,
            top:-154,
            width:316,
            height:76
        },
        alert:{
            left:0,
            top:-231,
            width:316,
            height:76
        }
        },
    normal:function(text){
        this.show(text,'normal')
        },
    information:function(text){
        this.show(text,'information')
        },
    forbidden:function(text){
        this.show(text,'forbidden')
        },
    alert:function(text){
        this.show(text,'alert')
        },
    show:function(text,type){
        if(!this.infowin[type]){
            type='infowin'
            };this.text.innerHTML=text;this.background.style.left=this.infowin[type].left+"px";this.background.style.top=this.infowin[type].top+"px";this.wrapper.style.display=''
        },
    init:function(){
        this._is_ie="\v"=="v";this.wrapper=document.createElement('div');this.wrapper.setAttribute('id','wikimapia-infowindow-wrapper');this.wrapper.style.position='absolute';this.wrapper.style.left='0px';this.wrapper.style.top='70px';this.wrapper.style.width='100%';this.wrapper.style.display='none';this.wrapper.innerHTML=['<table style="width: 100%;"><tbody><tr><td align="center">','<div style="width: 316px; height: 76px; text-align: left; cursor: pointer;">','</div>','</td></tr></tbody></table>'].join('');var container=this.wrapper.getElementsByTagName('div')[0];var result=this.makeImgDiv_(this.sprite,this.infowin.normal);this.background=result[1];var tmpBackground=result[0];container.appendChild(tmpBackground);this.text=document.createElement('div');this.text.style.marginTop='-66px';this.text.style.marginLeft='10px';this.text.style.width='280px';this.text.style.height='56px';this.text.style.overflow='hidden';this.text.style.fontFamily='Arial';this.text.style.position='relative';this.text.style.color='#000';this.text.innerHTML='123';container.appendChild(this.text);document.getElementsByTagName('body')[0].appendChild(this.wrapper);GEvent.bindDom(document,"click",this,this.onGlobalDocumentClick);return this
        },
    makeImgDiv_:function(imgSrc,params){
        var imgDiv=document.createElement("div");imgDiv.style.overflow="hidden";if(params.width){
            imgDiv.style.width=params.width+"px"
            }if(params.height){
            imgDiv.style.height=params.height+"px"
            }var img=null;if(!this._is_ie){
            img=new Image();img.src=imgSrc
            }else{
            img=document.createElement("div");if(params.width){
                img.style.width=params.width+"px"
                }if(params.height){
                img.style.height=params.height+"px"
                }
            }img.style.position="relative";img.style.left=params.left+"px";img.style.top=params.top+"px";img.style.filter="progid:DXImageTransform.Microsoft.AlphaImageLoader(src='"+imgSrc+"')";imgDiv.appendChild(img);return[imgDiv,img]
        },
    onGlobalDocumentClick:function(){
        this.wrapper.style.display='none'
        }
    };var InfowinControllsInitializerEvent=function(){
    if(window.map){
        Infowin.init()
        }else{
        window.setTimeout(InfowinControllsInitializerEvent,200)
        }
    };InfowinControllsInitializerEvent();if(typeof console==_un){
    var console={};console.log=function(from){}
        }var iconr0=new GIcon();iconr0.image="/img/pdo.png";iconr0.iconSize=new GSize(9,9);iconr0.iconAnchor=new GPoint(5,5);iconr0.dragCrossImage="/img/mdr.gif";iconr0.dragCrossSize=new GSize(15,15);iconr0.dragCrossAnchor=new GPoint(8,8);var iconw0=new GIcon();iconw0.image="/img/m.png";iconw0.iconSize=new GSize(9,9);iconw0.iconAnchor=new GPoint(5,5);var iconw=new GIcon();iconw.image="/img/m.png";iconw.iconSize=new GSize(9,9);iconw.iconAnchor=new GPoint(5,5);var iconu=[];iconu[1]=new GIcon();iconu[1].image="/img/po1.gif";iconu[1].iconSize=new GSize(15,15);iconu[1].iconAnchor=new GPoint(8,8);iconu[2]=new GIcon();iconu[2].image="/img/po2.gif";iconu[2].iconSize=new GSize(15,15);iconu[2].iconAnchor=new GPoint(8,8);iconu[3]=new GIcon();iconu[3].image="/img/crossi.png";iconu[3].iconSize=new GSize(64,64);iconu[3].iconAnchor=new GPoint(32,32);iconu[4]=new GIcon();iconu[4].image="/img/pdo.png";iconu[4].dragCrossImage="/img/mdr.gif";iconu[4].iconSize=new GSize(5,5);iconu[4].iconAnchor=new GPoint(3,3);iconu[4].dragCrossSize=new GSize(15,15);iconu[4].dragCrossAnchor=new GPoint(8,8);var oldcurpo;function checkmover(point,a){
    if(doppomar[2]){
        selunhigh1();selarr1={};return
    }if((selfn==1&&vtype==6)||(vtype!=5&&vtype!=6)||(doppomar[1]!=5&&doppomar[1]))return;var x1={},x2={},x0={};x0.x=(Math.floor(bounds_ms[0]+(point.x)*bounds_ms[1]));x0.y=(Math.floor(bounds_ms[0]-0.5*Math.log((1+Math.sin((point.y/180)*Math.PI))/(1-Math.sin((point.y/180)*Math.PI)))*bounds_ms[2]));var nearseg;var fromt1;for(var kvid in rsegmshow){
        if(ltype==10){
            if(rsegments[kvid]&&rsegments[kvid]['rt']>1)continue
        }var regout=kvid.split(".");x1.x=(Math.floor(bounds_ms[0]+(rpoints[regout[0]]['x'])*bounds_ms[1]));x1.y=(Math.floor(bounds_ms[0]-0.5*Math.log((1+Math.sin((rpoints[regout[0]]['y']/180)*Math.PI))/(1-Math.sin((rpoints[regout[0]]['y']/180)*Math.PI)))*bounds_ms[2]));x2.x=(Math.floor(bounds_ms[0]+(rpoints[regout[1]]['x'])*bounds_ms[1]));x2.y=(Math.floor(bounds_ms[0]-0.5*Math.log((1+Math.sin((rpoints[regout[1]]['y']/180)*Math.PI))/(1-Math.sin((rpoints[regout[1]]['y']/180)*Math.PI)))*bounds_ms[2]));var dist=proxlintrue(x0.x,x0.y,x1.x,x1.y,x2.x,x2.y,true);var g=0;if(rsegmshowv[kvid]){
            g=rsegmshow[rsegmshowv[kvid]].weight-2
            }else{
            g=rsegmshow[kvid].weight-2
            }g=g/2;if(dist<g){
            if(!fromt1){
                nearseg=kvid;fromt1=dist
                }else{
                var y1=0;var y2=0;if(rsegments[nearseg]){
                    if(rsegments[nearseg]['sid']){
                        y1=rsegments[nearseg]['sid']
                        }
                    }if(rsegments[kvid]){
                    if(rsegments[kvid]['sid']){
                        y2=rsegments[kvid]['sid']
                        }
                    }if(y1!=y2){
                    nearseg='';break
                }
                }
            }
        }if(a){
        if(nearseg){
            return nearseg
            }else{
            return false
            }
        }if(nearseg){
        if(pcenicon&&plineprev&&!pcenicon.isHidden()&&!plineprev.isHidden()){
            for(var kvid in selarr1){
                selunhigh1();selarr1={};break
            }selarr1[nearseg]=1;selhigh1();return
        }if(!selarr1[nearseg]){
            for(var kvid in selarr1){
                selunhigh1();selarr1={};break
            }selarr1[nearseg]=1;var y1=0;if(rsegments[nearseg]){
                if(rsegments[nearseg]['sid']){
                    y1=rsegments[nearseg]['sid'];for(var kvid in rsegmshow){
                        if(rsegments[kvid]){
                            if(rsegments[kvid]['sid']){
                                if(rsegments[nearseg]['sid']==rsegments[kvid]['sid'])selarr1[kvid]=1
                                    }
                            }
                        }
                    }
                }if(y1==0){
                selnosid(nearseg,0)
                }selhigh1()
            }if(rsegments[nearseg]){
            if(rsegments[nearseg]['sid']){
                cro['menuin']='<div>'+givername(rsegments[nearseg]['sid'])+'</div>';if(!doppomar[1]||doppomar[1]==5){
                    mapttip(point,cro['menuin']);if(rsegments[nearseg]['wa']){
                        doppomar[0]=nearseg;showaydir(rsegments[nearseg]['wa'])
                        }return
                }
                }if(rsegments[nearseg]['wa']){
                doppomar[0]=nearseg;showaydir(rsegments[nearseg]['wa'])
                }
            }if(doppomar[1]==5)dotpomenuoff()
            }else{
        for(var kvid in selarr1){
            if(doppomar[1]==5)dotpomenuoff();hideFloat();selunhigh1();selarr1={};break
        }
        }
    }function selhigh1(){
    for(var kvid in selarr1){
        var regout=kvid.split(".");if(rsegmshow[kvid])addseg(regout[0],regout[1],10)
            }
    }function selunhigh1(){
    for(var kvid in selarr1){
        var regout=kvid.split(".");if(rsegmshow[kvid])addseg(regout[0],regout[1])
            }
    }function givername(from){
    if(!rroads[from+'i'])return'';if(rroads[from+'i'][lng])return rroads[from+'i'][lng];if(rroads[from+'i'][0])return rroads[from+'i'][0];for(var kvid in rroads[from+'i']){
        return rroads[from+'i'][kvid]
        }
    }function selnosid(sid,from){
    if(ltype!=0)return;var regout=sid.split(".");var x=[];var y={};for(var g=0;g<regout.length;g++){
        var poi=regout[g];var z=0;for(var kvid in rpoints[poi]['s']){
            z++
        }if(z>2){
            continue
        }for(var kvid in rpoints[poi]['s']){
            if(kvid==regout[0]||kvid==regout[1])continue;var poi0=poi;var poi2=kvid;var poi3='';z=0;while(z==0){
                var seg=segnorm(poi2,poi0);var y1=0;var y2=0;if(rsegments[seg]){
                    if(rsegments[seg]['sid']){
                        break
                    }if(rsegments[seg]['rt']){
                        y1=rsegments[seg]['rt']
                        }
                    }if(rsegments[sid]){
                    if(rsegments[sid]['rt']){
                        y2=rsegments[sid]['rt']
                        }
                    }if(y1!=y2){
                    break
                }x.push(seg);y[seg]=1;var a=0;z=1;for(var kvid1 in rpoints[poi2]['s']){
                    a++;if(poi0!=kvid1)poi3=kvid1
                        }if(a<3){
                    if(a==2){
                        var seg=segnorm(poi2,poi3);if(!y[seg]){
                            var y1=0;var y2=0;if(rsegments[seg]){
                                if(rsegments[seg]['sid']){
                                    break
                                }if(rsegments[seg]['rt']){
                                    y1=rsegments[seg]['rt']
                                    }
                                }if(rsegments[sid]){
                                if(rsegments[sid]['rt']){
                                    y2=rsegments[sid]['rt']
                                    }
                                }if(y1!=y2){
                                break
                            }x.push(seg);y[seg]=1;z=0;poi0=poi2;poi2=poi3;poi3=''
                            }
                        }
                    }
                }
            }
        }for(var g=0;g<x.length;g++){
        if(from==0){
            selarr1[x[g]]=1
            }else if(from==1){
            selarr[x[g]]=1
            }
        }
    }var maxrtype;var oldzoomro=0;var redrtimer;var getco;var getcoTM;var getcolp;var selarr1={};function drawroads(param){
    if(mtype=='h'||mtype=='m'||mtype=='t'){
        show_binf();return
    }if(vtype==5){
        showrinfo1()
        }if(oldzoom<13){
        if((ltype==2||ltype==10)&&oldzoom>9){
            checksvbut()
            }else{
            del_all_obj();checksvbut();return
        }
        }else{
        checksvbut()
        }if(typeof param==_un){
        if(redrtimer){
            clearTimeout(redrtimer)
            }redrtimer=0;for(var kvid in blocshow){
            redrtimer++;for(var seg in mass){
                if(kvid.indexOf(seg)!=-1){
                    redrtimer--;break
                }
                }
            }if(redrtimer){
            console.log('asked to wait long time.');redrtimer=window.setTimeout(function(){
                drawroads(1)
                },500)
            }else{
            redrtimer=window.setTimeout(function(){
                drawroads(1)
                },200)
            }return
    }doppomar[5]=0;for(var kvid in rsegmshowv){
        if(!rsegmshow[kvid]){
            delete rsegmshowv[kvid]
        }
        }bounds=map.getBounds();bounds_sw=bounds.getSouthWest();bounds_ne=bounds.getNorthEast();var x1p=bounds_sw.lng();var y1p=bounds_sw.lat();var x2p=bounds_ne.lng();var y2p=bounds_ne.lat();var dis=bounds_sw.distanceFrom(bounds_ne);console.log('view dis'+dis);var obj={};for(var poi in rpoints){
        if(x1p>x2p){
            if(((rpoints[poi]['x']>=x1p)||(rpoints[poi]['x']<=x2p))&&((rpoints[poi]['y']>=y1p)||(rpoints[poi]['y']<=y2p))){
                obj[poi]=1
                }
            }else{
            if((rpoints[poi]['x']>=x1p&&rpoints[poi]['x']<=x2p)&&(rpoints[poi]['y']>=y1p&&rpoints[poi]['y']<=y2p)){
                obj[poi]=1
                }
            }
        }x1p-=0.03;y1p-=0.03;x2p+=0.03;y2p+=0.03;new_rpoints={};var not_showseg={};for(var poi in rpoints){
        if(obj[poi]){
            new_rpoints[poi]=1;continue
        }var from=0;if(x1p>x2p){
            if(((rpoints[poi]['x']>=x1p)||(rpoints[poi]['x']<=x2p))&&((rpoints[poi]['y']>=y1p)||(rpoints[poi]['y']<=y2p))){
                from=1
                }
            }else{
            if((rpoints[poi]['x']>=x1p&&rpoints[poi]['x']<=x2p)&&(rpoints[poi]['y']>=y1p&&rpoints[poi]['y']<=y2p)){
                from=1
                }
            }if(from){
            for(var seg in rpoints[poi]['s']){
                if(!rpoints[seg])continue;if(interlins({
                    x:rpoints[poi]['x'],
                    y:rpoints[poi]['y']
                    },{
                    x:rpoints[seg]['x'],
                    y:rpoints[seg]['y']
                    },{
                    x:bounds_sw.lng(),
                    y:bounds_sw.lat()
                    },{
                    x:bounds_sw.lng(),
                    y:bounds_ne.lat()
                    })||interlins({
                    x:rpoints[poi]['x'],
                    y:rpoints[poi]['y']
                    },{
                    x:rpoints[seg]['x'],
                    y:rpoints[seg]['y']
                    },{
                    x:bounds_sw.lng(),
                    y:bounds_sw.lat()
                    },{
                    x:bounds_ne.lng(),
                    y:bounds_sw.lat()
                    })||interlins({
                    x:rpoints[poi]['x'],
                    y:rpoints[poi]['y']
                    },{
                    x:rpoints[seg]['x'],
                    y:rpoints[seg]['y']
                    },{
                    x:bounds_ne.lng(),
                    y:bounds_ne.lat()
                    },{
                    x:bounds_sw.lng(),
                    y:bounds_ne.lat()
                    })||interlins({
                    x:rpoints[poi]['x'],
                    y:rpoints[poi]['y']
                    },{
                    x:rpoints[seg]['x'],
                    y:rpoints[seg]['y']
                    },{
                    x:bounds_ne.lng(),
                    y:bounds_ne.lat()
                    },{
                    x:bounds_ne.lng(),
                    y:bounds_sw.lat()
                    })){
                    new_rpoints[poi]=1
                    }else{
                    not_showseg[segnorm(poi,seg)]=1
                    }
                }
            }
        }x1p=bounds_sw.lng();y1p=bounds_sw.lat();x2p=bounds_ne.lng();y2p=bounds_ne.lat();var removepoi={};if(vtype==6){
        var g=0;for(var poi in new_rpoints){
            g++
        }console.log('TO SHOW POI?: '+g);if(g>500||(is_ie&&g>100)){
            doppomar[5]=1;console.log('TOO MIUCH! POI: '+g);show_binf();for(var poi in rpointshow){
                removepoi[poi]=1
                }
            }
        }for(var poi in rpointshow){
        if(x1p>x2p){
            if(((rpoints[poi]['x']>=x1p)||(rpoints[poi]['x']<=x2p))&&((rpoints[poi]['y']>=y1p)||(rpoints[poi]['y']<=y2p))){}else{
                if(!new_rpoints[poi])removepoi[poi]=1
                    }
            }else{
            if((rpoints[poi]['x']>=x1p&&rpoints[poi]['x']<=x2p)&&(rpoints[poi]['y']>=y1p&&rpoints[poi]['y']<=y2p)){}else{
                if(!new_rpoints[poi])removepoi[poi]=1
                    }
            }
        }if(vtype==6){
        for(var kvid in rsegmshow){
            var regout=kvid.split(".");for(var i=0;i<2;i++){
                if(removepoi[regout[i]]||rpointshow[regout[i]])continue;if(!new_rpoints[regout[i]])removepoi[regout[i]]=1;continue
            }
            }
        }var seg1={};for(var poi in removepoi){
        if(rpointshow[poi]&&rpointshow[poi]!=1){
            map.removeOverlay(rpointshow[poi])
            }if(poilisteners[poi]){
            GEvent.removeListener(poilisteners[poi])
            }if(poilisteners1[poi]){
            GEvent.removeListener(poilisteners1[poi])
            }if(poilisteners2[poi]){
            GEvent.removeListener(poilisteners2[poi])
            }if(poilisteners3[poi]){
            GEvent.removeListener(poilisteners3[poi])
            }if(rpointshow[poi])delete rpointshow[poi];for(var seg in rpoints[poi]['s']){
            var from=segnorm(seg,poi);if(rsegmshow[from]&&!rpointshow[seg]){
                if(vtype==5){
                    if(rsegmshowv[from]){
                        seg1[from]=1;continue
                    }
                    }if(poilisteners[from])GEvent.removeListener(poilisteners[from]);if(rsegmshow[from])map.removeOverlay(rsegmshow[from]);delete poilisteners[from];delete rsegmshow[from]
            }
            }
        }if(vtype==5){
        removepoi={};for(var seg in seg1){
            var query=0;for(var kvid in rsegmshowv){
                if(rsegmshowv[kvid]==rsegmshowv[seg]&&!seg1[kvid]){
                    query=1;break
                }
                }if(!query)removepoi[rsegmshowv[seg]]=1
                }for(var from in removepoi){
            if(poilisteners[from])GEvent.removeListener(poilisteners[from]);if(rsegmshow[from])map.removeOverlay(rsegmshow[from]);delete poilisteners[from];delete rsegmshow[from];delete rsegmshowv[from];for(var kvid in rsegmshowv){
                if(rsegmshowv[kvid]==from){
                    delete rsegmshowv[kvid];delete rsegmshow[kvid]
                }
                }
            }
        }else{
        if(dis<5000){
            for(var poi in rpointshow){
                if(!obj[poi]){
                    if(rpointshow[poi]&&rpointshow[poi]!=1){
                        map.removeOverlay(rpointshow[poi])
                        }if(poilisteners[poi]){
                        GEvent.removeListener(poilisteners[poi])
                        }if(poilisteners1[poi]){
                        GEvent.removeListener(poilisteners1[poi])
                        }if(poilisteners2[poi]){
                        GEvent.removeListener(poilisteners2[poi])
                        }if(poilisteners3[poi]){
                        GEvent.removeListener(poilisteners3[poi])
                        }if(rpointshow[poi])delete rpointshow[poi]
                }
                }
            }
        }if(doppomar[5])return;if(oldzoomro&&oldzoom!=oldzoomro){
        for(var kvid in rsegmshow){
            var regout=kvid.split(".");if(vtype==5&&rsegmshow[kvid]){}addseg(regout[0],regout[1])
            }
        }oldzoomro=oldzoom;for(var poi in new_rpoints){
        if(!rpointshow[poi]){
            if(reditmode){
                if(dis<5000){
                    if(obj[poi])addpoi(new GLatLng(rpoints[poi]['y'],rpoints[poi]['x']),poi)
                        }else{
                    addpoi(new GLatLng(rpoints[poi]['y'],rpoints[poi]['x']),poi)
                    }
                }else{
                rpointshow[poi]=1
                }
            }for(var seg in rpoints[poi]['s']){
            var from=segnorm(poi,seg);if(!rsegmshow[from]&&!not_showseg[from]){
                addseg(seg,poi)
                }
            }
        }if(vtype==6&&doppomar[5]==1){
        for(var poi in rpointshow){
            if(rpointshow[poi]&&rpointshow[poi]!=1){
                map.removeOverlay(rpointshow[poi])
                }if(poilisteners[poi]){
                GEvent.removeListener(poilisteners[poi])
                }if(poilisteners1[poi]){
                GEvent.removeListener(poilisteners1[poi])
                }if(poilisteners2[poi]){
                GEvent.removeListener(poilisteners2[poi])
                }if(poilisteners3[poi]){
                GEvent.removeListener(poilisteners3[poi])
                }if(rpointshow[poi])delete rpointshow[poi]
        }
        }
    }function updateseg(poi){
    showpolyfn();if(rpointshow[poi]){
        rpoints[poi]['y']=rpointshow[poi].getPoint().lat();rpoints[poi]['x']=rpointshow[poi].getPoint().lng()
        }if(rpoints[poi]['s']){
        for(var seg in rpoints[poi]['s']){
            var from=segnorm(poi,seg);if(rsegmshow[from]&&rsegupnewdel[from]==3){
                if(poilisteners[from])GEvent.removeListener(poilisteners[from]);map.removeOverlay(rsegmshow[from]);delete rsegmshow[from]
            }addseg(poi,seg)
            }
        }
    }var mapmoveroad,mapmoveroad1;function poiaddmode(){
    if(uid==0){
        jwindow('/sys/user/?login=1&ask=1');vtype=flphoar[37];return
    }if(reditmode||pointlisten4||pointlisten3)poiaddmodecancel();maxrtype=1;reditmode=1;stoppprev=0;checksvbut()
    }function mouse_clickre(marker,point,a){
    console.log('mouse_clickre',marker,point,a);if(!marker){
        var b=checkmover(point,1);if(b){
            marker={};marker.id=b;marker.mtype=2
            }
        }if(marker){
        if(marker.mtype&&marker.id&&marker.mtype==2){
            if(ltype==10){
                if(rsegments[marker.id]&&rsegments[marker.id]['rt']>1)return
            }if(point)clickonseg(point,marker.id);else if(a)clickonseg(a,marker.id)
                }
        }if(notclick==1)return;if(currentpoi){
        if(lastdist>3500){
            if((ltype==2||ltype==10)&&lastdist<10000){}else{
                currentpoi='';clicknewpoi(point);return
            }
            }
        }if(oldzoom<13){
        if((ltype==2||ltype==10)&&oldzoom>9){}else{
            return
        }
        }var from=0;if(marker){
        if(marker.getVertexCount&&plineprev==marker){
            from=1;point=marker.getVertex(0)
            }
        }if(marker&&from==0){
        if(marker.mtype){
            if(marker.mtype==1)clickonmarker(marker.id,marker.getPoint());if(marker.mtype==2)return
        }return true
        }else{
        clicknewpoi(point)
        }
    }function mouse_movere(){
    if(selfn||_gec('pomenu1').style.display==_bk)return;var point=flphoar[42];checkmover(point);if(oldzoom<13){
        if((ltype==2||ltype==10)&&oldzoom>9){}else{
            currentpoi=''
            }
        }if(oldzoom<13){
        if((ltype==2||ltype==10)&&oldzoom>9){}else{
            showpolyfn();if(pcenicon){
                if(!pcenicon.isHidden())pcenicon.hide()
                    }return
        }
        }if(currentpoi)lastdist=point.distanceFrom(new GLatLng(rpoints[currentpoi]['y'],rpoints[currentpoi]['x']));var a;if(((ltype==2||ltype==10)&&lastdist<10000)||lastdist<3500)a=1;if(!stoppprev){
        if(!pcenicon){
            pcenicon=new GMarker(point,{
                icon:iconw,
                clickable:false,
                inert:true,
                zIndexProcess:zilow
            });map.addOverlay(pcenicon)
            }else{
            if(point!=pcenicon.getPoint()){
                pcenicon.setLatLng(point)
                }pcenicon.show()
            }if(!a)showpolyfn();if(!currentpoi||!a)return;if(noplusshow||stopppplus==1){
            pcenicon.hide();if(noplusshow)point=new GLatLng(rpoints[noplusshow]['y'],rpoints[noplusshow]['x'])
                }else{
            if(pcenicon.isHidden())pcenicon.show()
                }if(currentpoi&&!rpoints[currentpoi])currentpoi='';if(!currentpoi)return;if(!noplusshow){
            var y=point.y.toFixed(6);var x=point.x.toFixed(6);drawroadprev(point,new GLatLng(rpoints[currentpoi]['y'],rpoints[currentpoi]['x']),x,y)
            }
        }else{
        rhideprev()
        }
    }function rhideprev(){
    showpolyfn();if(pcenicon){
        if(!pcenicon.isHidden())pcenicon.hide()
            }
    }function cancelpline(){
    currentpoi='';showpolyfn();dotpomenuoff();if(pcenicon){
        pcenicon.hide()
        }selunhigh();selarr={};selfn=0
    }function cancelredit(){
    vtype=flphoar[37];flphoar[37]=null;poiaddmodecancel();dotpomenuoff();loadroadsrenew();update_uri();_ge('flomenu').style.display=_no
    }var lock_road_edit;function chknotsaved(a){
    var i=0;for(var kvid in rpoupnewdel){
        i++
    }if(!a){
        for(var kvid in rsegupnewdel){
            i++
        }
        }return i
    }function poiaddmodecancel(from){
    if(typeof from==_un)var from=0;if(from==1||from==2){
        var i=chknotsaved();if(i)checksvbut();if(i&&!realconfirm(localization['jsi_surecanchan']))return false;if(from==2)return true;if(i)loadroadsrenew()
            }if(pcenicon){
        pcenicon.hide()
        }_ge('flomenu').style.display=_no;if(pointlisten3)GEvent.removeListener(pointlisten3);if(pointlisten4)GEvent.removeListener(pointlisten4);if(pointlisten6)GEvent.removeListener(pointlisten6);pointlisten3=null;pointlisten4=null;pointlisten6=null;reditmode=0;selarr={};selfn=0;if(_ge('segsadvprops')){
        if(jwindow3state==1)jwindow3_hide_x()
            }if(from==1){
        return true
        }
    }function showrinfo(seg){
    if(rsegments[seg]&&rsegments[seg]['sid']){
        on_jwindowclose='';jwindow('/sys/edit_road2/?noheader=1&vir=1&id='+rsegments[seg]['sid'])
        }else{
        if(selfn==1){
            var from=0;for(var kvid in selarr1){
                if(selarr[kvid]){
                    from++;break
                }
                }if(from==0){
                for(var kvid in selarr1){
                    selarr[kvid]=1
                    }
                }else{
                for(var kvid in selarr1){
                    delete selarr[kvid]
                }selunhigh()
                }selhigh();return
        }var menuin='<center>Steet or road you clicked is unnamed, you may name it using this menu.<div style="overflow: hidden; width:100%;height:5px;"></div><button class="button1" onclick="selfn=1;showrinfo1();on_jwindowclose=null;jwindow_close();">Select&nbsp;more&nbsp;segments</button><div style="overflow: hidden; width:100%;height:5px;"></div><button class="button1" onclick="jwindow('+"'/sys/edit_road2/?noheader=1&newr=1&nm=1&lng="+lng+"&ltype="+ltype+"'"+');">Enter&nbsp;street&nbsp;name</button><div style="overflow: hidden; width:100%;height:5px;"></div><button class="button1" onclick="jwindow_close();selfn=0;selunhigh();selarr={};">'+localization['jsi_cancelbut']+'</button></center>';on_jwindowclose='selunhigh();selarr={};selfn=0;';for(var kvid in selarr1){
            selarr[kvid]=1
            }selhigh();jwindow('',350,170,menuin)
        }
    }function showrinfo1(){
    if(selfn==1){
        _ge('flomenu').innerHTML="<span id='notifyit' class='normalwrn'>Click on unassigned segments to add to selection</span><br><span onmouseover='rhideprev();stoppprev=1;' onmouseout='stoppprev=0;'><button class='button' onclick='if (!svnchecksel()) return false;jwindow("+'"/sys/edit_road2/?newr=1&nm=1&lng='+lng+'"'+");'>Provide a name for selection</button>&nbsp;&nbsp;<button class='button' onclick='selfn=0;selunhigh();selarr={};_ge("+'"'+'flomenu'+'"'+").style.display=_no;showrinfo1();' >"+localization['jsi_cancelbut']+"</button></span>"
        }else{
        _ge('flomenu').innerHTML="<span id='notifyit' class='normalwrn'></span><br><span onmouseover='stoppprev=1;' onmouseout='stoppprev=0;'><button id='flomenubsave' class='button' onclick='jtgoff(6)'>Edit roads</button></span>"
        }_ge('flomenu').style.bottom="10";_ge('flomenu').style.left=Math.round(document.getElementById('map').offsetWidth/2-80);_ge('flomenu').style.display=_bk
    }function copysegprop(segold,segnew){
    segold=segnorm(segold);segnew=segnorm(segnew);if(rsegments[segold]){
        rsegments[segnew]={};for(var kvid in rsegments[segold]){
            rsegments[segnew][kvid]=rsegments[segold][kvid];if(rsegments[segold]['wa']){
                if(!segcheckrev(segold,segnew)){
                    if(rsegments[segold]['wa']==1){
                        rsegments[segnew]['wa']=2
                        }else if(rsegments[segold]['wa']==2){
                        rsegments[segnew]['wa']=1
                        }
                    }
                }
            }
        }if(rsegmshow[segnew]){
        var regout=segnew.split(".");addseg(regout[0],regout[1])
        }
    }function clickonseg(point,seg,fromt1){
    var regout=seg.split(".");console.log("segmclic	k: "+seg);for(var i=0;i<2;i++){
        if(!rpoints[regout[i]])return;if(!rpoints[regout[i]]['s'])return;if(!rpoints[regout[0]]['s'][regout[1]])return
    }if(typeof fromt1==_un){
        var fromt1=0
        }if(stopppplus||(notclick&&!fromt1))return;if(!currentpoi&&fromt1==0){
        dotpomenu('',point,1,seg);return
    }var from=0;if(currentpoi){
        for(var kvid in rsegmshow){
            var regout=kvid.split(".");if(currentpoi==regout[0]||currentpoi==regout[1]||kvid==seg)continue;if(interlins({
                x:rpoints[currentpoi]['x'],
                y:rpoints[currentpoi]['y']
                },{
                x:point.lng(),
                y:point.lat()
                },{
                x:rpoints[regout[0]]['x'],
                y:rpoints[regout[0]]['y']
                },{
                x:rpoints[regout[1]]['x'],
                y:rpoints[regout[1]]['y']
                })){
                from++;if(from==2)break
            }
            }
        }if(from>0){
        if(from==1){
            console.log('USER:Crossings found (1), line not drawn.');notifyitoff()
            }else{
            console.log('USER:Crossings found (2+), line not drawn.');notifyitoff()
            }return false
        }var regout=seg.split(".");var segold=segnorm(seg);var a=[];var b=[];if(ltype==10){
        if(rsegments[segold]&&rsegments[segold]['rt']){}else{
            for(var kvid in rpoints[regout[0]]['s']){
                if(rsegments[segnorm(kvid,regout[0])]&&rsegments[segnorm(kvid,regout[0])]['rt']==2)a.push(kvid)
                    }for(var kvid in rpoints[regout[1]]['s']){
                if(rsegments[segnorm(kvid,regout[1])]&&rsegments[segnorm(kvid,regout[1])]['rt']==2)b.push(kvid)
                    }if(a[0]&&b[0]&&rsegments[segnorm(a[0],b[0])]){
                delseg(segnorm(a[0],b[0]),1);a[10]=1
                }if(a[0]&&b[1]&&rsegments[segnorm(a[0],b[1])]){
                delseg(segnorm(a[0],b[1]),1);a[10]=1
                }if(a[1]&&b[0]&&rsegments[segnorm(a[1],b[0])]){
                delseg(segnorm(a[1],b[0]),1);a[10]=1
                }if(a[1]&&b[1]&&rsegments[segnorm(a[1],b[1])]){
                delseg(segnorm(a[1],b[1]),1);a[10]=1
                }
            }
        }if(rsegmshow[seg]){
        if(poilisteners[seg])GEvent.removeListener(poilisteners[seg]);map.removeOverlay(rsegmshow[seg]);delete rsegmshow[seg];rsegupnewdel[segold]=3;console.log("segtodel: "+seg)
        }var from=addpoint(point);cro['pa']=from;if(currentpoi){
        rpoints[from]['s'][currentpoi]=1;if(!rpoints[currentpoi]['s'])rpoints[currentpoi]['s']={};var segnew=segnorm(currentpoi,from);var x=[];x.push(1);if(rpoints[currentpoi]['s']){
            for(var kvid in rpoints[currentpoi]['s']){
                x.push(kvid);if(ltype!=10&&kvid.indexOf('n')!=-1){
                    x[0]=x.length-1
                    }if(ltype==10&&rsegments[segnorm(currentpoi,kvid)]&&!rsegments[segnorm(currentpoi,kvid)]['rt']){
                    x[0]=x.length-1
                    }
                }
            }if(x.length>1){
            var segold1=segnorm(currentpoi,x[x[0]]);if(rsegments[segold1]){
                rsegments[segnew]={};for(var kvid in rsegments[segold1]){
                    if((kvid=='sid'&&(x.length>2||doppomar[6]))||kvid=='re')continue;rsegments[segnew][kvid]=rsegments[segold1][kvid];if(rsegments[segold1]['wa']){
                        if(segcheckrev(segold1,segnew)){
                            if(rsegments[segold1]['wa']==1){
                                rsegments[segnew]['wa']=2
                                }else if(rsegments[segold1]['wa']==2){
                                rsegments[segnew]['wa']=1
                                }
                            }
                        }
                    }
                }doppomar[6]=0
            }if(typeof savedprop[1]!=_un){
            if(!rsegments[segnew])rsegments[segnew]={};rsegments[segnew]['rt']=savedprop[1];if(typeof savedprop[6]!=_un)rsegments[segnew]['rs']=savedprop[6]
                }rpoints[currentpoi]['s'][from]=1;rsegupnewdel[segnew]=2;maxrtype_set(segnew)
        }if(regout[1]!=currentpoi){
        rpoints[from]['s'][regout[1]]=1;if(!rpoints[regout[1]]['s'])rpoints[regout[1]]['s']={};rpoints[regout[1]]['s'][from]=1;var segnew=segnorm(regout[1],from);a[11]=segnew;rsegupnewdel[segnew]=2;if(rsegments[segold]){
            rsegments[segnew]={};for(var kvid in rsegments[segold]){
                rsegments[segnew][kvid]=rsegments[segold][kvid];if(rsegments[segold]['wa']){
                    if(!segcheckrev(segold,segnew)){
                        if(rsegments[segold]['wa']==1){
                            rsegments[segnew]['wa']=2
                            }else if(rsegments[segold]['wa']==2){
                            rsegments[segnew]['wa']=1
                            }
                        }
                    }
                }
            }maxrtype_set(segnew)
        }if(regout[0]!=currentpoi){
        rpoints[from]['s'][regout[0]]=1;if(!rpoints[regout[1]]['s'])rpoints[regout[0]]['s']={};rpoints[regout[0]]['s'][from]=1;var segnew=segnorm(regout[0],from);a[12]=segnew;rsegupnewdel[segnew]=2;if(rsegments[segold]){
            rsegments[segnew]={};for(var kvid in rsegments[segold]){
                rsegments[segnew][kvid]=rsegments[segold][kvid];if(rsegments[segold]['wa']){
                    if(!segcheckrev(segold,segnew)){
                        if(rsegments[segold]['wa']==1){
                            rsegments[segnew]['wa']=2
                            }else if(rsegments[segold]['wa']==2){
                            rsegments[segnew]['wa']=1
                            }
                        }
                    }
                }
            }maxrtype_set(segnew)
        }updateseg(from);console.log(regout[0]+'---'+regout[1],a[10],ltype);if(rpoints[regout[0]]['s'])delete rpoints[regout[0]]['s'][regout[1]];if(rpoints[regout[1]]['s'])delete rpoints[regout[1]]['s'][regout[0]];if(rsegments[segold])delete rsegments[segold];if(ltype==10&&a[10]&&!currentpoi){
        selarr={};if(a[11])selarr[a[11]]=1;if(a[12])selarr[a[12]]=1;console.log('MAKIN '+segnew);makeriverwidth()
        }if(currentpoi){
        oldcurpo=currentpoi;currentpoi=from
        }checksvbut()
    }function clickonmarker(poi,point){
    if(currentpoi&&currentpoi!=poi){
        if(currentpoi!=poi&&!rpoints[currentpoi]['s'][poi]&&!rpoints[poi]['s'][currentpoi]){
            if(rpoints[currentpoi]){
                var from=0;for(var kvid in rsegmshow){
                    var regout=kvid.split(".");if(currentpoi==regout[0]||currentpoi==regout[1]||poi==regout[0]||poi==regout[1])continue;if(interlins({
                        x:rpoints[currentpoi]['x'],
                        y:rpoints[currentpoi]['y']
                        },{
                        x:rpoints[poi]['x'],
                        y:rpoints[poi]['y']
                        },{
                        x:rpoints[regout[0]]['x'],
                        y:rpoints[regout[0]]['y']
                        },{
                        x:rpoints[regout[1]]['x'],
                        y:rpoints[regout[1]]['y']
                        })){
                        from++;if(from==2)break
                    }
                    }if(from>0){
                    if(from==1){
                        notifyitoff()
                        }else{
                        notifyitoff()
                        }return false
                    }
                }var segnew=segnorm(currentpoi,poi);var x=[];x.push(1);if(rpoints[currentpoi]['s']){
                for(var kvid in rpoints[currentpoi]['s']){
                    x.push(kvid);if(ltype!=10&&kvid.indexOf('n')!=-1){
                        x[0]=x.length-1
                        }if(ltype==10&&rsegments[segnorm(currentpoi,kvid)]&&!rsegments[segnorm(currentpoi,kvid)]['rt']){
                        x[0]=x.length-1
                        }
                    }
                }if(x.length>0){
                var segold1=segnorm(currentpoi,x[x[0]]);if(oldcurpo&&rpoints[currentpoi]['s'][oldcurpo])segold1=segnorm(currentpoi,oldcurpo);if(rsegments[segold1]){
                    rsegments[segnew]={};for(var kvid in rsegments[segold1]){
                        if(x.length>2&&!oldcurpo)continue;if((kvid=='sid'&&(x.length>2||doppomar[6]))||kvid=='re')continue;rsegments[segnew][kvid]=rsegments[segold1][kvid];if(kvid=='wa'&&rsegments[segold1]['wa']){
                            if(segcheckrev(segold1,segnew)){
                                if(rsegments[segold1]['wa']==1){
                                    rsegments[segnew]['wa']=2
                                    }else if(rsegments[segold1]['wa']==2){
                                    rsegments[segnew]['wa']=1
                                    }
                                }
                            }
                        }
                    }doppomar[6]=0
                }if(typeof savedprop[1]!=_un){
                if(!rsegments[segnew])rsegments[segnew]={};rsegments[segnew]['rt']=savedprop[1];if(typeof savedprop[6]!=_un)rsegments[segnew]['rs']=savedprop[6]
                    }rpoints[currentpoi]['s'][poi]=1;rpoints[poi]['s'][currentpoi]=1;rsegupnewdel[segnew]=2;maxrtype_set(segnew);updateseg(currentpoi)
            }if(currentpoi){
            oldcurpo=currentpoi
            }else{
            oldcurpo=''
            }currentpoi=poi
        }else{
        dotpomenu(poi,point,2)
        }checksvbut()
    }var oldpoint;function addpoi(point,poi){
    if(vtype==6){
        var query=0;for(var kvid in rpointshow){
            query++
        }if(query>500||doppomar[5]==1){
            doppomar[5]=1;show_binf();currentpoi='';oldcurpo='';showpolyfn();if(pcenicon){
                pcenicon.hide()
                }dotpomenuoff();return
        }
        }var a=0;if(ltype==10&&rpoints[poi]['s']){
        for(var kvid in rpoints[poi]['s']){
            if(rsegments[segnorm(poi,kvid)]&&rsegments[segnorm(poi,kvid)]['rt']==3){
                a=1
                }
            }
        }if(a){
        rpointshow[poi]=new GMarker(point,{
            icon:iconu[4],
            draggable:true,
            bouncy:false,
            zIndexProcess:zinormal
        })
        }else{
        rpointshow[poi]=new GMarker(point,{
            icon:iconr0,
            draggable:true,
            bouncy:false,
            zIndexProcess:zinormal
        });rpointshow[poi].mtype=1
        }rpointshow[poi].id=poi;poilisteners[poi]=GEvent.addListener(rpointshow[poi],'drag',function(){
        rpoupnewdel[this.id]=1;stoppprev=1;stopppplus=1;updateseg(this.id);maxrtype_set(this.id);if(ltype==10){
            riverupmipo(this.id)
            }
        });poilisteners3[poi]=GEvent.addListener(rpointshow[poi],'dragend',function(){
        isdrag=0;upd_nomousedet();doppomar[2]=0;stopppplus=0;currentpoi='';stoppprev=0;if(!checkpoidist(this.id)){
            updateseg(this.id);return
        }checkcrosses(this.id);updateseg(this.id);riverupmipo(this.id);checksvbut()
        });poilisteners1[poi]=GEvent.addListener(rpointshow[poi],'dragstart',function(){
        isdrag=1;doppomar[2]=1;checkmover();checkcrosses(this.id,1);dotpomenuoff();oldpoint=this.getPoint();stoppprev=1;rhideprev();if(ltype==10){
            riverupmipo(this.id,1)
            }
        });poilisteners1[poi]=GEvent.addListener(rpointshow[poi],'mouseover',function(){
        isdrag=1;if(!currentpoi){
            rhideprev();stoppprev=1
            }
        });poilisteners2[poi]=GEvent.addListener(rpointshow[poi],'mouseout',function(){
        isdrag=0;stoppprev=0
        });map.addOverlay(rpointshow[poi])
    }function addseg(seg,poi,from){
    var fromt;if(typeof from!=_un){
        if(from<10||from>99){
            fromt=segnorm(seg,poi);if(from==100){
                if(rsegments[fromt]){
                    if(rsegments[fromt]['rt']){
                        from=rsegments[fromt]['rt'];var y=0
                        }
                    }
                }if(!poilisteners[fromt])return
        }else if(from==10){
            fromt=segnorm(seg,poi)
            }
        }else{
        fromt=segnorm(seg,poi)
        }var x=0;if(rsegments[fromt]){
        if(rsegments[fromt]['rt']){
            x=rsegments[fromt]['rt']
            }
        }if(!rsegmshow[fromt]){
        var query=0;for(var kvid in rsegmshow){
            query++
        }if(query>500||(is_ie&&query>100)){
            if(vtype==6){
                doppomar[5]=1;show_binf();currentpoi='';showpolyfn();if(pcenicon){
                    pcenicon.hide()
                    }dotpomenuoff()
                }return
        }if(vtype==5){
            if(oldzoom==13&&(x==1))return;if(oldzoom==14&&(x==1))return
        }
        }if(!rpoints[poi]||!rpoints[seg])return;if(!rpoints[poi]['s']||!rpoints[seg]['s'])return;if(!rpoints[poi]['s'][seg]||!rpoints[seg]['s'][poi])return;if(typeof from!=_un&&from<10){
        x=from
        }var stc_='#F2BF24';if(rpoupnewdel[poi]||rpoupnewdel[seg]||rsegupnewdel[fromt]){
        var stc_='#FFFA73'
        }if(vtype==5){
        var stc_='#FFFA73';if(rsegments[fromt]){
            if(rsegments[fromt]['sid']){
                var stc_='#F2BF24'
                }
            }
        }if(selarr[fromt]){
        stc_='#00FFFF';if(typeof from!=_un&&typeof savedprop[1]!=_un&&typeof y!=_un)x=savedprop[1]
            }var stw_=segwidth(x);if(typeof from!=_un&&from==10){
        var stc_='#FC0707'
        }if(vtype==5){
        if(rsegmshowv[fromt]){
            var query=0;if(rsegmshow[rsegmshowv[fromt]].color!=stc_){
                rsegmshow[rsegmshowv[fromt]].color=stc_;query++
            }if(rsegmshow[rsegmshowv[fromt]].weight!=stw_){
                rsegmshow[rsegmshowv[fromt]].weight=stw_;query++
            }if(query)rsegmshow[rsegmshowv[fromt]].redraw(true);return
        }else if(!rsegmshow[fromt]){
            var regout=fromt.split(".");regout[2]=regout[1];regout[1]=regout[0];var x=[];var y={};var poi1=[];poi1[0]={};var obj='';var x1=0;if(rsegments[fromt]&&rsegments[fromt]['sid'])x1=rsegments[fromt]['sid'];var x2=0;if(rsegments[fromt]&&rsegments[fromt]['rt'])x2=rsegments[fromt]['rt'];for(var g=1;g<regout.length;g++){
                var fromt1=regout[g];poi1[g]=[];poi1[g].push(fromt1);poi1[0][fromt1]=1;var z=0;if(x1==0){
                    for(var kvid in rpoints[fromt1]['s']){
                        z++
                    }if(z>2){
                        continue
                    }
                    }else{}for(var kvid in rpoints[fromt1]['s']){
                    if(kvid==regout[1]||kvid==regout[2])continue;var poi0=fromt1;var poi2=kvid;var poi3='';z=0;while(z==0){
                        var seg1=segnorm(poi2,poi0);var y1=0;var y2=0;if(rsegments[seg1]){
                            if(rsegments[seg1]['sid']){
                                y1=rsegments[seg1]['sid']
                                }if(rsegments[seg1]['rt']){
                                y2=rsegments[seg1]['rt']
                                }
                            }if(y2!=x2||y1!=x1||rsegmshow[seg1]){
                            break
                        }if(!y[seg1]){
                            x.push(seg1);y[seg1]=1;if(poi1[g].length>2){
                                poi1[g].push(poi0);poi1[0][poi0]=1
                                }poi1[g].push(poi2);poi1[0][poi2]=1
                            }var a=0;z=1;for(var kvid1 in rpoints[poi2]['s']){
                            a++;if(poi0!=kvid1)poi3=kvid1
                                }if(a>1){
                            var seg1=segnorm(poi2,poi3);if(!y[seg1]){
                                if(a>2&&x1==0){
                                    break
                                }else{
                                    var y1=0;var y2=0;if(rsegments[seg1]){
                                        if(rsegments[seg1]['sid']){
                                            y1=rsegments[seg1]['sid']
                                            }if(rsegments[seg1]['rt']){
                                            y2=rsegments[seg1]['rt']
                                            }
                                        }if(y2!=x2||y1!=x1||rsegmshow[seg1]){
                                        break
                                    }x.push(seg1);y[seg1]=1;poi1[g].push(poi3);poi1[0][poi3]=1;z=0;poi0=poi2;poi2=poi3;poi3=''
                                    }
                                }else{}
                        }
                        }
                    }
                }if(x.length>0){
                x.push(fromt);y[fromt]=1;poly.length=0;for(var i=poi1[1].length-1;i>=0;i--){
                    poly.push(new GLatLng(rpoints[poi1[1][i]]['y'],rpoints[poi1[1][i]]['x']))
                    }for(var i=0;i<poi1[2].length;i++){
                    poly.push(new GLatLng(rpoints[poi1[2][i]]['y'],rpoints[poi1[2][i]]['x']))
                    }for(var g=0;g<x.length;g++){
                    rsegmshowv[x[g]]=fromt;rsegmshow[x[g]]=1
                    }rsegmshow[fromt]=new GPolyline(poly,stc_,stw_,0.7);rsegmshow[fromt].id=fromt;rsegmshow[fromt].mtype=2;map.addOverlay(rsegmshow[fromt]);poilisteners[fromt]=GEvent.addListener(rsegmshow[fromt],'click',function(point){
                    showrinfo(this.id)
                    });return
            }
            }
        }if(rsegmshow[fromt]){
        var query=0;if(rsegmshow[fromt].color!=stc_){
            rsegmshow[fromt].color=stc_;query++
        }if(rsegmshow[fromt].weight!=stw_){
            rsegmshow[fromt].weight=stw_;query++
        }if(!polyfd[0]){
            polyfdf(rsegmshow[fromt])
            }if(!polyfd[0]){
            errorcontact()
            }else{
            if(rsegmshow[fromt][polyfd[0]][0].x!=rpoints[poi]['x']||rsegmshow[fromt][polyfd[0]][0].y!=rpoints[poi]['y']){
                rsegmshow[fromt][polyfd[0]][0][polyfd[2]]=rpoints[poi]['y'];rsegmshow[fromt][polyfd[0]][0][polyfd[1]]=rpoints[poi]['x'];rsegmshow[fromt][polyfd[0]][0].x=rpoints[poi]['x'];rsegmshow[fromt][polyfd[0]][0].y=rpoints[poi]['y'];query++
            }if(rsegmshow[fromt][polyfd[0]][1].x!=rpoints[seg]['x']||rsegmshow[fromt][polyfd[0]][1].y!=rpoints[seg]['y']){
                rsegmshow[fromt][polyfd[0]][1][polyfd[2]]=rpoints[seg]['y'];rsegmshow[fromt][polyfd[0]][1][polyfd[1]]=rpoints[seg]['x'];rsegmshow[fromt][polyfd[0]][1].x=rpoints[seg]['x'];rsegmshow[fromt][polyfd[0]][1].y=rpoints[seg]['y'];query++
            }if(query)rsegmshow[fromt].redraw(true);return
        }
        }if(rsegmshow[fromt]){
        map.removeOverlay(rsegmshow[fromt]);delete rsegmshow[fromt]
    }rsegmshow[fromt]=new GPolyline([new GLatLng(rpoints[poi]['y'],rpoints[poi]['x']),new GLatLng(rpoints[seg]['y'],rpoints[seg]['x'])],stc_,stw_,0.7);rsegmshow[fromt].id=fromt;rsegmshow[fromt].mtype=2;map.addOverlay(rsegmshow[fromt]);if(reditmode){}else{
        poilisteners[fromt]=GEvent.addListener(rsegmshow[fromt],'click',function(point){
            showrinfo(this.id)
            })
        }
    }var rsegmshowv={};function segwidth(x){
    var stw_=7;if(oldzoom>15){
        stw_=Math.round(stw_*Math.pow(1.25,oldzoom-15))
        }if(oldzoom<15){
        stw_=Math.round(stw_/Math.pow(1.20,(oldzoom-15)*-1))
        }if(x){
        if(x==1){
            stw_=Math.round(stw_/1.7)
            }else if(x==2){
            stw_=Math.round(stw_*1.5)
            }else if(x==3){
            stw_=Math.round(stw_*2)
            }
        }if(ltype==10){
        if(x==2){
            stw_=0.5
            }else if(x==3){
            stw_=2
            }
        }return stw_
    }function checkpoidist(poi){
    if(rpointshow[poi]){
        for(var seg in rpoints[poi]['s']){
            if(!rpoints[seg])continue;var b=0;if(seg.indexOf('n')==-1&&poi.indexOf('n')==-1){
                b=oldpoint.distanceFrom(new GLatLng(rpoints[seg]['y'],rpoints[seg]['x']));if((ltype==0&&b<250)||(ltype!=0&&b<1000))b=0;if(rsegments[segnorm(seg,poi)]['uid']==uid)b=0
                    }if(b||rpointshow[poi].getPoint().distanceFrom(new GLatLng(rpoints[seg]['y'],rpoints[seg]['x']))>3500){
                rpointshow[poi].setLatLng(oldpoint);notifyitoff();return false
                }
            }
        }return true
    }function checkcrosses(poi,type){
    console.log('crosscheck '+poi,type);if(rpointshow[poi]){
        var from=0;var fromt=0;var fromt1=0;var obj={};for(var seg in rpoints[poi]['s']){
            for(var kvid in rsegmshow){
                var regout=kvid.split(".");if(poi==regout[0]||poi==regout[1]||seg==regout[0]||seg==regout[1])continue;if(!rpoints[seg])continue;if(from<2&&interlins({
                    x:rpoints[poi]['x'],
                    y:rpoints[poi]['y']
                    },{
                    x:rpoints[seg]['x'],
                    y:rpoints[seg]['y']
                    },{
                    x:rpoints[regout[0]]['x'],
                    y:rpoints[regout[0]]['y']
                    },{
                    x:rpoints[regout[1]]['x'],
                    y:rpoints[regout[1]]['y']
                    })){
                    var seg1=segnorm(poi,seg);var seg2=kvid;obj[kvid]=1;var x=0;var y=0;if(rsegments[seg1]){
                        if(rsegments[seg1]['re']){
                            x=rsegments[seg1]['re']
                            }
                        }if(rsegments[seg2]){
                        if(rsegments[seg2]['re']){
                            y=rsegments[seg2]['re']
                            }
                        }if(x!=y)continue;from++;cro['y1']=cro['y'];cro['x1']=cro['x'];if(from==2&&!fromt&&!fromt1)break
                }
                }
            }if(type){
            doppomar[13]=from;return
        }console.log('old crosses '+doppomar[13]+' new crosses '+from);var x1={},x2={},x0={};for(var kvid in rpointshow){
            if(kvid!=poi){
                var x0=rpointshow[kvid].getPoint();x1.x=(Math.floor(bounds_ms[0]+(rpoints[poi]['x'])*bounds_ms[1]));x1.y=(Math.floor(bounds_ms[0]-0.5*Math.log((1+Math.sin((rpoints[poi]['y']/180)*Math.PI))/(1-Math.sin((rpoints[poi]['y']/180)*Math.PI)))*bounds_ms[2]));x2.x=(Math.floor(bounds_ms[0]+(x0.x)*bounds_ms[1]));x2.y=(Math.floor(bounds_ms[0]-0.5*Math.log((1+Math.sin((x0.y/180)*Math.PI))/(1-Math.sin((x0.y/180)*Math.PI)))*bounds_ms[2]));var y1=Math.abs(x1.x-x2.x);var y2=Math.abs(x1.y-x2.y);if(y1<8&&y2<8){
                    var nearpoi=kvid;fromt++
                }
                }
            }for(var kvid in rsegmshow){
            var regout=kvid.split(".");if(poi==regout[0]||poi==regout[1])continue;x0.x=(Math.floor(bounds_ms[0]+(rpoints[poi]['x'])*bounds_ms[1]));x0.y=(Math.floor(bounds_ms[0]-0.5*Math.log((1+Math.sin((rpoints[poi]['y']/180)*Math.PI))/(1-Math.sin((rpoints[poi]['y']/180)*Math.PI)))*bounds_ms[2]));x1.x=(Math.floor(bounds_ms[0]+(rpoints[regout[0]]['x'])*bounds_ms[1]));x1.y=(Math.floor(bounds_ms[0]-0.5*Math.log((1+Math.sin((rpoints[regout[0]]['y']/180)*Math.PI))/(1-Math.sin((rpoints[regout[0]]['y']/180)*Math.PI)))*bounds_ms[2]));x2.x=(Math.floor(bounds_ms[0]+(rpoints[regout[1]]['x'])*bounds_ms[1]));x2.y=(Math.floor(bounds_ms[0]-0.5*Math.log((1+Math.sin((rpoints[regout[1]]['y']/180)*Math.PI))/(1-Math.sin((rpoints[regout[1]]['y']/180)*Math.PI)))*bounds_ms[2]));var dist=proxlintrue(x0.x,x0.y,x1.x,x1.y,x2.x,x2.y,true);if(dist<rsegmshow[kvid].weight){
                var nearseg=kvid;fromt1++
            }
            }if(ltype==10&&((fromt==0&&fromt1==1)||fromt==1)){
            var a=0;if(nearseg&&rsegments[nearseg]&&rsegments[nearseg]['rt']>1)a++;if(rpoints[poi]&&rpoints[poi]['s']){
                for(var kvid in rpoints[poi]['s']){
                    if(rsegments[segnorm(poi,kvid)]&&rsegments[segnorm(poi,kvid)]['rt']>1)a++
                }
                }if(a){
                if(rpointshow[poi])rpointshow[poi].setLatLng(oldpoint);rpoints[poi]["x"]=oldpoint.x;rpoints[poi]["y"]=oldpoint.y;return
            }
            }if(fromt==1){
            var x=0;var re=new RegExp("^"+nearpoi+"\\d|\\w"+nearpoi+"$");if(from>0){
                for(var data in obj){
                    if(!data.match(re))x++;console.log(x+'cheko '+data+' '+re)
                    }
                }if(x==0){
                cro.opo=oldpoint;cro.opn=poi;if(rpointshow[poi]){
                    cro['poi']=rpointshow[poi].getPoint()
                    }else{
                    cro['poi']["y"]=rpoints[poi]["y"];cro['poi']["x"]=rpoints[poi]["x"]
                    }makecrosses('',nearpoi,2);return
            }else{
                from=0
                }
            }else if(fromt==0&&fromt1==1){
            var x=0;if(from>0){
                for(var data in obj){
                    if(data!=nearseg)x++
                }
                }if(x==0){
                cro.opo=oldpoint;cro.opn=poi;if(rpointshow[poi]){
                    cro['poi']=rpointshow[poi].getPoint()
                    }else{
                    cro['poi']["y"]=rpoints[poi]["y"];cro['poi']["x"]=rpoints[poi]["x"]
                    }makecrosses('',nearseg,3);return
            }else{
                from=0
                }
            }if((fromt||fromt1)&&!from){
            if(rpointshow[poi])rpointshow[poi].setLatLng(oldpoint);rpoints[poi]["x"]=oldpoint.x;rpoints[poi]["y"]=oldpoint.y;notifyitoff()
            }if(from>0){
            if(from==1){
                cro.opo=oldpoint;cro.opn=poi;makecrosses(seg1,seg2,0)
                }else{
                if(from>doppomar[13]){
                    if(rpointshow[poi])rpointshow[poi].setLatLng(oldpoint);rpoints[poi]["x"]=oldpoint.x;rpoints[poi]["y"]=oldpoint.y;notifyitoff()
                    }
                }
            }
        }
    }function notifyitoff(fromt){
    if(typeof fromt!=_un){
        if(_ge('notifyit'))_ge('notifyit').innerHTML=''
            }else{
        if(flphoar[11]){
            clearTimeout(flphoar[11])
            }flphoar[11]=window.setTimeout("notifyitoff(1);",10000)
        }
    }function makecrosses(seg1,seg2,menutype){
    if((ltype==10||ltype==2)&&menutype<2)return;selunhigh();selarr={};selfn=0;if(menutype<2){
        notifyitoff();selarr[seg1]=1;addseg(seg1);cro['poi']=new GLatLng(cro['y1'],cro['x1']);var regout=seg2.split(".");regout[2]=regout[1];regout[1]=regout[0];if(!rsegments[seg1])rsegments[seg1]={};if(!rsegments[seg2])rsegments[seg2]={}
            }if(menutype==2||menutype==3){}if(menutype==1){}cro['menuin']='';if(menutype==0||menutype==2||menutype==3){
        cro['menuin']+=mmenuline(localization['jsi_cancelaction'],'if(rpointshow[cro.opn]){rpointshow[cro.opn].setLatLng(cro.opo);}else{rpoints[cro.opn].x=cro.opo.x;rpoints[cro.opn].y=cro.opo.y;}updateseg(cro.opn);dpmenuoffrun=null;dotpomenuoff();','menu_01_54.png')
        }else if(menutype==1){
        cro['menuin']+=mmenuline(localization['jsi_cancelaction'],'dpmenuoffrun=null;delseg('+"'"+seg1+"'"+');dotpomenuoff();','menu_01_54.png')
        }cro['menuin']+=_mmline;if(menutype<2){
        cro['menuin']+=mmenuline(localization['jsi_rd_makecrossrd'],'dpmenuoffrun=null;clickonseg(cro.poi,'+"'"+seg1+"'"+',1);currentpoi='+"'"+regout[1]+"'"+';clickonmarker(cro.pa);currentpoi='+"'"+regout[2]+"'"+';clickonmarker(cro.pa);copysegprop('+"'"+seg2+"','"+regout[1]+".'+cro.pa"+');copysegprop('+"'"+seg2+"','"+regout[2]+".'+cro.pa"+');delseg('+"'"+seg2+"'"+');currentpoi='+"	''"+';dotpomenuoff();','menu_01_61.png');cro['menuin']+=mmenuline(localization['jsi_rd_movsegabove'],'dpmenuoffrun=null;if (rsegments['+"'"+seg2+"'"+']['+"'re'"+']){rsegments['+"'"+seg1+"'"+']['+"'re'"+']=rsegments['+"'"+seg2+"'"+']['+"'re'"+']+1;if (rsegments['+"'"+seg1+"'"+']['+"'re'"+']>5)rsegments['+"'"+seg1+"'"+']['+"'re'"+']=5;}else{rsegments['+"'"+seg1+"'"+']['+"'re'"+']=1;};dotpomenuoff();','menu_01_63.png');cro['menuin']+=mmenuline(localization['jsi_rd_movsegunder'],'dpmenuoffrun=null;if (rsegments['+"'"+seg1+"'"+']['+"'re'"+']){rsegments['+"'"+seg2+"'"+']['+"'re'"+']=rsegments['+"'"+seg1+"'"+']['+"'re'"+']+1;if (rsegments['+"'"+seg2+"'"+']['+"'re'"+']>5)rsegments['+"'"+seg2+"'"+']['+"'re'"+']=5;}else{rsegments['+"'"+seg2+"'"+']['+"'re'"+']=1;};dotpomenuoff();','menu_01_65.png')
        }if(menutype==2){
        cro['menuin']+=mmenuline(localization['jsi_rd_joinpoints'],'dpmenuoffrun=null;mknearpo(cro.opn,'+"'"+seg2+"'"+');dotpomenuoff();','menu_01_58.png')
        }if(menutype==3){
        cro['menuin']+=mmenuline(localization['jsi_rd_attachpoints'],'dpmenuoffrun=null;mknearln(cro.opn,'+"'"+seg2+"'"+');dotpomenuoff();','menu_01_58a.png')
        }dotpomenu('',cro['poi'],4);if(menutype==0||menutype==2||menutype==3){
        dpmenuoffrun='if (rpointshow[cro.opn]){rpointshow[cro.opn].setLatLng(cro.opo);updateseg(cro.opn);}else{rpoints[cro.opn]["x"]=cro.opo.x;rpoints[cro.opn]["y"]=cro.opo.y;}'
        }else if(menutype==1){
        dpmenuoffrun='delseg("'+seg1+'");'
        }
    }function mknearpo(poi,point1){
    for(var seg in rpoints[poi]['s']){
        if(!rpoints[point1]['s'])rpoints[point1]['s']={};if(!rpoints[point1]['s'][seg]){
            rpoints[point1]['s'][seg]=1;rpoints[seg]['s'][point1]=1;var segnew=segnorm(seg,point1);rsegupnewdel[segnew]=2;var segold1=segnorm(seg,poi);if(rsegments[segold1]){
                rsegments[segnew]={};for(var kvid in rsegments[segold1]){
                    rsegments[segnew][kvid]=rsegments[segold1][kvid];if(kvid=='wa'&&rsegments[segold1]['wa']){
                        if(!segcheckrev(segold1,segnew)){
                            if(rsegments[segold1]['wa']==1){
                                rsegments[segnew]['wa']=2
                                }else if(rsegments[segold1]['wa']==2){
                                rsegments[segnew]['wa']=1
                                }
                            }
                        }
                    }
                }maxrtype_set(segnew)
            }
        }delpoi(poi,1);updateseg(point1)
    }function mknearln(poi,seg){
    var regout=seg.split(".");regout[2]=regout[1];regout[1]=regout[0];var x1=proxlintrueinter(cro['poi'].x,cro['poi'].y,rpoints[regout[1]]['x'],rpoints[regout[1]]['y'],rpoints[regout[2]]['x'],rpoints[regout[2]]['y']);rpointshow[poi].setLatLng(new GLatLng(x1.y,x1.x));rpoints[poi]['x']=x1.x;rpoints[poi]['y']=x1.y;if(!rpoints[poi]['s'][regout[1]]){
        rpoints[poi]['s'][regout[1]]=1;rpoints[regout[1]]['s'][poi]=1;var segnew=segnorm(poi,regout[1]);rsegupnewdel[segnew]=2;if(rsegments[seg]){
            rsegments[segnew]={};for(var kvid in rsegments[seg]){
                rsegments[segnew][kvid]=rsegments[seg][kvid];if(kvid=='wa'&&rsegments[seg]['wa']){
                    if(!segcheckrev(seg,segnew)){
                        if(rsegments[seg]['wa']==1){
                            rsegments[segnew]['wa']=2
                            }else if(rsegments[seg]['wa']==2){
                            rsegments[segnew]['wa']=1
                            }
                        }
                    }
                }
            }maxrtype_set(segnew)
        }if(!rpoints[poi]['s'][regout[2]]){
        rpoints[poi]['s'][regout[2]]=1;rpoints[regout[2]]['s'][poi]=1;var segnew=segnorm(poi,regout[2]);rsegupnewdel[segnew]=2;if(rsegments[seg]){
            rsegments[segnew]={};for(var kvid in rsegments[seg]){
                rsegments[segnew][kvid]=rsegments[seg][kvid]
                }
            }
        }maxrtype_set(segnew);delseg(seg);updateseg(poi)
    }function addpoint(point,a){
    newpoiplus++;var from=newpoiplus+'n';rpoints[from]={};rpoints[from]['y']=point.lat();rpoints[from]['x']=point.lng();if(!a)addpoi(point,from);rpoupnewdel[from]=2;checksvbut();rpoints[from]['s']={};return from
    }function clicknewpoi(point,fromt1){
    if(typeof fromt1==_un){
        var fromt1=0
        }if(stoppprev==1&&fromt1!=3)return;if(stopppplus==1&&fromt1!=3)return;if(mtype=='h'||mtype=='m'){
        mapttip(point,localization['jsi_layer_cant']);if(flphoar[32]){
            clearTimeout(flphoar[32])
            }flphoar[32]=window.setTimeout(mapttipc,3500);return
    }if(chknotsaved()>450){
        mapttip(point,localization['jsi_svchng']);if(flphoar[32]){
            clearTimeout(flphoar[32])
            }flphoar[32]=window.setTimeout(mapttipc,3500);return
    }if(doppomar[5]==1){
        mapttip(point,localization['jsi_zoomin_closer']);if(flphoar[32]){
            clearTimeout(flphoar[32])
            }flphoar[32]=window.setTimeout(mapttipc,3500);return
    }for(var kvid in blocshow){
        if(kvid.indexOf('r')==0){
            var a=0;for(var kvid1 in mass){
                if(kvid.indexOf(kvid1)!=-1)a=1
                    }if(!a){
                mapttip(point,localization['jsi_loading']);if(flphoar[32]){
                    clearTimeout(flphoar[32])
                    }flphoar[32]=window.setTimeout(mapttipc,3500);return
            }
            }
        }if(!currentpoi&&!fromt1){
        dotpomenu('',point,3);return false
        }if(currentpoi&&fromt1==2){
        dotpomenu('',point,3,1);return false
        }for(var kvid in rpoints){
        if(rpoints[kvid].x==point.lng()&&rpoints[kvid].y==point.lat())return
    }console.log('passed to main rutine');var mkcheckcro=0;showpolyfn();if(currentpoi){
        if(rpoints[currentpoi]){
            var from=0;for(var kvid in rsegmshow){
                var regout=kvid.split(".");regout[2]=regout[1];regout[1]=regout[0];if(currentpoi==regout[1]||currentpoi==regout[2])continue;if(interlins({
                    x:rpoints[currentpoi]['x'],
                    y:rpoints[currentpoi]['y']
                    },{
                    x:point.lng(),
                    y:point.lat()
                    },{
                    x:rpoints[regout[1]]['x'],
                    y:rpoints[regout[1]]['y']
                    },{
                    x:rpoints[regout[2]]['x'],
                    y:rpoints[regout[2]]['y']
                    })){
                    from++;var seg2=kvid;cro['y1']=cro['y'];cro['x1']=cro['x'];if(from==2)break
                }
                }if(from>0){
                if(from==1){
                    mkcheckcro=1
                    }else{
                    notifyitoff();return false
                    }
                }
            }
        }var from=addpoint(point);if(currentpoi){
        rpoints[from]['s'][currentpoi]=1;var segnew=segnorm(currentpoi,from);var x=[];x.push(1);if(rpoints[currentpoi]['s']){
            for(var kvid in rpoints[currentpoi]['s']){
                x.push(kvid);if(ltype!=10&&kvid.indexOf('n')!=-1){
                    x[0]=x.length-1
                    }if(ltype==10&&rsegments[segnorm(currentpoi,kvid)]&&!rsegments[segnorm(currentpoi,kvid)]['rt']){
                    x[0]=x.length-1
                    }
                }
            }if(x.length>1&&x[x[0]]){
            var segold1=segnorm(currentpoi,x[x[0]]);if(oldcurpo&&rpoints[currentpoi]['s'][oldcurpo])segold1=segnorm(currentpoi,oldcurpo);if(rsegments[segold1]){
                rsegments[segnew]={};for(var kvid in rsegments[segold1]){
                    if(x.length>2&&!oldcurpo)continue;if((kvid=='sid'&&(x.length>2||doppomar[6]))||kvid=='re')continue;rsegments[segnew][kvid]=rsegments[segold1][kvid];if(kvid=='wa'&&rsegments[segold1]['wa']){
                        if(segcheckrev(segold1,segnew)){
                            if(rsegments[segold1]['wa']==1){
                                rsegments[segnew]['wa']=2
                                }else if(rsegments[segold1]['wa']==2){
                                rsegments[segnew]['wa']=1
                                }
                            }
                        }
                    }
                }
            }doppomar[6]=0;if(typeof savedprop[1]!=_un){
            if(!rsegments[segnew])rsegments[segnew]={};rsegments[segnew]['rt']=savedprop[1];if(typeof savedprop[6]!=_un)rsegments[segnew]['rs']=savedprop[6]
                }if(!rpoints[currentpoi]['s'])rpoints[currentpoi]['s']={};rpoints[currentpoi]['s'][from]=1;maxrtype_set(segnew);rsegupnewdel[segnew]=2;updateseg(from);if(mkcheckcro){
            if(ltype==10||ltype==2){
                mkcheckcro=null
                }else{
                currentpoi='';oldcurpo='';makecrosses(segnew,seg2,1)
                }
            }
        }if(!mkcheckcro){
        if(currentpoi)oldcurpo=currentpoi;currentpoi=from
        }
    }function selhigh(fromt){
    for(var kvid in selarr){
        var regout=kvid.split(".");if(selarr[kvid]==0){
            selarr[kvid]=1;addseg(regout[0],regout[1]);selarr[kvid]=0
            }else{
            if(typeof fromt!=_un){
                if(rsegmshow[kvid])addseg(regout[0],regout[1],fromt)
                    }else{
                if(rsegmshow[kvid])addseg(regout[0],regout[1])
                    }
            }
        }
    }function selunhigh(fromt){
    for(var kvid in selarr){
        var regout=kvid.split(".");if(typeof fromt!=_un){
            if(rsegmshow[kvid])addseg(regout[0],regout[1],fromt)
                }else{
            selarr[kvid]=0;if(rsegmshow[kvid])addseg(regout[0],regout[1])
                }
        }
    }function str2high(fromt){
    for(var kvid in selarr){
        rsegments[kvid]['sid']=fromt;rsegupnewdel[kvid]=2
        }checksvbut()
    }function selto(poi1){
    var x=[];var y=[];var i=0;var z=0;var a=0;var b=0;for(var kvid in selarr){
        i++;break
    }if(i==0&&poi1[1]){
        selarr[segnorm(poi1[0],poi1[1])]=1;if(rsegmshow[segnorm(poi1[0],poi1[1])])addseg(poi1[0],poi1[1]);return
    }i=0;for(var g=0;g<poi1.length;g++){
        if(!poi1[g])break;poi=poi1[g];for(var kvid in rpoints[poi]['s']){
            x[i]=[];y[i]={};var poi0=poi;var poi2=kvid;var poi3='';while(z==0){
                a=0;for(var kvid1 in rpoints[poi2]['s']){
                    a++;if(kvid1!=poi0){
                        poi3=kvid1;if(selarr[segnorm(poi2,kvid1)]){
                            z=1;b=1
                            }
                        }
                    }if(a<3||z==1){
                    var seg=segnorm(poi0,poi2);if(selarr[seg]){
                        z=1;b=1
                        }else if(!y[i][seg]){
                        x[i].push(seg);y[i][seg]=1;poi0=poi2;poi2=poi3;poi3='';if(a<2)z=1
                            }
                    }else{
                    z=1
                    }
                }if(b){
                i++;z=0;b=0
                }else{
                x[i]=[];y[i]={};b=0;z=0
                }
            }
        }a=-1;var b;for(var z=0;z<i;z++){
        if(a<0){
            b=z;a=x[z].length
            }else if(x[z].length<a){
            b=z;a=x[z].length
            }
        }if(a>=0){
        for(var z=0;z<x[b].length;z++){
            selarr[x[b][z]]=1;var regout=x[b][z].split(".");if(rsegmshow[segnorm(regout[0],regout[1])])addseg(regout[0],regout[1])
                }if(poi1.length==2){
            if(!selarr[segnorm(poi1[0],poi1[1])]){
                selarr[segnorm(poi1[0],poi1[1])]=1;if(rsegmshow[segnorm(poi1[0],poi1[1])])addseg(poi1[0],poi1[1])
                    }
            }
        }
    }var selarr={};var selfn=0;function changeltype(o){
    if(ltype==o)return;if(!poiaddmodecancel(2))return;ltype=o;loadroadsrenew()
    }function dotpomenu(poi,point1,menutype,seg){
    hideFloat();if(dpmenuoffrun){
        eval(dpmenuoffrun);dpmenuoffrun=''
        }if(typeof menutype=='undefined'){
        var menutype=0
        }if(menutype!=5){
        savedprop=[];selunhigh1();selarr1={};doppomar[4]='';if(doppomar[5]){
            return
        }
        }showpolyfn();if(selfn==0&&menutype!=4){
        selunhigh();selarr={}
        }var fromt1='';if(menutype==0){
        var point=rpointshow[poi].getPoint()
        }else{
        var point=point1
        }var a_=map.fromLatLngToDivPixel(point);if(pcenicon)pcenicon.hide();showpolyfn();for(var kvid in pceniconz){
        if(pceniconz[kvid]){
            if(!pceniconz[kvid].isHidden()){
                pceniconz[kvid].hide()
                }
            }
        }if(currentpoi&&!rpoints[currentpoi]['s'][poi]&&poi!=currentpoi&&menutype!=4){
        if(menutype==3&&seg){}else{
            drawlnhere(poi)
            }
        }var obj='';if(menutype==5){
        obj="white-space:nowrap;font-family:Arial,Helvetica,sans-serif;padding: 3px; padding-bottom:4px; font-size:15px;font-weight:normal;background-color: #ffffd3;";a_.y+=35;a_.x+=5
        }var menuin='<div id="pomenuih" class="add_line" style="'+obj+'" onmouseover="if (flphoar[10]){ clearTimeout(flphoar[10]);flphoar[10]=0;}if (stoppprev!=2){stoppprev=1;}showpolyfn(0,10);if(pcenicon){if (!pcenicon.isHidden()) pcenicon.hide();}notclick=1;" onmouseout="if (stoppprev!=2){stoppprev=0;};notclick=0;flphoar[10]=window.setTimeout('+"'"+'dotpomenuoff();'+"'"+',3000);">';if(menutype==2&&selfn==0){
        selarr={};if(poi==currentpoi){
            menuin+=mmenuline(localization['jsi_rd_stopdraw'],'currentpoi='+"''"+';showpolyfn();dotpomenuoff();','menu_01_29a.png','','');menuin+=mmenuline(localization['jsi_rd_delpoi'],'delpoi('+"'"+poi+"'"+');dotpomenuoff();','menu_01_37a.png','','')
            }else{
            if(currentpoi&&!rpoints[currentpoi]['s'][poi]){
                menuin+='<div class="addblbut" onclick="if (!rpoints['+"'"+currentpoi+"'"+']['+"'s'"+']['+"'"+poi+"'"+'] && !rpoints['+"'"+poi+"'"+']['+"'s'"+']['+"'"+currentpoi+"'"+']) {rpoints['+"'"+poi+"'"+']['+"'s'"+']['+"'"+currentpoi+"'"+']=1;rpoints['+"'"+currentpoi+"'"+']['+"'s'"+']['+"'"+poi+"'"+']=1;maxrtype_set('+"'"+currentpoi+"'"+');updateseg('+"'"+currentpoi+"'"+');rsegupnewdel[segnorm('+"'"+currentpoi+"."+poi+"'"+')]=2;}; dotpomenuoff();return false;" onmouseover="drawlnhere('+"'"+poi+"'"+'); jwindow3_m_bgon(this);" ONMOUSEOUT="jwindow3_m_bgoff(this);">'+localization['jsi_rd_attach']+' ??!!</div>'
                }var roadsm=[];var roadsm1={};roadsm[10]=0;for(var kvid in rpoints[poi]['s']){
                roadsm[10]++;var x=segnorm(kvid,poi);if(rsegments[x]){
                    if(rsegments[x]['sid']){
                        if(!roadsm1[rsegments[x]['sid']+'i']){
                            roadsm.push(rsegments[x]['sid'])
                            }
                        }
                    }
                }if(roadsm[10]<2||ltype!=0){
                menuin+=mmenuline(localization['jsi_rd_startnew'],'doppomar[6]=1;currentpoi='+"'"+poi+"'"+'; dotpomenuoff();','menu_01_29.png','','showpolyfn();');menuin+=mmenuline(localization['jsi_rd_delpoi'],"chkok(this,'delpoi('+String.fromCharCode(34)+'"+poi+"'+String.fromCharCode(34)+');dotpomenuoff();');",'menu_01_37a.png','','showpolyfn();')
                }else{
                menuin+='<span id="mainbuts">';menuin+=mmenuline(localization['jsi_rd_startnew'],'doppomar[6]=0;_ge('+"'nomainbuts'"+').style.display=_bk;_ge('+"'mainbuts'"+').style.display=_no;','menu_01_29.png','','showpolyfn();');menuin+=mmenuline(localization['jsi_rd_delpoi'],"chkok(this,'delpoi('+String.fromCharCode(34)+'"+poi+"'+String.fromCharCode(34)+');dotpomenuoff();');",'menu_01_37a.png','','showpolyfn();');menuin+='</span>';menuin+='<span id="nomainbuts" style="display:none;"><table class="addblbut s3" width="100%" border=0 cellspacing=0 cellpadding=0>';menuin+='<tr><td NOWRAP valign=top>';var rtypex=[];menuin+='<div style="font-size:10px;color:#ccc"><center><b>Choose road type</b></center></div>';menuin+=mmenuline(localization['jsi_rd_type_dirt'],'savedprop[1]=1;savedprop[6]=1;currentpoi='+"'"+poi+"'"+'; dotpomenuoff();','menu_01_13.png');menuin+=mmenuline(localization['jsi_rd_type_courty'],'savedprop[6]=0;savedprop[1]=1;currentpoi='+"'"+poi+"'"+'; dotpomenuoff();','menu_02_46.png');menuin+=mmenuline(localization['jsi_rd_type_stlow'],'savedprop[6]=0;savedprop[1]=0;currentpoi='+"'"+poi+"'"+'; dotpomenuoff();','menu_02_51.png');menuin+=mmenuline(localization['jsi_rd_type_roadhigh'],'savedprop[6]=0;savedprop[1]=2;currentpoi='+"'"+poi+"'"+'; dotpomenuoff();','menu_02_56.png');menuin+=mmenuline(localization['jsi_rd_type_highway'],'savedprop[6]=0;savedprop[1]=3;currentpoi='+"'"+poi+"'"+'; dotpomenuoff();','menu_02_59.png');menuin+='</td></tr>';menuin+='</table></span>'
                }if(roadsm.length==1&&roadsm[10]<2){
                menuin+='<div class="addblbut" onclick="doppomar[6]=0;currentpoi='+"'"+poi+"'"+'; dotpomenuoff(); return false;" ONMOUSEOUT="jwindow3_m_bgoff(this);" onmouseover="jwindow3_m_bgon(this);showpolyfn();">Continue&nbsp;&quot;'+givername(roadsm[0])+'&quot;&nbsp;road&nbsp;from&nbsp;this&nbsp;point</div>'
                }
            }
        }else if(menutype==1||(selfn!=0&&menutype!=5)){
        if(menutype==2||menutype==3){
            for(var kvid in selarr){
                seg=kvid;break
            }
            }var regout=seg.split(".");regout[2]=regout[1];regout[1]=regout[0];if(selfn==0){
            prevpoints(point,1)
            }doppomar[0]=seg;doppomar[3]=0;if(selfn==0){
            selarr[seg]=1;if(rsegments[seg]){
                if(rsegments[seg]['sid']){
                    doppomar[3]=rsegments[seg]['sid'];for(var kvid in rsegments){
                        if(rsegments[kvid]){
                            if(rsegments[kvid]['sid']){
                                if(rsegments[seg]['sid']==rsegments[kvid]['sid'])selarr[kvid]=1
                                    }
                            }
                        }
                    }
                }if(!doppomar[3]){
                selnosid(seg,1)
                }selhigh();if(_ge('segsadvprops')&&jwindow3state==1)advsegprop()
                }else{
            if(menutype==1){
                selto([regout[1],regout[2]])
                }else if(menutype==2){
                selto([poi])
                }
            }var from=0;for(var kvid in selarr){
            from++
        }if(selfn==0){
            menuin+='<div id="mainbuts">';doppomar[12]=0;menuin+=mmenuline(localization['jsi_rd_select'],'doppomar[12]=1;this.style.display=_no;selunhigh();selarr={};doppomar[7]='+"'"+seg+"'"+';selarr['+"'"+seg+"'"+']=1;selhigh();selfn=1;dotpomenuoff();','menu_01_32.png');if(from>1){}menuin+=_mmline;menuin+=mmenuline(localization['jsi_rd_insertpoi'],'clickonseg(new GLatLng('+point.lat()+','+point.lng()+'),'+"'"+seg+"'"+',1);dotpomenuoff();','menu_01_37.png');menuin+=mmenuline(localization['jsi_rd_delseg'],"chkok(this,'delseg('+String.fromCharCode(34)+'"+seg+"'+String.fromCharCode(34)+');dotpomenuoff();');",'menu_01_40.png')
            }else if(selfn==1){
            menuin+='<div id="mainbuts"><div class="addblbut" ONMOUSEOUT="jwindow3_m_bgoff(this);" ONMOUSEOVER="jwindow3_m_bgon(this);" onclick="selunhigh();selarr={};selfn=0;dotpomenuoff(); return false;" >'+localization['jsi_rd_cancelsel']+'</div>'
            }menuin+=_mmline;var rtypex=[];for(var kvid in selarr){
            if(rsegments[kvid]){
                if(rsegments[kvid]['sid']){
                    if(rtypex.length==0){
                        rtypex.push(rsegments[kvid]['sid'])
                        }else{
                        if(rtypex[0]!=rsegments[kvid]['sid'])rtypex.push(rsegments[kvid]['sid'])
                            }
                    }
                }
            }if(rtypex.length==0){
            menuin+=mmenuline(localization['jsi_rd_setnewname'],'clearsel(this);if (chknotsaved(1)){alert(localization.jsi_rd_ctsaveroad);}else{jwindow('+"'/sys/edit_road2/?noheader=1&newr=1&lng="+lng+"&ltype="+ltype+"'"+');}','menu_01_46.png')
            }if(rtypex.length==1){
            if(rroads[rtypex[0]+'i']&&rroads[rtypex[0]+'i'][lng]){
                rtypex[1]=lng
                }else if(rroads[rtypex[0]+'i']&&rroads[rtypex[0]+'i'][0]){
                rtypex[1]=0
                }else{
                for(var kvid in rroads[rtypex[0]+'i']){
                    rtypex[1]=kvid;break
                }
                }menuin+=mmenuline(localization['jsi_rd_editname'],'clearsel(this);if (chknotsaved(1)){alert(localization.jsi_rd_ctsaveroad);}else{jwindow('+"'/sys/edit_road2/?noheader=1&id="+rtypex[0]+"&lng="+rtypex[1]+"&ltype="+ltype+"'"+');}','menu_01_46.png')
            }else{}if(rtypex.length!=0){
            menuin+='<div class="addblbut" ONMOUSEOUT="jwindow3_m_bgoff(this);" ONMOUSEOVER="jwindow3_m_bgon(this);" onclick="clearsel(this);chkok(this,\'savedprop[3]=0; savesegprop(doppomar[0]);dotpomenuoff();\');return false;" >'+localization['jsi_rd_unsetname']+'</div>'
            }else{
            chsnrstr(seg)
            }if(ltype==10){
            menuin+=_mmline;menuin+=mmenuline(localization['jsi_rd_addriver'],"selarr={};selarr['"+seg+"']=1;makeriverwidth();selunhigh();selhigh();dotpomenuoff();",'');menuin+=mmenuline(localization['jsi_rd_removeriver'],"selarr={};selarr['"+seg+"']=1;removeriverwidth();selunhigh();selhigh();dotpomenuoff();dotpomenuoff();",'')
            }if(ltype<2){
            menuin+=_mmline;menuin+=mmenuline(localization['jsi_properties'],'_ge('+"'nomainbuts'"+').style.display=_bk;_ge('+"'mainbuts'"+').style.display=_no; prevpointsc(1);','menu_01_50.png');menuin+='</div><span id="nomainbuts" class="nan"><table class="addblbut s3 " width="100%" border=0 cellspacing=0 cellpadding=0>';menuin+='<tr><td NOWRAP valign=top>';if(ltype==0){
                var rtypex=[];if(selfn==0||from==1){
                    if(rsegments[segnorm(seg)]){
                        if(rsegments[segnorm(seg)]['rs']){
                            rtypex[rsegments[segnorm(seg)]['rs']+10]='style="border: 1px solid #888"'
                            }else if(rsegments[segnorm(seg)]['rt']||rsegments[segnorm(seg)]['rt']==0){
                            rtypex[rsegments[segnorm(seg)]['rt']]='style="border: 1px solid #888"'
                            }
                        }
                    }menuin+='<div style="font-size:10px;color:#ccc"><center><b>'+localization['jsi_rd_roadtype']+'</b></center></div>';menuin+='<span>';menuin+=mmenuline(localization['jsi_rd_type_dirt'],'clearsel(this);savedprop[6]=1;savedprop[1]=1;savesegprop('+"'"+seg+"'"+');','menu_01_13.png',rtypex[11],'selhigh(1);','selunhigh(100);');menuin+=mmenuline(localization['jsi_rd_type_courty'],'clearsel(this);savedprop[6]=0;savedprop[1]=1;savesegprop('+"'"+seg+"'"+');','menu_02_46.png',rtypex[1],'selhigh(1);','selunhigh(100);');menuin+=mmenuline(localization['jsi_rd_type_stlow'],'clearsel(this);savedprop[6]=0;savedprop[1]=0;savesegprop('+"'"+seg+"'"+');','menu_02_51.png',rtypex[0],'selhigh(0);','selunhigh(100);');menuin+=mmenuline(localization['jsi_rd_type_roadhigh'],'clearsel(this);savedprop[6]=0;savedprop[1]=2;savesegprop('+"'"+seg+"'"+');','menu_02_56.png',rtypex[2],'selhigh(2);','selunhigh(100);');menuin+=mmenuline(localization['jsi_rd_type_highway'],'clearsel(this);savedprop[6]=0;savedprop[1]=3;savesegprop('+"'"+seg+"'"+');','menu_02_59.png',rtypex[3],'selhigh(3);','selunhigh(100);');menuin+='</span>';menuin+=_mmline;var rtypex=[];if(rsegments[segnorm(seg)]){
                    if(rsegments[segnorm(seg)]['wa']||rsegments[segnorm(seg)]['wa']==0){
                        rtypex[rsegments[segnorm(seg)]['wa']]='style="border: 1px solid #888"';console.log('haha: '+rsegments[segnorm(seg)]['wa']+' seg'+seg)
                        }
                    }menuin+='<div style="font-size:10px;color:#ccc"><center><b>'+localization['jsi_rd_direction']+'</b></center></div><span class="addblbut" ONMOUSEOUT="jwindow3_m_bgoff(this);" ONMOUSEOVER="jwindow3_m_bgon(this);" onclick="clearsel(this);savedprop[0]=0;savesegprop('+"'"+seg+"'"+'); return false;" '+rtypex[0]+'>&lt;==&gt;</span>&nbsp;<span class="addblbut" ONMOUSEOUT="showpolyfn();jwindow3_m_bgoff(this);" ONMOUSEOVER="showaydir(2);jwindow3_m_bgon(this);" onclick="clearsel(this);savedprop[0]=2;savesegprop('+"'"+seg+"'"+'); return false;" '+rtypex[2]+'>&lt;--</span>&nbsp;<span class="addblbut" ONMOUSEOUT="showpolyfn();jwindow3_m_bgoff(this);" ONMOUSEOVER="showaydir(1);jwindow3_m_bgon(this);" onclick="clearsel(this);savedprop[0]=1;savesegprop('+"'"+seg+"'"+'); return false;"  '+rtypex[1]+'>--&gt;</span>'
                }menuin+=_mmline;if(ltype<2){
                var a=[];var rtypex=[];if(selfn==0||from==1){
                    rtypex[0]='style="background-color:#888;"';a[0]='style="border: 1px solid #888"';if(rsegments[segnorm(seg)]){
                        if(rsegments[segnorm(seg)]['re']||rsegments[segnorm(seg)]['re']==0){
                            rtypex[0]='';a[0]='';rtypex[rsegments[segnorm(seg)]['re']]='style="background-color:#888;"';a[rsegments[segnorm(seg)]['re']]='style="border: 1px solid #888"'
                            }
                        }
                    }menuin+='<div style="font-size:10px;color:#ccc"><center><b>'+localization['jsi_rd_elevation']+'</b></center></div>';menuin+='<span>';menuin+=mmenuline(localization['jsi_rd_el_overpass']+' <span id="tmpid1" class="addblbut" onclick="clearsel(this,2);savedprop[4]=1;savesegprop('+"'"+seg+"'"+'); return false;" '+rtypex[1]+'>1</span><span id="tmpid2" class="addblbut" onclick="clearsel(this,2);savedprop[4]=2;savesegprop('+"'"+seg+"'"+'); return false;" '+rtypex[2]+'>2</span><span id="tmpid3" class="addblbut" onclick="clearsel(this,2);savedprop[4]=3;savesegprop('+"'"+seg+"'"+'); return false;" '+rtypex[3]+'>3</span>',"clearsel(_ge('tmpid11'),1);clearsel(this);if (savedprop[4]!=2 && savedprop[4]!=3){clearsel(_ge('tmpid1'),2);savedprop[4]=1;}savesegprop('"+seg+"');",'',a[1]||a[2]||a[3]);menuin+=mmenuline(localization['jsi_rd_el_groundroad'],"clearsel(this);clearsel(_ge('tmpid1'),1);clearsel(_ge('tmpid11'),1);savedprop[4]=0;savesegprop('"+seg+"');",'',a[0]);menuin+=mmenuline(localization['jsi_rd_el_tunnel']+' <span id="tmpid11" class="addblbut" onclick="clearsel(this,2);savedprop[4]=-1;savesegprop('+"'"+seg+"'"+'); return false;" '+rtypex[-1]+'>-1</span><span id="tmpid12" class="addblbut" onclick="clearsel(this,2);savedprop[4]=-2;savesegprop('+"'"+seg+"'"+'); return false;" '+rtypex[-2]+'>-2</span>',"clearsel(_ge('tmpid1'),1);clearsel(this);if (savedprop[4]!=-2){clearsel(_ge('tmpid11'),2);savedprop[4]=-1;}savesegprop('"+seg+"');",'',a[-1]||a[-2]);menuin+='</span>'
                }var rtypex=[];if(selfn==0||from==1){
                if(rsegments[segnorm(seg)]){
                    if(rsegments[segnorm(seg)]['lw']||rsegments[segnorm(seg)]['lw']==0){
                        rtypex[rsegments[segnorm(seg)]['lw']]='style="border: 1px solid #888"'
                        }
                    }
                }if(ltype==0){}if(lvl>0&&rsegments[seg]['uid']){
                menuin+=_mmline;menuin+=mmenuline('Created by...','jwindow(\'/sys/user/?uid='+rsegments[seg]['uid']+'&user=info\');','')
                }menuin+='</td></tr>';menuin+='<tr><td NOWRAP valign=top>';menuin+='</td></tr>';menuin+='</table>'
            }else{
            if(lvl>0&&rsegments[seg]['uid']){
                menuin+=_mmline;menuin+=mmenuline('Created by...','jwindow(\'/sys/user/?uid='+rsegments[seg]['uid']+'&user=info\');','')
                }
            }
        }else if(menutype==3){
        var a='';if(seg){
            a="currentpoi='';"
            }if(ltype==0){
            menuin+=mmenuline(localization['jsi_rd_startnew'],a+'doppomar[6]=0;_ge('+"'nomainbuts'"+').style.display=_bk;_ge('+"'mainbuts'"+').style.display=_no;','menu_01_29.png','id="mainbuts"');menuin+='<span id="nomainbuts" style="display:none;"><table class="addblbut s3" width="100%" border=0 cellspacing=0 cellpadding=0>';menuin+='<tr><td NOWRAP valign=top>';var rtypex=[];menuin+='<div style="font-size:10px;color:#ccc"><center><b>'+localization['jsi_rd_roadtype']+'</b></center></div>';menuin+=mmenuline(localization['jsi_rd_type_dirt'],'clearsel(this);dotpomenuoff();savedprop[6]=1;savedprop[1]=1;clicknewpoi(new GLatLng('+point.lat()+','+point.lng()+'),1);','menu_01_13.png');menuin+=mmenuline(localization['jsi_rd_type_courty'],'clearsel(this);dotpomenuoff();savedprop[6]=0;savedprop[1]=1;clicknewpoi(new GLatLng('+point.lat()+','+point.lng()+'),1);','menu_02_46.png');menuin+=mmenuline(localization['jsi_rd_type_stlow'],'clearsel(this);dotpomenuoff();savedprop[6]=0;savedprop[1]=0;clicknewpoi(new GLatLng('+point.lat()+','+point.lng()+'),1);','menu_02_51.png');menuin+=mmenuline(localization['jsi_rd_type_roadhigh'],'clearsel(this);dotpomenuoff();savedprop[6]=0;savedprop[1]=2;clicknewpoi(new GLatLng('+point.lat()+','+point.lng()+'),1);','menu_02_56.png');menuin+=mmenuline(localization['jsi_rd_type_highway'],'clearsel(this);dotpomenuoff();savedprop[1]=3;savedprop[6]=0;clicknewpoi(new GLatLng('+point.lat()+','+point.lng()+'),1);','menu_02_59.png');menuin+='</td></tr>';menuin+='</table></span>'
            }else{
            menuin+=mmenuline(localization['jsi_rd_startnew'],a+'clearsel(this);dotpomenuoff();savedprop[1]=0; clicknewpoi(new GLatLng('+point.lat()+','+point.lng()+'),1);','menu_01_29.png','id="mainbuts"')
            }prevpoints(point,1)
        }else if(menutype==4||menutype==5){
        menuin+=cro['menuin']
        }menuin+='</div>';doppomar[1]=menutype;if(flphoar[10]){
        clearTimeout(flphoar[10]);flphoar[10]=0
        }if(menutype!=4){
        flphoar[10]=window.setTimeout("dotpomenuoff();",5000)
        }else{
        flphoar[10]=window.setTimeout("dotpomenuoff();",15000)
        }mapttip(point,menuin,1);return;_ge('pomenu').innerHTML=menuin;_ge('pomenu').style.width=50+'px';a_.x+=10;a_.y-=15;var x1=map.fromLatLngToDivPixel(bounds_ne);var x2=map.fromLatLngToDivPixel(bounds_sw);if(a_.y+20>x2.y)a_.y-=50;_ge('pomenu').style.left=a_.x;_ge('pomenu').style.top=a_.y;_ge('pomenu').style.display=_bk
    }var chkokeval='';function chkok(obj,query,from){
    if(typeof from!=_un){
        eval(chkokeval);chkokeval=''
        }else{
        obj.onclick='';obj.innerHTML=obj.innerHTML+'&nbsp;<button class=button style="font-size: 8px;height:100%;" onclick="chkok(0,0,1)">Ok?</button>';chkokeval=query
        }
    }function dotpmquick(){
    var menuin='';menuin+='<span id="nomainbuts"><table class="addblbut s3" width="100%" border=0 cellspacing=0 cellpadding=0>';menuin+='<tr><td NOWRAP valign=top>';var rtypex=[];var x=0;if(rpoints[currentpoi]['s']){
        for(var kvid in rpoints[currentpoi]['s']){
            if(rsegments[segnorm(currentpoi,kvid)]){
                if(rsegments[segnorm(currentpoi,kvid)]['rs']){
                    x=rsegments[segnorm(currentpoi,kvid)]['rs']+10;break
                }if(rsegments[segnorm(currentpoi,kvid)]['rt']){
                    x=rsegments[segnorm(currentpoi,kvid)]['rt'];break
                }
                }
            }
        }rtypex[x]='style="border: 1px solid #888"';menuin+='<div><b>'+localization['jsi_rd_roadtype']+'</b></div>';menuin+=mmenuline(localization['jsi_rd_type_dirt'],'clearsel(this);savedprop[6]=1;savedprop[1]=1;','menu_01_13.png',rtypex[11]);menuin+=mmenuline(localization['jsi_rd_type_courty'],'clearsel(this);savedprop[6]=0;savedprop[1]=1;','menu_02_46.png',rtypex[1]);menuin+=mmenuline(localization['jsi_rd_type_stlow'],'clearsel(this);savedprop[6]=0;savedprop[1]=0;','menu_02_51.png',rtypex[0]);menuin+=mmenuline(localization['jsi_rd_type_roadhigh'],'clearsel(this);savedprop[6]=0;savedprop[1]=2;','menu_02_56.png',rtypex[2]);menuin+=mmenuline(localization['jsi_rd_type_highway'],'clearsel(this);savedprop[6]=0;savedprop[1]=3;','menu_02_59.png',rtypex[3]);menuin+='</td></tr>';menuin+='</table>';menuin+='<table cellspacing=0 border=0 cellpadding=0><tr><td nowrap>&nbsp;<button class=button onclick="clearsel(this);dotpomenuoff();return false;">Apply</button>&nbsp;<!--<button class=button onclick="return false;">more&raquo;</button>--></td></tr></table></span>';_ge('pomenuih').innerHTML=menuin
    }savedprop=[];function savesegprop(seg){
    if(typeof seg==_un)var seg=0;var x=0;for(var kvid in selarr){
        if(selarr[kvid]==1)x++
    }if(x==0){
        for(var kvid in selarr){
            x++
        }
        }if(x==1&&selfn==0&&seg){
        var fromt=segnorm(seg);if(!rsegments[fromt])rsegments[fromt]={};if(typeof savedprop[0]!=_un)rsegments[fromt]['wa']=savedprop[0]*1;if(typeof savedprop[1]!=_un)rsegments[fromt]['rt']=savedprop[1]*1;if(typeof savedprop[2]!=_un)rsegments[fromt]['lw']=savedprop[2]*1;if(!rsegupnewdel[fromt])rsegupnewdel[fromt]=1;maxrtype_set(fromt);if(typeof savedprop[3]!=_un)rsegments[fromt]['sid']=savedprop[3]*1;if(typeof savedprop[4]!=_un)rsegments[fromt]['re']=savedprop[4]*1;if(typeof savedprop[6]!=_un)rsegments[fromt]['rs']=savedprop[6]*1;var regout=seg.split(".");regout[2]=regout[1];regout[1]=regout[0];addseg(regout[1],regout[2])
        }else{
        var fromt=segnorm(seg);if(typeof savedprop[0]!=_un){
            rsegments[fromt]['wa']=savedprop[0]*1;var from=0;for(var kvid in selarr)from++;var regout=fromt.split(".");regout[2]=regout[1];regout[1]=regout[0];var poi=regout[1];var x1=0;var segold=fromt;var y;var z=regout[2];while(from>0){
                var x=0;for(var kvid in rpoints[poi]['s']){
                    if(kvid==z)continue;y=kvid;x++
                }if(x==1){
                    var segnew=segnorm(poi,y);rsegments[segnew]['wa']=rsegments[segold]['wa'];if(segcheckrev(segold,segnew)){
                        if(rsegments[segold]['wa']==1){
                            rsegments[segnew]['wa']=2
                            }else if(rsegments[segold]['wa']==2){
                            rsegments[segnew]['wa']=1
                            }
                        }else{}z=poi;poi=y;segold=segnew;from--
                }else{
                    if(!x1){
                        poi=regout[2];x1++;segold=fromt;z=regout[1]
                        }else{
                        from=0;break
                    }
                    }
                }
            }for(var kvid in selarr){
            if(!rsegupnewdel[kvid])rsegupnewdel[kvid]=1;if(!rsegments[kvid])rsegments[kvid]={};maxrtype_set(kvid);if(typeof savedprop[1]!=_un)rsegments[kvid]['rt']=savedprop[1]*1;if(typeof savedprop[3]!=_un)rsegments[kvid]['sid']=savedprop[3]*1;if(typeof savedprop[6]!=_un)rsegments[kvid]['rs']=savedprop[6]*1;if(typeof savedprop[4]!=_un)rsegments[kvid]['re']=savedprop[4]*1;var regout=kvid.split(".");regout[2]=regout[1];regout[1]=regout[0];if(rsegmshow[kvid])addseg(regout[1],regout[2])
                }
        }if(strchn.length>0){
        var qs='id='+strchn1+'&';for(var e=0;e<64;e++){
            if(strchn[e]){
                qs+=(qs=='')?'':'&';var theval=strchn[e].replace(/%/g,'%25');qs+=e+'='+encodeURIComponent(theval)
                }
            }strchn=[];loadXML('/sys/edit_road2/?noheader=1&do=quicksave&ltype='+ltype,'',qs)
        }rsegupnewdel[seg]=1;checksvbut()
    }var dpmenuoffrun='';function dotpomenuoff(fromt){
    doppomar[1]=0;if(dpmenuoffrun){
        eval(dpmenuoffrun);dpmenuoffrun=''
        }for(var kvid in pceniconz){
        if(pceniconz[kvid]){
            if(!pceniconz[kvid].isHidden()){
                pceniconz[kvid].hide()
                }
            }
        }showpolyfn();mapttipc();if(stoppprev!=2)stoppprev=0;notclick=0;if(selfn==0){
        if(_ge('segsadvprops')&&jwindow3state==1){}else{
            selunhigh();for(var kvid in selarr){
                selarr[kvid]=0
                }
            }
        }
    }function advsegprop(){
    var menuin='<div class="tagscl" id="segsadvprops" style="padding: 6px;background-color: #eee"><b>Advances segment properties</b>';for(var kvid in selarr){
        var seg=kvid;break
    }console.log(seg);var regout=kvid.split(".");regout[2]=regout[1];regout[1]=regout[0];var rtypex=[];if(selfn==0){
        if(rsegments[segnorm(seg)]){
            if(rsegments[segnorm(seg)]['rs']){
                rtypex[rsegments[segnorm(seg)]['rs']+10]='style="border: 1px solid #888"'
                }else if(rsegments[segnorm(seg)]['rt']||rsegments[segnorm(seg)]['rt']==0){
                rtypex[rsegments[segnorm(seg)]['rt']]='style="border: 1px solid #888"'
                }
            }
        }menuin+='<span><div style="width:80%"><b>Road type:</b></div>';menuin+=mmenuline(localization['jsi_rd_type_dirt'],'clearsel(this);savedprop[6]=1;savedprop[1]=1;','menu_01_13.png',rtypex[11],'selhigh(1);','selunhigh(100);');menuin+=mmenuline(localization['jsi_rd_type_courty'],'clearsel(this);savedprop[6]=0;savedprop[1]=1;','menu_02_46.png',rtypex[1],'selhigh(1);','selunhigh(100);');menuin+=mmenuline(localization['jsi_rd_type_stlow'],'clearsel(this);savedprop[6]=0;savedprop[1]=0;','menu_02_51.png',rtypex[0],'selhigh(0);','selunhigh(100);');menuin+=mmenuline(localization['jsi_rd_type_roadhigh'],'clearsel(this);savedprop[6]=0;savedprop[1]=2;','menu_02_56.png',rtypex[2],'selhigh(2);','selunhigh(100);');menuin+=mmenuline(localization['jsi_rd_type_highway'],'clearsel(this);savedprop[6]=0;savedprop[1]=3;','menu_02_59.png',rtypex[3],'selhigh(3);','selunhigh(100);');menuin+='</span>';var rtypex=[];if(selfn==0){
        if(rsegments[segnorm(seg)]){
            if(rsegments[segnorm(seg)]['wa']||rsegments[segnorm(seg)]['wa']==0){
                rtypex[rsegments[segnorm(seg)]['wa']]='style="border: 1px solid #888"'
                }
            }menuin+='<div style="overflow: hidden; width:100%;height:4px;" ></div>';menuin+='<span><div><b>Direction (not ready yet for multiple segment selections):</b></div><span class="addblbut" ONMOUSEOUT="jwindow3_m_bgoff(this);" ONMOUSEOVER="jwindow3_m_bgon(this);" onclick="clearsel(this);savedprop[0]=0; return false;" '+rtypex[0]+'>&lt;==&gt;</span>&nbsp;<span class="addblbut" ONMOUSEOUT="showpolyfn();jwindow3_m_bgoff(this);" ONMOUSEOVER="showaydir(2);jwindow3_m_bgon(this);" onclick="clearsel(this);savedprop[0]=2; return false;" '+rtypex[2]+'>&lt;--</span>&nbsp;<span class="addblbut" ONMOUSEOUT="showpolyfn();jwindow3_m_bgoff(this);" ONMOUSEOVER="showaydir(1);jwindow3_m_bgon(this);" onclick="clearsel(this);savedprop[0]=1; return false;"  '+rtypex[1]+'>--&gt;</span></span>'
        }var rtypex=[];if(selfn==0){
        rtypex[0]='style="border: 1px solid #888"';if(rsegments[segnorm(seg)]){
            if(rsegments[segnorm(seg)]['re']||rsegments[segnorm(seg)]['re']==0){
                rtypex[0]='';rtypex[rsegments[segnorm(seg)]['re']]='style="border: 1px solid #888"'
                }
            }
        }menuin+='<div style="overflow: hidden; width:100%;height:4px;" ></div>';menuin+='<br><span><div><b>Elevation - upper/lover <br>(only if road cross another <br>but does not make crossroad):</b></div><!--<span class="addblbut" ONMOUSEOUT="jwindow3_m_bgoff(this);" ONMOUSEOVER="jwindow3_m_bgon(this);" onclick="clearsel(this);savedprop[4]=-2; return false;" '+rtypex[3]+'>-2</span><span class="addblbut" ONMOUSEOUT="jwindow3_m_bgoff(this);" ONMOUSEOVER="jwindow3_m_bgon(this);" onclick="clearsel(this);savedprop[4]=-1; return false;" '+rtypex[3]+'>-1</span>--><span class="addblbut" ONMOUSEOUT="jwindow3_m_bgoff(this);" ONMOUSEOVER="jwindow3_m_bgon(this);" onclick="clearsel(this);savedprop[4]=0; return false;" '+rtypex[0]+'>0 (ground)</span><span class="addblbut" ONMOUSEOUT="jwindow3_m_bgoff(this);" ONMOUSEOVER="jwindow3_m_bgon(this);" onclick="clearsel(this);savedprop[4]=1; return false;" '+rtypex[1]+'>1</span><span class="addblbut" ONMOUSEOUT="jwindow3_m_bgoff(this);" ONMOUSEOVER="jwindow3_m_bgon(this);" onclick="clearsel(this);savedprop[4]=2; return false;" '+rtypex[2]+'>2</span><span class="addblbut" ONMOUSEOUT="jwindow3_m_bgoff(this);" ONMOUSEOVER="jwindow3_m_bgon(this);" onclick="clearsel(this);savedprop[4]=3; return false;" '+rtypex[3]+'>3</span><span class="addblbut" ONMOUSEOUT="jwindow3_m_bgoff(this);" ONMOUSEOVER="jwindow3_m_bgon(this);" onclick="clearsel(this);savedprop[4]=4; return false;" '+rtypex[4]+'>4</span><span class="addblbut" ONMOUSEOUT="jwindow3_m_bgoff(this);" ONMOUSEOVER="jwindow3_m_bgon(this);" onclick="clearsel(this);savedprop[4]=5; return false;" '+rtypex[5]+'>5</span></span>';menuin+='<div style="overflow: hidden; width:100%;height:4px;" ></div>';menuin+='<br><table cellspacing=0 border=0 cellpadding=0><tr><td nowrap>&nbsp;<button class=button onclick="clearsel(this);savesegprop('+"'"+seg+"'"+');return false;">Save</button>';if(selfn==0){
        menuin+='&nbsp;<button class=button onclick="clearsel(this);selfn=1;return false;">Select more segments...</button>'
        }menuin+='</td></tr></table></span>';menuin+='</div>';j3_put(menuin)
    }function lngchstreet(){
    var rtypex=[];rtypex[0]='';if(_ge('strnow').value==0){}else{
        if(rroads[_ge('strnow').value+'i'][_ge('slangid').options[_ge('slangid').selectedIndex].value]){
            rtypex[0]=rroads[_ge('strnow').value+'i'][_ge('slangid').options[_ge('slangid').selectedIndex].value]
            }
        }if(strchn[_ge('slangid').options[_ge('slangid').selectedIndex].value]){
        rtypex[0]=strchn[_ge('slangid').options[_ge('slangid').selectedIndex].value]
        }_ge('streetup').value=rtypex[0]
    }var strchn=[];var strchn1;function lngchstrc(){
    var x=_ge('slangid').options[_ge('slangid').selectedIndex].value*1;strchn[x]=_ge('streetup').value;strchn1=_ge('strnow').value;var y=_ge('slangid').options[_ge('slangid').selectedIndex].text;if(_ge('streetup').value!=''&&y.indexOf('*')==-1){
        _ge('slangid').options[_ge('slangid').selectedIndex].text+='*'
        }
    }function chsnrstr(seg){
    doppomar[4]='';var roadsm=[];var roadsm1={};for(var kvid in selarr){
        var regout=kvid.split(".");for(var i=0;i<2;i++){
            for(var kvid in rpoints[regout[i]]['s']){
                var x=segnorm(kvid,regout[i]);if(rsegments[x]){
                    if(rsegments[x]['sid']){
                        if(!roadsm1[rsegments[x]['sid']+'i']){
                            roadsm.push(rsegments[x]['sid']);roadsm1[rsegments[x]['sid']+'i']=1
                            }
                        }
                    }
                }
            }
        }if(vtype==6){
        for(var kvid in rsegmshow){
            if(rsegments[kvid]){
                if(rsegments[kvid]['sid']){
                    if(!roadsm1[rsegments[kvid]['sid']+'i']&&roadsm.length<15){
                        roadsm.push(rsegments[kvid]['sid']);roadsm1[rsegments[kvid]['sid']+'i']=2
                        }
                    }
                }
            }
        }var query;for(var i=0;i<roadsm.length;i++){
        var x='';query='';if(roadsm1[roadsm[i]+'i']==2)query=' <span class="s0">(not close to your selection!)</span>';if(rsegments[seg]&&selfn==0){
            if(rsegments[seg]['sid']==roadsm[i]){
                x='style="border: 1px solid #888"'
                }
            }doppomar[4]+='<div " '+x+' class="addblbut" ONMOUSEOUT="jwindow3_m_bgoff(this);" ONMOUSEOVER="jwindow3_m_bgon(this);" onclick="clearsel(this);chkok(this,'+"'"+'savedprop[3]='+roadsm[i]+';savesegprop(doppomar[0]);if(vtype==5){save_rbn(savedprop[3]);};dotpomenuoff();jwindow_close();'+"'"+');" >'+givername(roadsm[i])+query+'</div>'
        }if(!doppomar[4]){
        doppomar[4]='There are no streets close to your selection.'
        }
    }function clearsel(obj,o){
    for(var i=0;i<obj.parentNode.childNodes.length;i++){
        if(obj.parentNode.childNodes.item(i).style){
            obj.parentNode.childNodes.item(i).style.border='';obj.parentNode.childNodes.item(i).style.backgroundColor=''
            }
        }if(!o){
        obj.style.border='1px solid #888'
        }else if(o==2){
        obj.style.backgroundColor='#888'
        }
    }function delseg(seg,o){
    var regout=seg.split(".");if(ltype==10&&rsegments[seg]&&!rsegments[seg]['rt']&&!o){
        var a=[];var b=[];if(rpoints[regout[0]]&&rpoints[regout[0]]['s']){
            for(var kvid in rpoints[regout[0]]['s']){
                if(rsegments[segnorm(kvid,regout[0])]&&rsegments[segnorm(kvid,regout[0])]['rt']==2)a.push(kvid)
                    }
            }if(rpoints[regout[1]]&&rpoints[regout[1]]['s']){
            for(var kvid in rpoints[regout[1]]['s']){
                if(rsegments[segnorm(kvid,regout[1])]&&rsegments[segnorm(kvid,regout[1])]['rt']==2)b.push(kvid)
                    }
            }if(a[0]&&b[0]&&rsegments[segnorm(a[0],b[0])]){
            delseg(segnorm(a[0],b[0]),1)
            }if(a[0]&&b[1]&&rsegments[segnorm(a[0],b[1])]){
            delseg(segnorm(a[0],b[1]),1)
            }if(a[1]&&b[0]&&rsegments[segnorm(a[1],b[0])]){
            delseg(segnorm(a[1],b[0]),1)
            }if(a[1]&&b[1]&&rsegments[segnorm(a[1],b[1])]){
            delseg(segnorm(a[1],b[1]),1)
            }
        }if(rsegmshow[seg]){
        if(poilisteners[seg])GEvent.removeListener(poilisteners[seg]);map.removeOverlay(rsegmshow[seg]);delete rsegmshow[seg];rsegupnewdel[segnorm(seg)]=3
        }maxrtype_set(seg);if(rpoints[regout[0]]&&rpoints[regout[0]]['s'])delete rpoints[regout[0]]['s'][regout[1]];if(rpoints[regout[1]]&&rpoints[regout[1]]['s'])delete rpoints[regout[1]]['s'][regout[0]];if(rsegments[seg])delete rsegments[seg];if(!o){
        delsingle(regout[0]);delsingle(regout[1])
        }checksvbut()
    }function delpoi(poi,fromt){
    var from=0;var fromt1=new Array;if(typeof fromt==_un)fromt=0;if(ltype==10){
        a={}
        }if(rpoints[poi]&&rpoints[poi]['s']){
        for(var kvid in rpoints[poi]['s']){
            fromt1.push(kvid);from++;if(ltype==10){
                if(rsegments[segnorm(kvid,poi)]&&rsegments[segnorm(kvid,poi)]['rt']==2)a[kvid]=kvid
                    }
            }
        }if(from==0){}else if(from==1){
        maxrtype_set(poi);delete rpoints[poi]['s'][fromt1[0]];if(rpoints[fromt1[0]])delete rpoints[fromt1[0]]['s'][poi];var seg=segnorm(poi,fromt1[0]);if(poilisteners[seg])GEvent.removeListener(poilisteners[seg]);if(rsegmshow[seg])map.removeOverlay(rsegmshow[seg]);delete rsegmshow[seg];rsegupnewdel[segnorm(seg)]=3
        }else if(from>1){
        maxrtype_set(poi);for(var kvid in rpoints[poi]['s']){
            delete rpoints[poi]['s'][kvid];if(rpoints[kvid])delete rpoints[kvid]['s'][poi];var seg=segnorm(poi,kvid);rsegupnewdel[segnorm(seg)]=3;if(poilisteners[seg])GEvent.removeListener(poilisteners[seg]);if(rsegmshow[seg])map.removeOverlay(rsegmshow[seg]);delete rsegmshow[seg]
        }if(from==2){
            if(fromt==0){
                for(var a1 in fromt1){
                    for(var a2 in fromt1){
                        if(fromt1[a1]!=fromt1[a2]&&!rpoints[fromt1[a1]]['s'][fromt1[a2]]){
                            rpoints[fromt1[a1]]['s'][fromt1[a2]]=1;rpoints[fromt1[a2]]['s'][fromt1[a1]]=1;var segnew=segnorm(fromt1[a1],fromt1[a2]);rsegupnewdel[segnew]=2;var segold=seg;if(rsegments[segold]){
                                rsegments[segnew]={};for(var kvid in rsegments[segold]){
                                    rsegments[segnew][kvid]=rsegments[segold][kvid];if(rsegments[segold]['wa']){
                                        if(!segcheckrev(segold,segnew)){
                                            if(rsegments[segold]['wa']==1){
                                                rsegments[segnew]['wa']=2
                                                }else if(rsegments[segold]['wa']==2){
                                                rsegments[segnew]['wa']=1
                                                }
                                            }
                                        }
                                    }
                                }maxrtype_set(segnew);updateseg(fromt1[a1])
                            }
                        }
                    }
                }
            }
        }else if(from>2){}if(ltype==10&&fromt!=2){
        for(var kvid in a){
            delpoi(kvid,1)
            }for(var a1 in fromt1){
            if(!a[fromt1[a1]])delsingle(fromt1[a1])
                }
        }rpoupnewdel[poi]=3;if(currentpoi==poi)currentpoi='';if(rpointshow[poi])map.removeOverlay(rpointshow[poi]);if(poilisteners[poi])GEvent.removeListener(poilisteners[poi]);if(poilisteners1[poi])GEvent.removeListener(poilisteners1[poi]);if(poilisteners2[poi])GEvent.removeListener(poilisteners2[poi]);if(poilisteners3[poi])GEvent.removeListener(poilisteners3[poi]);if(rpoints[poi])delete rpoints[poi];if(rpointshow[poi])delete rpointshow[poi];checksvbut()
    }function delsingle(poi){
    var from=0;var a=[];if(rpoints[poi]&&rpoints[poi]['s']){
        for(var kvid in rpoints[poi]['s']){
            from++;if(rsegments[segnorm(kvid,poi)]&&rsegments[segnorm(kvid,poi)]['rt']==2)a.push(kvid)
                }
        }if(ltype==10&&from&&a.length==from){
        delpoi(poi)
        }else if(ltype==10&&a.length>0){
        for(var b in a){
            if(rpoints[a[b]]&&rpoints[a[b]]['s']){
                var c=0;for(var kvid in rpoints[a[b]]['s']){
                    c++
                }if(c==1)delpoi(a[b],2)
                    }
            }
        }if(!from)delpoi(poi)
        }function drawlnhere(poi){
    if(pcenicon){
        pcenicon.hide()
        }if(currentpoi){
        if(rpoints[currentpoi]['s'][poi]){
            showpolyfn();return
        }drawroadprev(new GLatLng(rpoints[currentpoi]['y'],rpoints[currentpoi]['x']),new GLatLng(rpoints[poi]['y'],rpoints[poi]['x']))
        }
    }function zinormal(){
    return 25000
    }function zilow(){
    return 0
    }var zeta;function drawroadprev(x1,y1){
    var y=0;if(currentpoi){
        var x=[];x.push(1);if(rpoints[currentpoi]['s']){
            for(var kvid in rpoints[currentpoi]['s']){
                x.push(kvid);if(kvid.indexOf('n')!=-1){
                    x[0]=x.length-1
                    }
                }
            }if(x.length>1){
            var segold1=segnorm(currentpoi,x[x[0]]);if(rsegments[segold1]){
                if(rsegments[segold1]['rt'])y=rsegments[segold1]['rt']
                    }
            }
        }if(typeof savedprop[1]!=_un)y=savedprop[1];if(ltype==10)y=0;var stw_=segwidth(y);polyz=[];polyz.push(Math.round(x1.lng()*10000000));polyz.push(Math.round(x1.lat()*10000000));polyz.push(Math.round(y1.lng()*10000000));polyz.push(Math.round(y1.lat()*10000000));show_svgdiv(0,0,polyz,[1,0,1,1,0,0,stw_,0.7])
    }function checkinedit(from){
    var i=0;for(var kvid in rpoupnewdel){
        i++
    }for(var kvid in rsegupnewdel){
        i++
    }if(from==1&&i>0){
        alert(localization['jsi_svchng'])
        }return i
    }function checksvbut(){
    show_binf();return;if(_ge('flomenu').innerHTML.match(/flomenubcanc/)){
        _ge('flomenu').style.display=_bk
        }else{
        _ge('flomenu').innerHTML="<span id='notifyit' class='normalwrn' onmouseover='rhideprev();stoppprev=1' onmouseout='stoppprev=0'></span><br><span onmouseover='rhideprev();stoppprev=1' onmouseout='stoppprev=0'><button id='flomenubsave' class='button' onclick='if(chknotsaved()){saveroads()}'>"+localization['jsi_savebut']+"</button>&nbsp;&nbsp;<button id='flomenubcanc' class='button' onclick='cancelredit()' >"+localization['jsi_cancelbut']+"</button></span>";_ge('flomenu').style.bottom="10";_ge('flomenu').style.left=Math.round(document.getElementById('map').offsetWidth/2-80);_ge('flomenu').style.display=_bk
        }var i=chknotsaved();if(i==0){
        if(_ge('flomenubsave'))_ge('flomenubsave').className='button buttondis'
            }else{
        if(_ge('flomenubsave'))_ge('flomenubsave').className='button';if(i>200){}
    }
    }function maxrtype_set(seg){
    var regout=seg.split(".");for(var kvid in rpoints[regout[0]]['s']){
        if(regout[1]&&kvid!=regout[1])continue;maxrtype=Math.max(maxrtype,rsegments[segnorm(kvid,regout[0])]['rt']);if(maxrtype==1&&rsegments[segnorm(kvid,regout[0])]['rt']===0)maxrtype=0
            }
    }function saveroads(){
    mapttipc();if(notsave==1){
        console.log('notsave locked');return
    }if(!chknotsaved())return;notsave=1;jwindow('',250,75,'<table border=0><tr><td>'+loadimg+'</td><td class="normalwrn">'+localization['jsi_saving']+'</td></tr></table>',3);var textpoi='poi=';var textseg='&seg=';for(var kvid in rpoupnewdel){
        var from=0;if(kvid.indexOf('n')!=-1){
            from=1
            }if(rpoupnewdel[kvid]==3&&from)continue;if(from==1)rpoupnewdel[kvid]=2;if(rpoupnewdel[kvid]==3){
            textpoi+=kvid+','+rpoupnewdel[kvid]+',0,0|'
            }else{
            textpoi+=kvid+','+rpoupnewdel[kvid]+','+parseInt(rpoints[kvid]['x']*10000000)+','+parseInt(rpoints[kvid]['y']*10000000)+'|'
            }
        }for(var kvid in rsegupnewdel){
        var from=0;if(kvid.match(/n/))from=1;if(rsegupnewdel[kvid]==3&&from)continue;if(from==1)rsegupnewdel[kvid]=2;if(!rsegments[kvid])rsegments[kvid]={};if(!rsegments[kvid]['sid'])rsegments[kvid]['sid']=0;if(!rsegments[kvid]['wa'])rsegments[kvid]['wa']=0;if(!rsegments[kvid]['rt'])rsegments[kvid]['rt']=0;if(!rsegments[kvid]['lw'])rsegments[kvid]['lw']=0;if(!rsegments[kvid]['rs'])rsegments[kvid]['rs']=0;if(!rsegments[kvid]['re'])rsegments[kvid]['re']=0;if(rsegments[kvid]['re']<0)rsegments[kvid]['re']+=8;rsegments[kvid]['rs']<<=5;rsegments[kvid]['re']<<=2;rsegments[kvid]['rt']|=rsegments[kvid]['re'];rsegments[kvid]['rt']|=rsegments[kvid]['rs'];textseg+=kvid+','+rsegupnewdel[kvid]+','+rsegments[kvid]['sid']+','+rsegments[kvid]['wa']+','+rsegments[kvid]['rt']+','+rsegments[kvid]['lw']+'|'
        }doafterxmlget='loadroadsrenew();cc1();';loadXML('/sys/roadex2/?do=save&vers=4&ltype='+ltype,'',textpoi+textseg+'&maxrtype='+maxrtype)
    }function loadroadsrenew(){
    for(var kvid in poilisteners){
        if(poilisteners[kvid])GEvent.removeListener(poilisteners[kvid])
            }for(var kvid in poilisteners1){
        if(poilisteners1[kvid])GEvent.removeListener(poilisteners1[kvid])
            }for(var kvid in poilisteners2){
        if(poilisteners2[kvid])GEvent.removeListener(poilisteners2[kvid])
            }for(var kvid in poilisteners3){
        if(poilisteners3[kvid])GEvent.removeListener(poilisteners3[kvid])
            }jwindow_close();del_all_obj();currentpoi='';oldcurpo='';rpoints={};rsegments={};rroads={};masspoints={};rpointshow={};new_rpoints={};rsegmshow={};rsegmshowv={};rpointsupold={};rpoupnewdel={};rsegupnewdel={};pcenicon=null;pceniconz=[];selarr={};selarr1={};selfn=0;maxrtype=1;checksvbut();for(var names in mass){
        if(names.indexOf('r')!=-1){
            delete mass[names]
        }
        }notsave=0;lastadvload={};update_objects()
    }function rloaa(){
    poiaddmode()
    }var pceniconz=[];function prevpoints(point,poi){
    if(pceniconz[poi]){
        if(point!=pceniconz[poi].getPoint()){
            pceniconz[poi].setLatLng(point)
            }if(pceniconz[poi].isHidden())pceniconz[poi].show()
            }else{
        pceniconz[poi]=new GMarker(point,{
            icon:iconu[poi],
            clickable:false,
            inert:true,
            zIndexProcess:zilow
        });map.addOverlay(pceniconz[poi])
        }
    }function prevpointsc(poi){
    if(pceniconz[poi]){
        if(!pceniconz[poi].isHidden())pceniconz[poi].hide()
            }
    }function radians(a){
    return Math.PI*a/180
    }function degrees(a){
    return(180*a/Math.PI+360)%360
    }if(typeof poly==_un)var poly=[];if(typeof pline==_un)var pline;function showaydir(way){
    if(!way||!doppomar[0])return;var regout=doppomar[0].split(".");regout[2]=regout[1];regout[1]=regout[0];var fromt1=[];if(regout[1].indexOf('n')!=-1){
        fromt1[1]=1
        }if(regout[2].indexOf('n')!=-1){
        fromt1[2]=1
        }var point1=regout[1].split("_");point1[1]=parseInt(point1[1]);point1[0]=parseInt(point1[0]);var point2=regout[2].split("_");point2[1]=parseInt(point2[1]);point2[0]=parseInt(point2[0]);if(point1[0]<point2[0]||(point1[0]==point2[0]&&point1[1]<point2[1])){
        regout[3]=1;regout[4]=2
        }else{
        regout[3]=2;regout[4]=1
        }if((fromt1[1]&&!fromt1[2])||(regout[3]>regout[4]&&((!fromt1[1]&&!fromt1[2])||(fromt1[1]&&fromt1[2])))){
        var poi1=regout[2];var poi2=regout[1]
        }else{
        var poi1=regout[1];var poi2=regout[2]
        }if(!rpoints[poi1]||!rpoints[poi2])return;var angle=poi2degree(rpoints[poi1]['y'],rpoints[poi1]['x'],rpoints[poi2]['y'],rpoints[poi2]['x']);if(way==2){
        angle+=180;if(angle>360)angle-=360
            }var x=[];var y=[];x[0]=-20;y[0]=0;x[1]=-10;y[1]=0;x[2]=-10;y[2]=-10;x[3]=10;y[3]=-10;x[4]=10;y[4]=0;x[5]=20;y[5]=0;x[6]=0;y[6]=60;x[7]=-20;y[7]=0;var ceny=(rpoints[poi1]['y']+rpoints[poi2]['y'])/2;var cenx=(rpoints[poi1]['x']+rpoints[poi2]['x'])/2;var cenxy=map.fromLatLngToDivPixel(new GLatLng(ceny,cenx));poly.length=0;var x2;for(var i=0;i<x.length;i++){
        var x1=Math.cos(angle*Math.PI/180)*x[i]-Math.sin(angle*Math.PI/180)*y[i];var y1=Math.cos(angle*Math.PI/180)*y[i]+Math.sin(angle*Math.PI/180)*x[i];x[i]=x1;y[i]=y1;x[i]+=cenxy.x;y[i]+=cenxy.y;var x2=map.fromDivPixelToLatLng(new GPoint(x[i],y[i]));poly.push(x2.x*10000000);poly.push(x2.y*10000000)
        }show_svgdiv(0,0,poly,[0,0,0,1])
    }function poi2degree(lat1,lon1,lat2,lon2){
    lat1=radians(lat1);lon1=radians(lon1);lat2=radians(lat2);lon2=radians(lon2);var angle=-Math.atan2(Math.sin(lon1-lon2)*Math.cos(lat2),Math.cos(lat1)*Math.sin(lat2)-Math.sin(lat1)*Math.cos(lat2)*Math.cos(lon1-lon2));if(angle<0.0)angle+=Math.PI*2.0;angle=angle*180.0/Math.PI;return parseFloat(angle.toFixed(1))
    }function segcheckrev(seg,seg1){
    var regout=seg.split(".");var fromt1=[];if(regout[0].indexOf('n')!=-1){
        fromt1[1]=1
        }if(regout[1].indexOf('n')!=-1){
        fromt1[2]=1
        }var regout1=seg1.split(".");var fromt2=[];if(regout1[0].indexOf('n')!=-1){
        fromt2[1]=1
        }if(regout1[1].indexOf('n')!=-1){
        fromt2[2]=1
        }if(regout[1]==regout1[0]||regout[0]==regout1[1]){
        return 0
        }else{
        return 1
        }
    }function svnchecksel(){
    var query=0;for(var kvid in selarr){
        query++
    }if(query==0){
        alert('Nothing selected for this road.');return false
        }return true
    }function save_road_block(){
    if(_ge('wikiedit').value==''&&!svnchecksel())return false;if(_ge('wikiedit').langid.type!='hidden'){
        if(_ge('wikiedit').langid.options[_ge('wikiedit').langid.selectedIndex].value==''){
            alert(localization['jsi_chooselang']);_ge('wikiedit').langid.focus();return false
            }
        }if(_ge('wikiedit').form_name.value==''){
        alert(localization['jsi_filltitle']);_ge('wikiedit').form_name.focus();return false
        }if(_ge('wikiedit').segsname){
        var query='';for(var kvid in selarr){
            query+=kvid+','
            }if(query){
            _ge('wikiedit').segsname.value=query
            }else{
            return false
            }
        }if(is_changed>0){
        if(is_t_changed>0){
            doafterxmlget=''
            }doafterxmlget='';loadXML('/sys/edit_road2/?noheader=1&do=save&ltype='+ltype,'wikiedit','')
        }else{}
}function save_rbn(seg){
    if(vtype!=5)return;var query='id='+seg+'&data=';for(var kvid in selarr){
        query+=kvid+','
        }if(!query){
        return false
        }loadXML('/sys/edit_road2/?noheader=1&do=savenm&ltype='+ltype,'',query)
    }function errorcontact(){
    if(_ge('notifyit')){
        _ge('notifyit').innerHTML='Internal error autodetected. Please, contact wikimapia@gmail.com referring ROAD ERROR.';notifyitoff()
        }
    }var polyfd=[];function polyfdf(obj){
    for(var kvid in obj){
        if(typeof obj[kvid]=='object'){
            for(var kvid1 in obj[kvid]){
                if(kvid1==1){
                    if(typeof obj[kvid][kvid1]=='object'){
                        if(typeof obj[kvid][0]=='object'){
                            if(typeof obj[kvid][1].x=='number'&&typeof obj[kvid][1].x=='number'){
                                for(var kvid2 in obj[kvid][0]){
                                    if(kvid2!='x'&&kvid2!='y'){
                                        if(obj[kvid][0].x==obj[kvid][0][kvid2]){
                                            polyfd[1]=kvid2
                                            }if(obj[kvid][0].y==obj[kvid][0][kvid2]){
                                            polyfd[2]=kvid2
                                            }
                                        }
                                    }if(polyfd[1]){
                                    polyfd[0]=kvid
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }var cro={};function interlins(a,b,c,d){
    var a_=a;var b_=b;var c_=c;var d_=d;if(b_.x-a_.x==0){
        var aa=a;var bb=b;a=c;b=d;c=aa;d=bb;a_=a;b_=b;c_=c;d_=d;if(b_.x-a_.x==0)return false
            }var k=(b_.y-a_.y)/(b_.x-a_.x);var y_0=a_.y-k*a_.x;var v_y=(d_.y-c_.y);var v_x=(d_.x-c_.x);var e=v_y-k*v_x;if(e==0){
        return false
        }else{
        var t=(k*c_.x+y_0-c_.y)/e;if(t>1||t<0){
            return false
            }else{
            var r_x=c_.x+t*v_x;var r_y=c_.y+t*v_y;cro['x']=r_x;cro['y']=r_y;return(a_.x<=r_x&&r_x<=b_.x||b_.x<=r_x&&r_x<=a_.x)&&(a_.y<=r_y&&r_y<=b_.y||b_.y<=r_y&&r_y<=a_.y)
            }
        }
    };function removeriverwidth(){
    for(var kvid in selarr){
        var regout=kvid.split(".");var a=[],b=[];for(var i=0;i<2;i++){
            for(var kvid1 in rpoints[regout[i]]['s']){
                if(kvid1==regout[0]||kvid1==regout[1])continue;if(rsegments[segnorm(regout[i],kvid1)]&&rsegments[segnorm(regout[i],kvid1)]['rt']==2){
                    if(a.length<2){
                        a.push(kvid1)
                        }else{
                        b.push(kvid1)
                        }
                    }
                }
            }if(a[0]&&b[0]&&rsegments[segnorm(a[0],b[0])]){
            delseg(segnorm(a[0],b[0]),1)
            }if(a[0]&&b[1]&&rsegments[segnorm(a[0],b[1])]){
            delseg(segnorm(a[0],b[1]),1)
            }if(a[1]&&b[0]&&rsegments[segnorm(a[1],b[0])]){
            delseg(segnorm(a[1],b[0]),1)
            }if(a[1]&&b[1]&&rsegments[segnorm(a[1],b[1])]){
            delseg(segnorm(a[1],b[1]),1)
            }for(var i=0;i<2;i++){
            for(var kvid1 in rpoints[regout[i]]['s']){
                if(kvid1==regout[0]||kvid1==regout[1])continue;if(rsegments[segnorm(regout[i],kvid1)]&&!rsegments[segnorm(regout[i],kvid1)]['rt']){
                    delsingle(kvid1)
                    }
                }
            }
        }for(var kvid in selarr){
        var regout=kvid.split(".");delsingle(regout[0]);delsingle(regout[1])
        }
    }function makeriverwidth(){
    var a=0,b=0,c=0,a_=0,d_=0,c_=0;for(var kvid in selarr){
        var regout=kvid.split(".");regout[2]=regout[1];regout[1]=regout[0];b++;if(b==1){
            var x=rpoints[regout[1]]['x'];var y=rpoints[regout[1]]['y']
            }var d=[];d[1]=conv2merc(rpoints[regout[1]]['x'],rpoints[regout[1]]['y']);d[2]=conv2merc(rpoints[regout[2]]['x'],rpoints[regout[2]]['y']);a+=new GLatLng(rpoints[regout[1]]['y'],rpoints[regout[1]]['x']).distanceFrom(new GLatLng(rpoints[regout[2]]['y'],rpoints[regout[2]]['x']));a_+=Math.sqrt(Math.pow(Math.abs(d[1]['x']-d[2]['x']),2)+Math.pow(Math.abs(d[1]['y']-d[2]['y']),2));c+=Math.sqrt(Math.pow(Math.abs(rpoints[regout[1]]['x']-rpoints[regout[2]]['x']),2)+Math.pow(Math.abs(rpoints[regout[1]]['y']-rpoints[regout[2]]['y']),2));for(var i=1;i<3;i++){
            for(var kvid1 in rpoints[regout[i]]['s']){
                if(kvid1==regout[1]||kvid1==regout[2])continue;if(rsegments[segnorm(regout[i],kvid1)]&&rsegments[segnorm(regout[i],kvid1)]['rt']==2){
                    var d=[];d[1]=conv2merc(rpoints[regout[i]]['x'],rpoints[regout[i]]['y']);d[2]=conv2merc(rpoints[kvid1]['x'],rpoints[kvid1]['y']);d_+=Math.sqrt(Math.pow(Math.abs(d[1]['x']-d[2]['x']),2)+Math.pow(Math.abs(d[1]['y']-d[2]['y']),2));c_++;break
                }
                }
            }
        }if(b>10&&!doppomar[12]){
        alert('Start to select one by one (*)');return
    }c=(c/b)/5;a=(a/b)/5;a_=(a_/b)/5;if(d_){
        d_=d_/c_;a_=d_
        }var xD1=new GLatLng(y,x).distanceFrom(new GLatLng(y,x+c));xD1=(a/xD1)*c;var yD1=new GLatLng(y,x).distanceFrom(new GLatLng(y+c,x));yD1=(a/yD1)*c;for(var kvid in selarr){
        var e={};var regout=kvid.split(".");regout[2]=regout[1];regout[1]=regout[0];var c=interangle({
            x:0,
            y:0
        },{
            x:0,
            y:1
        },{
            x:rpoints[regout[1]]['x'],
            y:rpoints[regout[1]]['y']
            },{
            x:rpoints[regout[2]]['x'],
            y:rpoints[regout[2]]['y']
            });var f=1;c=Math.abs(c);if((rpoints[regout[1]]['x']>rpoints[regout[2]]['x']&&rpoints[regout[1]]['y']>rpoints[regout[2]]['y'])||(rpoints[regout[1]]['x']<rpoints[regout[2]]['x']&&rpoints[regout[1]]['y']<rpoints[regout[2]]['y']))f=-1;var d=(1-c)*f;var e=[];e[0]=rpoints[regout[1]]['x']+xD1*c;e[1]=rpoints[regout[1]]['y']+yD1*d;e[2]=rpoints[regout[2]]['x']+xD1*c;e[3]=rpoints[regout[2]]['y']+yD1*d;e[4]=rpoints[regout[1]]['x']-xD1*c;e[5]=rpoints[regout[1]]['y']-yD1*d;e[6]=rpoints[regout[2]]['x']-xD1*c;e[7]=rpoints[regout[2]]['y']-yD1*d;var z=[];z[0]=0;for(var kvid1 in rpoints[regout[1]]['s']){
            if(kvid1==regout[1]||kvid1==regout[2])continue;if(rsegments[segnorm(regout[1],kvid1)]&&rsegments[segnorm(regout[1],kvid1)]['rt']){
                z[3]=2;continue
            }z[1]=kvid1;z[0]++
        }if(z[0]!=1&&!z[3])z[3]=1;z[0]=0;for(var kvid1 in rpoints[regout[2]]['s']){
            if(kvid1==regout[1]||kvid1==regout[2])continue;if(rsegments[segnorm(regout[2],kvid1)]&&rsegments[segnorm(regout[2],kvid1)]['rt']){
                z[4]=2;continue
            }z[2]=kvid1;z[0]++
        }if(z[0]!=1&&!z[4])z[4]=1;for(var i=1;i<3;i++){
            if(!z[i+2]){
                var f=2;if(i==2)f=1;var b_=[];b_[0]=conv2merc(rpoints[regout[i]]['x'],rpoints[regout[i]]['y']);b_[1]=conv2merc(rpoints[regout[f]]['x'],rpoints[regout[f]]['y']);b_[2]=conv2merc(rpoints[z[i]]['x'],rpoints[z[i]]['y']);b_[3]=Math.sqrt(Math.pow(b_[1]['x']-b_[0]['x'],2)+Math.pow(b_[1]['y']-b_[0]['y'],2));b_[4]=Math.sqrt(Math.pow(b_[0]['x']-b_[2]['x'],2)+Math.pow(b_[0]['y']-b_[2]['y'],2));if(b_[3]>b_[4]){
                    b_[5]=(b_[0]['x']-b_[1]['x'])*b_[4]/b_[3];b_[6]=(b_[0]['y']-b_[1]['y'])*b_[4]/b_[3];b_[1]['x']=b_[0]['x']-b_[5];b_[1]['y']=b_[0]['y']-b_[6]
                    }else{
                    b_[5]=(b_[0]['x']-b_[2]['x'])*b_[3]/b_[4];b_[6]=(b_[0]['y']-b_[2]['y'])*b_[3]/b_[4];b_[2]['x']=b_[0]['x']-b_[5];b_[2]['y']=b_[0]['y']-b_[6]
                    }e[42]={};e[42].x=(b_[1]['x']+b_[2]['x'])/2;e[42].y=(b_[1]['y']+b_[2]['y'])/2;e[40]=Math.sqrt(Math.pow(b_[0]['x']-e[42].x,2)+Math.pow(b_[0]['y']-e[42].y,2));var c=(b_[0]['x']-e[42].x)*(a_/e[40]);var d=(b_[0]['y']-e[42].y)*(a_/e[40]);e[43]=b_[0]['x']+c;e[44]=b_[0]['y']+d;e[45]=b_[0]['x']-c;e[46]=b_[0]['y']-d;e[18]=convizmerc(e[43],e[44]);e[19]=convizmerc(e[45],e[46])
                }else if(z[i+2]==1){
                e[18]={
                    x:e[0+i*(i-1)],
                    y:e[1+i*(i-1)]
                    };e[19]={
                    x:e[4+i*(i-1)],
                    y:e[5+i*(i-1)]
                    }
                }if(z[i+2]!=2){
                e[30]=addpoint(new GLatLng(e[18].y,e[18].x),1);e[31]=addpoint(new GLatLng(e[19].y,e[19].x),1)
                }else{
                for(var kvid in rpoints[regout[i]]['s']){
                    if(rsegments[segnorm(regout[i],kvid)]&&rsegments[segnorm(regout[i],kvid)]['rt']==2){
                        if(!e[30])e[30]=kvid;else if(!e[31])e[31]=kvid
                            }
                    }
                }var seg,seg1;if(z[i+2]!=2){
                seg=segnorm(e[30],regout[i]);seg1=segnorm(e[31],regout[i]);rsegments[seg]={};rsegments[seg1]={};rsegments[seg]['rt']=2;rsegments[seg1]['rt']=2;rpoints[regout[i]]['s'][e[30]]=1;rpoints[e[30]]['s'][regout[i]]=1;rpoints[regout[i]]['s'][e[31]]=1;rpoints[e[31]]['s'][regout[i]]=1;rsegupnewdel[seg]=2;rsegupnewdel[seg1]=2
                }var f=2;if(i==2)f=1;e[32]='';e[33]='';for(var kvid in rpoints[regout[f]]['s']){
                if(rsegments[segnorm(regout[f],kvid)]&&rsegments[segnorm(regout[f],kvid)]['rt']==2){
                    if(!e[32])e[32]=kvid;else if(!e[33])e[33]=kvid
                        }
                }if(e[32]&&e[33]){
                if(interlins({
                    x:rpoints[e[30]]['x'],
                    y:rpoints[e[30]]['y']
                    },{
                    x:rpoints[e[32]]['x'],
                    y:rpoints[e[32]]['y']
                    },{
                    x:rpoints[regout[1]]['x'],
                    y:rpoints[regout[1]]['y']
                    },{
                    x:rpoints[regout[2]]['x'],
                    y:rpoints[regout[2]]['y']
                    })){
                    seg=segnorm(e[30],e[33]);seg1=segnorm(e[31],e[32]);rpoints[e[30]]['s'][e[33]]=1;rpoints[e[33]]['s'][e[30]]=1;rpoints[e[31]]['s'][e[32]]=1;rpoints[e[32]]['s'][e[31]]=1
                    }else{
                    seg=segnorm(e[30],e[32]);seg1=segnorm(e[31],e[33]);rpoints[e[31]]['s'][e[33]]=1;rpoints[e[33]]['s'][e[31]]=1;rpoints[e[30]]['s'][e[32]]=1;rpoints[e[32]]['s'][e[30]]=1
                    }rsegments[seg]={};rsegments[seg1]={};rsegments[seg]['rt']=3;rsegments[seg1]['rt']=3;rsegupnewdel[seg]=2;rsegupnewdel[seg1]=2
                }e[32]='';e[33]='';if(z[i]){
                for(var kvid in rpoints[z[i]]['s']){
                    if(rsegments[segnorm(z[i],kvid)]&&rsegments[segnorm(z[i],kvid)]['rt']==2){
                        if(!e[32])e[32]=kvid;else if(!e[33])e[33]=kvid
                            }
                    }
                }if(e[32]&&e[33]&&e[30]&&selarr[segnorm(z[i],kvid)]){
                console.log('e ',e[30]);if(interlins({
                    x:rpoints[e[30]]['x'],
                    y:rpoints[e[30]]['y']
                    },{
                    x:rpoints[e[32]]['x'],
                    y:rpoints[e[32]]['y']
                    },{
                    x:rpoints[regout[i]]['x'],
                    y:rpoints[regout[i]]['y']
                    },{
                    x:rpoints[z[i]]['x'],
                    y:rpoints[z[i]]['y']
                    })){
                    seg=segnorm(e[30],e[33]);seg1=segnorm(e[31],e[32]);rpoints[e[30]]['s'][e[33]]=1;rpoints[e[33]]['s'][e[30]]=1;rpoints[e[31]]['s'][e[32]]=1;rpoints[e[32]]['s'][e[31]]=1
                    }else{
                    seg=segnorm(e[31],e[33]);seg1=segnorm(e[32],e[30]);rpoints[e[31]]['s'][e[33]]=1;rpoints[e[33]]['s'][e[31]]=1;rpoints[e[30]]['s'][e[32]]=1;rpoints[e[32]]['s'][e[30]]=1
                    }rsegments[seg]={};rsegments[seg1]={};rsegments[seg]['rt']=3;rsegments[seg1]['rt']=3;rsegupnewdel[seg]=2;rsegupnewdel[seg1]=2
                }e[30]='';e[31]=''
            }
        }drawroads()
    }function riverupmipo(poi,o){
    if(ltype!=10)return;var a=0;var b=[];if(rpoints[poi]['s']){
        for(var kvid in rpoints[poi]['s']){
            if(rsegments[segnorm(poi,kvid)]){
                if(rsegments[segnorm(poi,kvid)]['rt']==3){
                    a++
                }if(rsegments[segnorm(poi,kvid)]['rt']==2){
                    if(!b[0])b[0]=kvid;else if(!b[1])b[1]=kvid
                        }
                }
            }
        }if(!a&&b[0]&&b[1]){
        if(o){
            doppomar[8]=rpoints[b[0]]['x'];doppomar[9]=rpoints[b[0]]['y'];doppomar[10]=rpoints[b[1]]['x'];doppomar[11]=rpoints[b[1]]['y'];return
        }b[2]=oldpoint.x-rpoints[poi]['x'];b[3]=oldpoint.y-rpoints[poi]['y'];rpoints[b[0]]['x']=doppomar[8]-b[2];rpoints[b[0]]['y']=doppomar[9]-b[3];if(rpointshow[b[0]])rpointshow[b[0]].setLatLng(new GLatLng(rpoints[b[0]]['y'],rpoints[b[0]]['x']));rpoupnewdel[b[0]]=1;updateseg(b[0]);rpoints[b[1]]['x']=doppomar[10]-b[2];rpoints[b[1]]['y']=doppomar[11]-b[3];if(rpointshow[b[1]])rpointshow[b[1]].setLatLng(new GLatLng(rpoints[b[1]]['y'],rpoints[b[1]]['x']));rpoupnewdel[b[1]]=1;updateseg(b[1])
        }else if(a&&b[0]&&!b[1]){
        for(var kvid in rpoints[b[0]]['s']){
            if(rsegments[segnorm(b[0],kvid)]){
                if(rsegments[segnorm(b[0],kvid)]['rt']==2){
                    if(kvid!=poi)b[1]=kvid
                        }
                }
            }if(!b[1])return;var x=(rpoints[poi]['x']+rpoints[b[1]]['x'])/2;var y=(rpoints[poi]['y']+rpoints[b[1]]['y'])/2;if(rpointshow[b[0]])rpointshow[b[0]].setLatLng(new GLatLng(y,x));rpoints[b[0]]['x']=x;rpoints[b[0]]['y']=y;rpoupnewdel[b[0]]=1;updateseg(b[0])
        }
    }function interangle(p1,p2,p3,p4){
    var a=p2.x-p1.x;var b=p2.y-p1.y;var c=p4.x-p3.x;var d=p4.y-p3.y;return((a*c)+(b*d))/(Math.sqrt(Math.pow(a,2)+Math.pow(b,2))*Math.sqrt(Math.pow(c,2)+Math.pow(d,2)))
    }function intervec(p1,p2,p3,p4){
    var xD1=p2.x-p1.x;var xD2=p4.x-p3.x;var yD1=p2.y-p1.y;var yD2=p4.y-p3.y;var xD3=p1.x-p3.x;var yD3=p1.y-p3.y;var div=yD2*xD1-xD2*yD1;var ua=(xD2*yD3-yD2*xD3)/div;return{
        x:(p1.x+ua*xD1),
        y:(p1.y+ua*yD1)
        }
    }proxlintrue=function(x,y,x0,y0,x1,y1,o){
    function lineLength(x,y,x0,y0){
        return Math.sqrt((x-=x0)*x+(y-=y0)*y)
        }if(o&&!(o=function(x,y,x0,y0,x1,y1){
        if(!(x1-x0))return{
            x:x0,
            y:y
        };else if(!(y1-y0))return{
            x:x,
            y:y0
        };var left,tg=-1/((y1-y0)/(x1-x0));return{
            x:left=(x1*(x*tg-y+y0)+x0*(x*-tg+y-y1))/(tg*(x1-x0)+y0-y1),
            y:tg*left-tg*x+y
            }
        }(x,y,x0,y0,x1,y1),o.x>=Math.min(x0,x1)&&o.x<=Math.max(x0,x1)&&o.y>=Math.min(y0,y1)&&o.y<=Math.max(y0,y1))){
        var l1=lineLength(x,y,x0,y0),l2=lineLength(x,y,x1,y1);return l1>l2?l2:l1
        }else{
        var a=y0-y1,b=x1-x0,c=x0*y1-y0*x1;return Math.abs(a*x+b*y+c)/Math.sqrt(a*a+b*b)
        }
    };proxlintrueinter=function(x,y,x0,y0,x1,y1){
    if(!(x1-x0))return{
        x:x0,
        y:y
    };else if(!(y1-y0))return{
        x:x,
        y:y0
    };var left,tg=-1/((y1-y0)/(x1-x0));return{
        x:left=(x1*(x*tg-y+y0)+x0*(x*-tg+y-y1))/(tg*(x1-x0)+y0-y1),
        y:tg*left-tg*x+y
        }
    };function conv2merc(x,y){
    var a=Math.pow(2,24)*256;var z=Math.sin(2*Math.PI*y/360);return{
        x:(Math.floor(a/2+x*a/360)),
        y:(Math.floor(a/2-0.5*Math.log((1+z)/(1-z))*a/(2*Math.PI)))
        }
    }function convizmerc(x,y){
    var a=Math.pow(2,24)*256;var b=(y-a/2)/-(a/(2*Math.PI));return{
        x:((x-a/2)/(a/360)),
        y:((2*Math.atan(Math.exp(b))-Math.PI/2)*180/Math.PI)
        }
    }jsar['roads.js']=2;jsar['roadsa.js']=2;jsar['roadsnew.js']=2;jsar['roadsnewa.js']=2;var markerz=[];var point=[];var poly=[];var pline=null;var plineprev=null;var polytype=0;var pointlisten1,pcenicon,pointlisten2;var stoppprev=0;var polyspl=0;var pointdel=null;var addpolytrig=null;var addpolytrigprev=null;var ceniconpol;var deltaxy;var deltapoly=[];var iconr=new GIcon();iconr.image="/img/pdo.png";iconr.iconSize=new GSize(9,9);iconr.iconAnchor=new GPoint(5,5);iconr.dragCrossImage="/img/mdr.gif";iconr.dragCrossSize=new GSize(15,15);iconr.dragCrossAnchor=new GPoint(8,8);var iconw=new GIcon();iconw.image="/img/m.png";iconw.iconSize=new GSize(9,9);iconw.iconAnchor=new GPoint(5,5);function addpoly(fromt){
    if(pointlisten)cancelpoly(1);mapttip();mapttipc();is_changed=0;stoppprev=0;flphoar[31]=0;lastxy=[];pointlisten=1;if(edit_block_id){
        del_all_obj()
        }else{
        showmark()
        }psavemenu()
    }function mouse_movepo(){
    if((markerz.length>200&&lvl==0)||(markerz.length>500&&lvl==1)||(markerz.length>1000&&lvl>1)){
        cancelprev();return
    }var point=flphoar[42];if(stoppprev==0){
        if(!pcenicon){
            pcenicon=new GMarker(point,{
                icon:iconw,
                clickable:false,
                zIndexProcess:zilow
            });map.addOverlay(pcenicon)
            }else{
            if(point!=pcenicon.getLatLng()){
                pcenicon.setLatLng(point)
                }if(pcenicon.isHidden())pcenicon.show()
                }var y=point.y.toFixed(6);var x=point.x.toFixed(6);ppreview(x,y)
        }
    }function mouse_clickpo(marker,point,a){
    if(stoppprev!=0||!pcenicon||pcenicon.isHidden())return;var from=0;if(marker){
        if(marker.getVertexCount&&plineprev==marker){
            from=1;point=marker.getVertex(1)
            }if(marker.ispo){}else if(from==0){
            return
        }
        }if(point){
        if(point.lng())marker_click(point)
            }else if(a){
        if(a.lng())marker_click(a)
            }
    }function marker_click(point){
    if(!polyspl&&!pcenicon)return;if(!is_addfn&&(mtype=='h'||mtype=='m'||mtype=='t')){
        mapttip(point,localization['jsi_layer_cant']);if(flphoar[32]){
            clearTimeout(flphoar[32])
            }flphoar[32]=window.setTimeout(mapttipc,3500);return
    }if(!is_addfn&&((oldzoom<13&&lvl<2)||oldzoom<8)){
        mapttip(point,localization['jsi_zoomin_closer']);if(flphoar[32]){
            clearTimeout(flphoar[32])
            }flphoar[32]=window.setTimeout(mapttipc,3500);return
    }if(polytype==0){
        var peres=0;if(markerz.length>2){
            var i=polyspl;var i1=polyspl+1;if(i1==markerz.length)i1=0;for(var i2=0;i2<markerz.length;i2++){
                var i3=i2+1;if(i3==markerz.length)i3=0;if(i2!=i&&i3!=i){
                    if(interlin(markerz[i2].getLatLng(),markerz[i3].getLatLng(),point,markerz[i].getLatLng())){
                        peres++
                    }
                    }if(i2!=i1&&i3!=i1){
                    if(interlin(markerz[i2].getLatLng(),markerz[i3].getLatLng(),point,markerz[i1].getLatLng())){
                        peres++
                    }
                    }if(peres){
                    break
                }
                }
            }if((markerz.length>1&&polyspl===null)||peres)return
    }if(!pcenicon)return;var n=markerz.length;n*=1;if((n>200&&lvl==0)||(n>500&&lvl==1)||(n>1000&&lvl>1)){
        return
    }if(n<2)markerz[n]=new GMarker(point,{
        icon:iconr,
        draggable:true,
        bouncy:false,
        zIndexProcess:zinormal
    });else{
        polyspl++;markerz.splice(polyspl,0,new GMarker(point,{
            icon:iconr,
            draggable:true,
            bouncy:false,
            zIndexProcess:zinormal
        }));n=polyspl
        }is_changed++;pprevlip=null;map.addOverlay(markerz[n]);aca=[];marker_pref(n);remakeid();dotmenuoff();cancelprev();drawpoly()
    }function marker_pref(n){
    markerz[n].enableDragging();markerz[n]._id=n;GEvent.addListener(markerz[n],'drag',function(){
        is_changed++;lag_delay_fn(drawpoly)
        });GEvent.addListener(markerz[n],'click',function(){
        dotmenu(this.getLatLng(),this._id)
        });GEvent.addListener(markerz[n],'dragstart',function(){
        isdrag=1;dotmenuoff();flphoar[9]=this.getLatLng();stoppprev=2;cancelprev()
        });GEvent.addListener(markerz[n],'dragend',function(){
        upd_nomousedet();if(markerz.length>3&&polytype==0){
            for(var i2=0;i2<markerz.length;i2++){
                if(this.getLatLng()==markerz[i2].getLatLng()){
                    var i=i2-1;var i1=i2+1;var thisi=i2;if(i1==markerz.length)i1=0;if(i<0)i=markerz.length-1;break
                }
                }var peres=0;for(var i2=0;i2<markerz.length;i2++){
                var i3=i2+1;if(i3==markerz.length)i3=0;if(thisi==i2||thisi==i3)continue;if(i2!=i&&i3!=i){
                    if(interlin(markerz[i2].getLatLng(),markerz[i3].getLatLng(),this.getLatLng(),markerz[i].getLatLng())){
                        peres++
                    }
                    }if(i2!=i1&&i3!=i1){
                    if(interlin(markerz[i2].getLatLng(),markerz[i3].getLatLng(),this.getLatLng(),markerz[i1].getLatLng())){
                        peres++
                    }
                    }if(peres)break
            }
            }if(peres){
            this.setLatLng(flphoar[9])
            }stoppprev=0;isdrag=0;drawpoly();setmasscenter()
        });GEvent.addListener(markerz[n],'mouseover',function(){
        if(stoppprev==2){
            return
        }if(stoppprev==0){
            stoppprev=1
            }cancelprev();isdrag=1
        });GEvent.addListener(markerz[n],'mouseout',function(){
        if(stoppprev==1){
            stoppprev=0
            }isdrag=0
        })
    }function dotmenu(from,_id){
    pointdel=_id;mapttip(markerz[pointdel].getLatLng(),'<span class="add_line" onmouseout="if (stoppprev!=2){stoppprev=0;}if (flphoar[32]){clearTimeout(flphoar[32]);}flphoar[32]=window.setTimeout(mapttipc,3500);" onmouseover="if (stoppprev!=2){stoppprev=1;}cancelprev();mapttip();if (flphoar[32]){clearTimeout(flphoar[32]);}">'+mmenuline(localization['jsi_removebut'],'polddel();dotmenuoff();mapttipc();'),1);if(flphoar[32])clearTimeout(flphoar[32]);flphoar[32]=window.setTimeout("mapttipc();if (stoppprev!=2)stoppprev=0;",5000)
    }function cancelprev(o){
    if(pcenicon){
        pcenicon.hide()
        }showpolyfn(0,1);if(o)pprevlip=null
        }function cancelpoly(fromt){
    is_addfn=0;markerz=[];adduri='';if(pointlisten){
        pointlisten=null
        }if(pointlisten1){
        pointlisten1=null
        }if(pointlisten2){
        GEvent.removeListener(pointlisten2)
        }if(pcenicon){
        map.removeOverlay(pcenicon);pcenicon=null
        }if(ceniconpol){
        map.removeOverlay(ceniconpol);ceniconpol=null
        }dotmenuoff();addpolytrig=null;addpolytrigprev=null;edit_block_id=0;stoppprev=0;polytype=0;pprevlip=null;mapttipc();_ge('flomenu').style.display=_no;del_all_obj();pline=null;if(typeof fromt=='undefined'){
        update_objects()
        }if(flphoar[37]&&(mtype!=flphoar[37]||mtype=='b')){
        mtype=flphoar[37];flphoar[37]=null;if(flphoar[38]&&mtype=='b'){
            map.setMapType(G_SATELLITE_MAP)
            }flphoar[38]=0;updmap()
        }flphoar[38]=0;flphoar[27]=0
    }var nsmin=0;nsmax=0;function showmark(){
    for(var i=0;i<markerz.length;i++){
        if(flphoar[27]==100){
            if(nsmin&&i<nsmin)continue;if(nsmax&&i>nsmax)continue
        }map.addOverlay(markerz[i]);marker_pref(i)
        }drawpoly();setmasscenter()
    }var tt;function drawpoly(){
    aca=[];polyz=[];if(markerz.length==0)return;poly.length=0;for(var i=0;i<markerz.length;i++){
        polyz.push(markerz[i].getLatLng().lng()*10000000);polyz.push(markerz[i].getLatLng().lat()*10000000)
        }show_svgdiv(0,0,polyz,[1,1,polytype]);if(addpolytrig)addpolytrig();psavemenu()
    }function psavemenu(){
    if(is_addfn)return;show_binf();return;var o=pline.getBounds().getSouthWest();if(!map.getBounds().containsLatLng(o)){
        o=new GLatLng(map.getBounds().getSouthWest().lat()+(map.getBounds().getNorthEast().lat()-map.getBounds().getSouthWest().lat())/8,map.getBounds().getCenter().lng())
        }var from=" buttondis'";if(is_changed&&markerz.length>2)from="' onclick='savepoly()'";mapttip(o,"<span style='white-space:nowrap;' onmouseover='stoppprev=1;cancelprev();' onmouseout='stoppprev=0;'><button class='button"+from+">"+localization['jsi_savebut']+"</button>&nbsp;&nbsp;<button class='button' onclick='cancelpoly()'>"+localization['jsi_cancelbut']+"</button></span>",1)
    }function drawpolyprev(x1,y1,type){
    poly.length=0;poly.push(y1);if(typeof type==_un){
        poly.push(pcenicon.getLatLng())
        }else{
        if(pcenicon){
            pcenicon.hide()
            }
        }var from=[];from[0]=0;if(polytype==0){
        if(y1!=x1){
            poly.push(x1)
            }
        }else if(polytype==1){}polyz=[];for(var i=0;i<poly.length;i++){
        polyz.push(Math.floor(poly[i].lng()*10000000));polyz.push(Math.floor(poly[i].lat()*10000000))
        }show_svgdiv(0,0,polyz,[1,0,1,1]);if(addpolytrigprev!=''){
        eval(addpolytrigprev)
        }
    }var pprevlip=null;var lastxy=[];function ppreview(x,y){
    if(markerz.length==0)return;if(lastxy[0]){
        if(polytype==0){
            if(markerz.length>2){
                for(var i2=0;i2<markerz.length;i2++){
                    var i3=i2+1;if(i3==markerz.length)i3=0;if(interlin(markerz[i2].getLatLng(),markerz[i3].getLatLng(),new GLatLng(y,x),new GLatLng(lastxy[1],lastxy[0]))){
                        pprevlip=i2;break
                    }
                    }
                }else if(markerz.length==2){
                pprevlip=0
                }
            }
        }lastxy[0]=x;lastxy[1]=y;polyspl=null;var ovdist=[];var ovangle=[];var minobs=null;var numgot=null;var numgot1=null;var storan=null;if(markerz.length==1){
        drawpolyprev(markerz[0].getLatLng(),markerz[0].getLatLng());return
    }if((markerz.length>200&&lvl==0)||(markerz.length>500&&lvl==1)||(markerz.length>1000&&lvl>1)){
        cancelprev();return
    }var aba=[];var bca=[];var intrcpass=[];for(var i=0;i<markerz.length;i++){
        var i1=i+1;if(i1==markerz.length)i1=0;aba[i]=proxdot(markerz[i].getLatLng(),pcenicon.getLatLng());bca[i]=proxdot(markerz[i1].getLatLng(),pcenicon.getLatLng());if(!aca[i])aca[i]=proxdot(markerz[i1].getLatLng(),markerz[i].getLatLng())
            }for(var i=0;i<markerz.length;i++){
        var i1=i+1;if(i1==markerz.length)i1=0;var ab=aba[i];var bc=bca[i];var ac=aca[i];var storan1=(ab*ab+bc*bc-ac*ac)/(2*ab*bc);var storan2=(ab*ab+ac*ac-bc*bc)/(2*ab*ac);var storan3=(bc*bc+ac*ac-ab*ab)/(2*bc*ac);if(ab<7||bc<7){
            numgot=null;cancelprev();break
        }if(storan2<0||storan3<0){
            var preobs=Math.min(ab,bc);preobs+=0.01
            }else{
            var preobs=proxlin(pcenicon.getLatLng(),markerz[i].getLatLng(),markerz[i1].getLatLng());if(preobs<5){
                pprevlip=i
                }if(markerz.length<3)pprevlip=i
                }var peres=0;if(polytype==0){
            if(intrcpass[i]||intrcpass[i1])continue;if((preobs>250&&markerz.length>3)||(preobs>350&&markerz.length==3))continue;if(pprevlip!==i)continue
        }if(polytype==1){
            if(i1==0)peres=1;if(preobs>2)peres=1
                }if(!minobs||(preobs<minobs&&(storan2>=0||storan3>=0))||(storan>0.80&&storan1<-0.85)||(preobs==minobs&&storan>storan1)){
            if(markerz.length>2&&polytype==0){
                for(var i2=0;i2<markerz.length;i2++){
                    var i3=i2+1;if(i3==markerz.length)i3=0;if(i2==i)continue;if(i2!=i&&i3!=i){
                        if(interlin(markerz[i2].getLatLng(),markerz[i3].getLatLng(),pcenicon.getLatLng(),markerz[i].getLatLng())){
                            peres++;intrcpass[i]=1
                            }
                        }if(i2!=i1&&i3!=i1){
                        if(interlin(markerz[i2].getLatLng(),markerz[i3].getLatLng(),pcenicon.getLatLng(),markerz[i1].getLatLng())){
                            peres++;intrcpass[i1]=1
                            }
                        }if(peres)break
                }
                }if(peres==0){
                numgot=i;numgot1=i1;minobs=preobs;storan=storan1
                }else{}
        }if(polytype==0){}else if(polytype==1){
            if(i1==0){
                if((ab<=minobs*4&&numgot!=0)||(numgot==0)||(!minobs)){
                    numgot=i;numgot1=i;minobs=ab/4;storan=-0.9;if(i==0)polyspl=-1
                        }
                }
            }
        }if(numgot!==null){
        drawpolyprev(markerz[numgot].getLatLng(),markerz[numgot1].getLatLng());if(polyspl===null||(polyspl==-1&&numgot!=0))polyspl=numgot
            }else{
        polyspl=null;cancelprev()
        }
    }function interlin(a,b,c,d){
    var a_={},b_={},c_={},d_={};a_.x=(Math.floor(bounds_ms[0]+(a.x)*bounds_ms[1]));a_.y=(Math.floor(bounds_ms[0]-0.5*Math.log((1+Math.sin((a.y/180)*Math.PI))/(1-Math.sin((a.y/180)*Math.PI)))*bounds_ms[2]));b_.x=(Math.floor(bounds_ms[0]+(b.x)*bounds_ms[1]));b_.y=(Math.floor(bounds_ms[0]-0.5*Math.log((1+Math.sin((b.y/180)*Math.PI))/(1-Math.sin((b.y/180)*Math.PI)))*bounds_ms[2]));c_.x=(Math.floor(bounds_ms[0]+(c.x)*bounds_ms[1]));c_.y=(Math.floor(bounds_ms[0]-0.5*Math.log((1+Math.sin((c.y/180)*Math.PI))/(1-Math.sin((c.y/180)*Math.PI)))*bounds_ms[2]));d_.x=(Math.floor(bounds_ms[0]+(d.x)*bounds_ms[1]));d_.y=(Math.floor(bounds_ms[0]-0.5*Math.log((1+Math.sin((d.y/180)*Math.PI))/(1-Math.sin((d.y/180)*Math.PI)))*bounds_ms[2]));if(b_.x-a_.x==0){
        var aa=a;var bb=b;a=c;b=d;c=aa;d=bb;a_.x=(Math.floor(bounds_ms[0]+(a.x)*bounds_ms[1]));a_.y=(Math.floor(bounds_ms[0]-0.5*Math.log((1+Math.sin((a.y/180)*Math.PI))/(1-Math.sin((a.y/180)*Math.PI)))*bounds_ms[2]));b_.x=(Math.floor(bounds_ms[0]+(b.x)*bounds_ms[1]));b_.y=(Math.floor(bounds_ms[0]-0.5*Math.log((1+Math.sin((b.y/180)*Math.PI))/(1-Math.sin((b.y/180)*Math.PI)))*bounds_ms[2]));c_.x=(Math.floor(bounds_ms[0]+(c.x)*bounds_ms[1]));c_.y=(Math.floor(bounds_ms[0]-0.5*Math.log((1+Math.sin((c.y/180)*Math.PI))/(1-Math.sin((c.y/180)*Math.PI)))*bounds_ms[2]));d_.x=(Math.floor(bounds_ms[0]+(d.x)*bounds_ms[1]));d_.y=(Math.floor(bounds_ms[0]-0.5*Math.log((1+Math.sin((d.y/180)*Math.PI))/(1-Math.sin((d.y/180)*Math.PI)))*bounds_ms[2]));if(b_.x-a_.x==0)return false
            }var k=(b_.y-a_.y)/(b_.x-a_.x);var y_0=a_.y-k*a_.x;var v_y=(d_.y-c_.y);var v_x=(d_.x-c_.x);var e=v_y-k*v_x;if(e==0){
        return false
        }else{
        var t=(k*c_.x+y_0-c_.y)/e;if(t>1||t<0){
            return false
            }else{
            var r_x=c_.x+t*v_x;var r_y=c_.y+t*v_y;return(a_.x<=r_x&&r_x<=b_.x||b_.x<=r_x&&r_x<=a_.x)&&(a_.y<=r_y&&r_y<=b_.y||b_.y<=r_y&&r_y<=a_.y)
            }
        }
    };function proxlin(fromt,a,b){
    var p0={};var p1={};var p2={};p0.x=(Math.floor(bounds_ms[0]+(fromt.x)*bounds_ms[1]));p0.y=(Math.floor(bounds_ms[0]-0.5*Math.log((1+Math.sin((fromt.y/180)*Math.PI))/(1-Math.sin((fromt.y/180)*Math.PI)))*bounds_ms[2]));p0.x=(Math.floor(bounds_ms[0]+(a.x)*bounds_ms[1]));p0.y=(Math.floor(bounds_ms[0]-0.5*Math.log((1+Math.sin((a.y/180)*Math.PI))/(1-Math.sin((a.y/180)*Math.PI)))*bounds_ms[2]));p0.x=(Math.floor(bounds_ms[0]+(b.x)*bounds_ms[1]));p0.y=(Math.floor(bounds_ms[0]-0.5*Math.log((1+Math.sin((b.y/180)*Math.PI))/(1-Math.sin((b.y/180)*Math.PI)))*bounds_ms[2]));var a=Math.abs((p2.x-p1.x)*(p1.y-p0.y)-(p1.x-p0.x)*(p2.y-p1.y));var b=Math.sqrt(Math.pow(p2.x-p1.x,2)+Math.pow(p2.y-p1.y,2));return a/b
    }function proxdot(a,b){
    var x=(Math.floor(bounds_ms[0]+(a.x)*bounds_ms[1]));var y=(Math.floor(bounds_ms[0]-0.5*Math.log((1+Math.sin((a.y/180)*Math.PI))/(1-Math.sin((a.y/180)*Math.PI)))*bounds_ms[2]));var x1=(Math.floor(bounds_ms[0]+(b.x)*bounds_ms[1]));var y1=(Math.floor(bounds_ms[0]-0.5*Math.log((1+Math.sin((b.y/180)*Math.PI))/(1-Math.sin((b.y/180)*Math.PI)))*bounds_ms[2]));return Math.sqrt(Math.pow(x1-x,2)+Math.pow(y1-y,2))
    }function polddel(){
    if(polytype==0&&flphoar[27]!=100){
        if(markerz.length<4){
            alert('Cannot delete a point from polygon with 3 points.');return
        }peres=0;for(var i=0;i<markerz.length;i++){
            if(i==pointdel){
                i++;if(i==markerz.length)break
            }var i1=i+1;if(i1==pointdel){
                i1++
            }if(i1==markerz.length)i1=0;for(var i2=0;i2<markerz.length;i2++){
                if(i2==pointdel){
                    i2++;if(i2==markerz.length)break
                }var i3=i2+1;if(i3==pointdel){
                    i3++
                }if(i3==markerz.length)i3=0;if(i==i2)continue;if(i2!=i&&i3!=i&&i2!=i1&&i3!=i1){
                    if(interlin(markerz[i2].getLatLng(),markerz[i3].getLatLng(),markerz[i].getLatLng(),markerz[i1].getLatLng())){
                        peres++
                    }
                    }if(peres){
                    alert('Cannot delete this point because the polygon will have intersected lines.');return
                }
                }
            }
        }map.removeOverlay(markerz[pointdel]);markerz.splice(pointdel,1);remakeid();pointdel=null;drawpoly();is_changed++;psavemenu()
    }function dotmenuoff(){
    if(_ge('dotmenu')){
        if(_ge('dotmenu').style.display==_bk){
            _ge('dotmenu').style.display=_no;stoppprev=0
            }
        }
    }function remakeid(){
    for(var i=0;i<markerz.length;i++){
        markerz[i]._id=i
        }
    }function planar_poly_area(){
    var points=[];var from=2*Math.PI*6367460/360;for(var i=0;i<markerz.length;++i){
        points.push(markerz[i].getLatLng())
        }points.push(markerz[0].getLatLng());var x=0,y=0;for(var kvid in points){
        if(points[kvid].lng()>155)x=1;else if(points[kvid].lng()<-155)y=1
            }if(x&&y){
        var a=0.0;for(var i=0;i<points.length;++i){
            var j=(i+1)%points.length;var x1=0,x2=0;if(points[i].lng()<-155)x1=360;if(points[j].lng()<-155)x2=360;var xi=(points[i].lng()+x1)*from*Math.cos(points[i].lat()*Math.PI/180);var yi=points[i].lat()*from;var xj=(points[j].lng()+x2)*from*Math.cos(points[j].lat()*Math.PI/180);var yj=points[j].lat()*from;a+=xi*yj-xj*yi
            }
        }else{
        var a=0.0;for(var i=0;i<points.length-1;++i){
            var j=(i+1)%(points.length-1);var xi=points[i].lng()*from*Math.cos(points[i].lat()*Math.PI/180);var yi=points[i].lat()*from;var xj=points[j].lng()*from*Math.cos(points[j].lat()*Math.PI/180);var yj=points[j].lat()*from;a+=xi*yj-xj*yi
            }
        }return Math.abs(a/2)
    }function poly_checksize(){
    if(!pline)return false;var x2=Math.sqrt(Math.sqrt(planar_poly_area()));var min_x,min_y,max_x,max_y;var x1=0,y1=0;for(var i=0;i<markerz.length;i++){
        if(markerz[i].getLatLng().lng()>155)x1=1;else if(markerz[i].getLatLng().lng()<-155)y1=1
            }var x,y;for(var i=0;i<markerz.length;i++){
        x=markerz[i].getLatLng().lng();y=markerz[i].getLatLng().lat();if(x1&&y1&&x<-155)x+=360;if(x<min_x||!min_x)min_x=x;if(y<min_y||!min_y)min_y=y;if(x>max_x||!max_x)max_x=x;if(y>max_y||!max_y)max_y=y
            }x1=(max_x-min_x)*(max_y-min_y);if((x2>75&&lvl==0)||(x2>125&&lvl==1)||(x2>999&&lvl>1)||(x1>0.25&&lvl==0)||(x1>0.5&&lvl==1)||(x1>50&&lvl>1)){
        if(flphoar[27]!=100){
            return true
            }
        }return false
    }function savepoly(o,a){
    var from=polyencode();if(from[2]==''||(flphoar[31]&&!o))return;flphoar[31]=1;show_binf();var x2=Math.sqrt(Math.sqrt(planar_poly_area()));var min_x,min_y,max_x,max_y;var x1=0,y1=0;for(var i=0;i<markerz.length;i++){
        if(markerz[i].getLatLng().lng()>155)x1=1;else if(markerz[i].getLatLng().lng()<-155)y1=1
            }var x,y;for(var i=0;i<markerz.length;i++){
        x=markerz[i].getLatLng().lng();y=markerz[i].getLatLng().lat();if(x1&&y1&&x<-155)x+=360;if(x<min_x||!min_x)min_x=x;if(y<min_y||!min_y)min_y=y;if(x>max_x||!max_x)max_x=x;if(y>max_y||!max_y)max_y=y
            }x1=(max_x-min_x)*(max_y-min_y);if(poly_checksize()){
        alert(localization['jsi_polygonbig']);return
    }if(edit_block_id==0){
        var zoom=map.getZoom();if(max_x>180)max_x-=360;if(o){
            var query='&xy='+Math.round(min_x*10000000)+'x'+Math.round(min_y*10000000)+'x'+Math.round(max_x*10000000)+'x'+Math.round(max_y*10000000)+'x'+zoom;if(typeof a!=_un){
                for(var kvid in a){
                    query+='&'+kvid+'='+a[kvid]
                    }
                }jwindow("/sys/edit_wiki4/?id=0&new=1&lng=0&savepoly=1"+query+'&x='+from[0]+'&y='+from[1]+'&pl='+x2+'&poly='+from[2])
            }else{
            if(!flphoar[27])flphoar[27]=0;min_y+='&x='+from[0]+'&y='+from[1]+'&pl='+x2+'&poly='+from[2]+'&surface='+flphoar[27];loadXML("/sys/save4/?do=svrc&ispo=1",'','zoom='+zoom+'&x1='+min_x+'&x2='+max_x+'&y2='+max_y+'&y1='+min_y);return
        }
        }else{
        if(flphoar[27]==100){
            loadXML("/sys/geo_bound2/?savepoly=1&id="+edit_block_id,'','x='+from[0]+'&y='+from[1]+'&pl='+x2+'&poly='+from[2]);return
        }loadXML("/sys/save4/?savepoly=1&id="+edit_block_id,'','x='+from[0]+'&y='+from[1]+'&pl='+x2+'&poly='+from[2])
        }flphoar[27]=0;cancelpoly()
    }function pre_poly_edit(id){
    jwindow_close();showpolyfn();if(ttovo)chosen_poly=ttovo.zoom=ttovo.kvid=false;var zoom=map.getZoom();if(zoom<6){
        jwindow('',250,150,localization['jsi_zoomin_closer']);return
    }if(edit_block_id==0){
        edit_block_id=id
        }else{
        return
    }edit_block_id=id;doafterxmlget='pre_poly_edit1(0);';fast('/sys/save4/?freq=2&id='+id+tmpstr)
    }function pre_poly_edit1(o){
    if(!o)polydecode(xmlhttp.responseText);if(!o){
        if(markerz.length==0)return
    }addpoly()
    }function polydecode_web(preparce){
    var cinf=preparce.split(';');var from=10000000;if(config['ggz'])from*=10;var kvid=cinf[0]+'i';cinf[1]=parseFloat(cinf[1]);cinf[2]=parseFloat(cinf[2]);var x2=cinf[1]/from;var y2=cinf[2]/from;var i=0;for(var t=3;t<cinf.length;t+=2){
        var x1=(cinf[1]+parseFloat(cinf[t]))/from;var y1=(cinf[2]+parseFloat(cinf[t+1]))/from;if(x1>x2)x2=x1;if(y1>y2)y2=y1;markerz[i]=new GMarker(new GLatLng(y1,x1),{
            icon:iconr,
            draggable:true,
            bouncy:false,
            zIndexProcess:zinormal
        });i++
    }
    }function polydecode(preparce){
    preparce=preparce.replace(/^\d+;/,'');var cinf=preparce.split(';');var fromt1=parseInt(cinf[2].substr(0,2),16)+1;var z=[];var t=2;z[0]=parseInt(cinf[0]);z[1]=parseInt(cinf[1]);for(i=2;i<cinf[2].length;i+=fromt1*2){
        var kvid=0;var i1=fromt1;do{
            kvid+=parseInt(cinf[2].substr(i+i1*2-2,2),16)*Math.pow(2,Math.abs(i1-fromt1)*8)
            }while(--i1);switch(fromt1){
            case 1:if(kvid>127)kvid-=256;break;case 2:if(kvid>32767)kvid-=65535;break;case 3:if(kvid>8388607)kvid-=16777215;break;case 4:if(kvid>2147483647)kvid-=4294967295;break
                }z[t]=kvid;t++
    }var from=1;var polyz=[];markerz[0]=new GMarker(new GLatLng(z[1]/10000000, z[0]/10000000),{
        icon:iconr,
        draggable:true,
        bouncy:false,
        zIndexProcess:zinormal
    });var i=1;for(var t=2;t<z.length;t+=2){
        if(z[t-2]>1550000000&&z[t]<-500000000){
            z[t]+=4294967295
            }else if(z[t-2]<-1550000000&&z[t]>500000000){
            z[t]-=4294967295
            }z[t]=z[t-2]-z[t];z[t+1]=z[t-1]-z[t+1];var x1=z[t]/10000000;var y1=z[t+1]/10000000;markerz[from]=new GMarker(new GLatLng(y1,x1),{
            icon:iconr,
            draggable:true,
            bouncy:false,
            zIndexProcess:zinormal
        });from++
    }
    }function polyencode(){
    var x=null,y=null,x1,y1;for(var i=0;i<markerz.length;i++){
        x1=markerz[i].getLatLng().lng();y1=markerz[i].getLatLng().lat();if(x1<x||!x)x=x1;if(y1<y||!y)y=y1
            }x=Math.round(x*10000000);y=Math.round(y*10000000);var fromt='';for(var i=0;i<markerz.length;i++){
        x1=Math.round(markerz[i].getLatLng().lng()*10000000);y1=Math.round(markerz[i].getLatLng().lat()*10000000);x1-=x;y1-=y;if(i!=0)fromt+=";";fromt+=x1+";"+y1
        }var from=new Array(x,y,fromt);return from
    }function feetallpoly1(o){
    if(pline){
        var bounds=pline.getBounds();map.panTo(bounds.getCenter())
        }
    }function feetallpoly(fromt){
    var bounds=new GLatLngBounds();var points=[];for(var i=0;i<markerz.length;i++){
        bounds.extend(markerz[i].getLatLng());points.push(markerz[i].getLatLng())
        }var x=0,y=0;for(var kvid in points){
        if(points[kvid].lng()>155)x=1;else if(points[kvid].lng()<-155)y=1
            }var x1=0;if(x&&y){
        x1=360
        }var lngCenter=(bounds.getNorthEast().lng()+x1+bounds.getSouthWest().lng())/2;var latCenter=(bounds.getNorthEast().lat()+bounds.getSouthWest().lat())/2;var center=new GLatLng(latCenter,lngCenter);var from=map.getBoundsZoomLevel(bounds);if(from>16)from-=fromt;map.setZoom(from);map.panTo(center)
    }function setmasscenter(){
    if(polytype==1)return;var points=[];for(var i=0;i<markerz.length;++i){
        points.push(markerz[i].getLatLng())
        }if(points.length<3)return;var x=0,y=0;for(var kvid in points){
        if(points[kvid].lng()>155)x=1;else if(points[kvid].lng()<-155)y=1
            }if(x&&y){
        return
    }var x1p=points[0].lng();var x2p=points[0].lng();var y1p=points[0].lat();var y2p=points[0].lat();for(var kvid in points){
        if(points[kvid].lng()<x1p)x1p=points[kvid].lng();if(points[kvid].lng()>x2p)x2p=points[kvid].lng();if(points[kvid].lat()<y1p)y1p=points[kvid].lat();if(points[kvid].lat()>y2p)y2p=points[kvid].lat()
            }var cx=0,cy=0;cx=(x1p+x2p)/2;cy=(y1p+y2p)/2;var mctr;mctr=new GLatLng(cy,cx);var fromt;for(var kvid in points){
        if(proxdot(points[kvid],mctr)<20){
            fromt=1;break
        }
        }if(!ceniconpol){
        var iconb=new GIcon();iconb.image="/img/movepl.png";iconb.dragCrossImage="/img/blank.gif";iconb.iconSize=new GSize(23,23);iconb.iconAnchor=new GPoint(12,12);iconb.maxHeight=0;ceniconpol=new GMarker(mctr,{
            icon:iconb,
            draggable:true,
            bouncy:false,
            zIndexProcess:zinormal
        });map.addOverlay(ceniconpol);GEvent.addListener(ceniconpol,'mouseover',function(){
            if(stoppprev==2){
                return
            }if(stoppprev==0){
                stoppprev=1
                }cancelprev();isdrag=1
            });GEvent.addListener(ceniconpol,'mouseout',function(){
            if(stoppprev==1){
                stoppprev=0
                }isdrag=0
            });GEvent.addListener(ceniconpol,'dragstart',function(){
            deltapoly=[];deltaxy=ceniconpol.getLatLng();dotmenuoff();is_changed++;isdrag=1;for(var i=0;i<markerz.length;i++){
                deltapoly[i]=markerz[i].getLatLng()
                }stoppprev=2;cancelprev()
            });GEvent.addListener(ceniconpol,'dragend',function(){
            deltashow();deltapoly=[];stoppprev=0;isdrag=0;upd_nomousedet()
            });GEvent.addListener(ceniconpol,'drag',function(){
            lag_delay_fn(deltashow)
            })
        }else{
        if(mctr!=ceniconpol.getLatLng()){
            ceniconpol.setLatLng(mctr)
            }
        }
    }function deltashow(){
    if(deltapoly.length==0)return;var deltaxy1=ceniconpol.getLatLng();var x=deltaxy1.lng()-deltaxy.lng();var y=deltaxy1.lat()-deltaxy.lat();for(var i=0;i<markerz.length;i++){
        markerz[i].setLatLng(new GLatLng(deltapoly[i].lat()+y,deltapoly[i].lng()+x))
        }drawpoly()
    }function errorcontact(){}var polyfd=[];jsar['poly.js']=2;jsar['polya.js']=2;jsar['polynew.js']=2;jsar['polynewa.js']=2;var Tooltip={
    textWrapperId:'wikimapia-tooltip-text',
    sprite:'/img/tooltip-sprite.png',
    infowin:{
        normal:{
            left:0,
            top:0,
            width:316,
            height:76
        },
        information:{
            left:0,
            top:-77,
            width:316,
            height:76
        },
        forbidden:{
            left:0,
            top:-154,
            width:316,
            height:76
        },
        alert:{
            left:0,
            top:-231,
            width:316,
            height:76
        }
        },
    is_ie8:function(){
        var rv=-1;var ua=navigator.userAgent;var re=new RegExp("Trident\/([0-9]{1,}[\.0-9]{0,})");if(re.exec(ua)!=null){
            rv=parseFloat(RegExp.$1)
            }return(rv==4)
        },
    init:function(){
        this._is_ie="\v"=="v";this._is_ie8=this.is_ie8();this.makeTooltip(this.sprite,'Test');this.tooltip.style.display='none';document.getElementsByTagName('body')[0].appendChild(this.tooltip);return this
        },
    show:function(x,y,text,arrowDirection,arrowPosition){
        if(this.timeout){
            window.clearTimeout(this.timeout)
            }arrowDirection=arrowDirection||'up';arrowPosition=arrowPosition||'left';var textDivWidth=this.measureText(text)+5;this.tooltipWidth=textDivWidth+5;this.textDiv.style.width=textDivWidth+'px';document.getElementById(this.textWrapperId).innerHTML=text;var tooltipArrowLeft;switch(arrowPosition){
            case'left':tooltipArrowLeft=5;break;case'center':tooltipArrowLeft=(this.tooltipWidth-7)/2;if(tooltipArrowLeft>x-5){
                tooltipArrowLeft=x-5
                }if(tooltipArrowLeft<5){
                tooltipArrowLeft=5
                }break
            }switch(arrowDirection){
            case'down':this.upArrow.style.visibility='hidden';this.downArrow.style.visibility='visible';this.downArrow.style.marginLeft=tooltipArrowLeft+'px';this.tooltip.style.top=(y-28)+'px';break;case'up':this.downArrow.style.visibility='hidden';this.upArrow.style.visibility='visible';this.upArrow.style.marginLeft=tooltipArrowLeft+'px';this.tooltip.style.top=y+'px';break
                }this.tooltip.style.left=(x-tooltipArrowLeft-3.5)+'px';this.tooltip.style.display='';return this
        },
    hide:function(duration){
        if(this.timeout){
            window.clearTimeout(this.timeout)
            }if(duration){
            this.timeout=window.setTimeout(function(){
                this.tooltip.style.display='none'
                }.bind(this),duration)
            }else{
            this.tooltip.style.display='none'
            }return this
        },
    makeTooltip:function(imgSrc,text,font){
        font=font||{};var labelDiv=document.createElement("div");labelDiv.style.position="absolute";labelDiv.style.overflow="hidden";labelDiv.style.width="auto";labelDiv.style.height="28px";var textWitdh=this.measureText(text,font)+15;var upArrow=this.makeImgDiv_(imgSrc,{
            left:0,
            top:0,
            width:7,
            height:5
        });var downArrow=this.makeImgDiv_(imgSrc,{
            left:0,
            top:-5,
            width:7,
            height:5
        });downArrow.style.clear='both';var textDiv=this.makeImgDiv_(imgSrc,{
            left:-8,
            top:0,
            width:textWitdh
        });if(!this._is_ie){
            textDiv.style.cssFloat='left'
            }else{
            textDiv.style.styleFloat='left'
            }textDiv.style.position='';textDiv.style.width=textWitdh+'px';var lineHeight=this._is_ie?18:28;textDiv.innerHTML=textDiv.innerHTML+'<div id="'+this.textWrapperId+'" style="position: absolute; left: 5px; top: 0px; line-height: '+lineHeight+'px; color: #fff; font-size: 12px; font-weight:bold; font-family:Arial">'+text+'</div>';var endDiv=this.makeImgDiv_(imgSrc,{
            left:-295,
            top:0,
            width:5
        });if(!this._is_ie){
            endDiv.style.cssFloat='left'
            }else{
            endDiv.style.styleFloat='left';if(this._is_ie8){
                endDiv.style.marginLeft='1px'
                }
            }endDiv.style.position='';endDiv.style.width='5px';labelDiv.appendChild(upArrow);labelDiv.appendChild(textDiv);labelDiv.appendChild(endDiv);labelDiv.appendChild(downArrow);this.tooltipWidth=textWitdh+5;this.upArrow=upArrow;this.downArrow=downArrow;this.textDiv=textDiv;this.tooltip=labelDiv
        },
    measureText:function(text,font){
        font=font||{};var ruler=document.getElementById('text-measurer');if(!ruler){
            var ruler=document.createElement('span');ruler.style.visibility='hidden';ruler.style.whiteSpace='nowrap';ruler.style.position='absolute';ruler.style.left='-5000px';ruler.style.top='-5000px';ruler.setAttribute('id','text-measurer');document.getElementsByTagName('body')[0].appendChild(ruler)
            }ruler.innerHTML=text;ruler.style.fontWeight=font.weight||'bold';ruler.style.fontFamily=font.family||'Arial';ruler.style.fontSize=font.size||'12px';return ruler.offsetWidth
        },
    makeImgDiv_:function(imgSrc,params){
        var imgDiv=document.createElement("div");imgDiv.style.overflow="hidden";if(params.width){
            imgDiv.style.width=params.width+"px"
            }if(params.height){
            imgDiv.style.height=params.height+"px"
            }var img=null;if(!this._is_ie){
            img=new Image();img.src=imgSrc
            }else{
            img=document.createElement("div");if(params.width){
                img.style.width=params.width+"px"
                }if(params.height){
                img.style.height=params.height+"px"
                }
            }img.style.position="relative";img.style.left=params.left+"px";img.style.top=params.top+"px";img.style.filter="progid:DXImageTransform.Microsoft.AlphaImageLoader(src='"+imgSrc+"')";imgDiv.appendChild(img);return imgDiv
        },
    onGlobalDocumentClick:function(){
        this.wrapper.style.display='none'
        }
    };if(!Function.prototype.bind){
    Function.prototype.bind=function(obj){
        var fn=this;return function(){
            var args=[this];for(var i=0,ix=arguments.length;i<ix;i++){
                args.push(arguments[i])
                }return fn.apply(obj,args)
            }
        }
    };var TooltipInitializerEvent=function(){
    if(window.map){
        Tooltip.init()
        }else{
        window.setTimeout(TooltipInitializerEvent,200)
        }
    };TooltipInitializerEvent();