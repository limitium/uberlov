/**************************************************
 * Aptana code assist dummy JS for Google API/Mapplet API 
 * This JS is created by fishball (fishballbiz@gmail.com) 
 * under GPL license.
 **************************************************/
var G_MAP_MAP_PANE,G_MAP_MARKER_SHADOW_PANE,G_MAP_MARKER_PANE,G_MAP_FLOAT_SHADOW_PANE,G_MAP_MARKER_MOUSE_TARGET_PANE,G_MAP_FLOAT_PANE,G_DEFAULT_ICON,G_ANCHOR_TOP_RIGHT,G_ANCHOR_TOP_LEFT,G_ANCHOR_BOTTOM_RIGHT,G_ANCHOR_BOTTOM_LEFT,G_NORMAL_MAP,G_SATELLITE_MAP,G_HYBRID_MAP,G_DEFAULT_MAP_TYPES;
/**
* Instantiate class GMap2 in order to create a map. This is the central class in the API. Everything else is auxiliary.
* @constructor   
*/
function GMap2(container, opts_optional) {
}
/**
* (Function):
* Enables the dragging of the map (enabled by default).
* @type none  
* @method   
*/
GMap2.prototype.enableDragging = function (){};
/**
* (Function):
* Disables the dragging of the map.
* @type none  
* @method   
*/
GMap2.prototype.disableDragging = function (){};
/**
* (Function):
* Returns true iff the dragging of the map is enabled.
* @type Boolean  
* @method   
*/
GMap2.prototype.draggingEnabled = function (){};
/**
* (Function):
* Enables info window operations on the map (enabled by default).
* @type none  
* @method   
*/
GMap2.prototype.enableInfoWindow = function (){};
/**
* (Function):
* Closes the info window, if it is open, and disables the opening of a new info window.
* @type none  
* @method   
*/
GMap2.prototype.disableInfoWindow = function (){};
/**
* (Function):
* Returns true iff the info window is enabled.
* @type Boolean  
* @method   
*/
GMap2.prototype.infoWindowEnabled = function (){};
/**
* (Function):
* Enables double click to zoom in and out (disabled by default). (Since 2.58)
* @type none  
* @method   
*/
GMap2.prototype.enableDoubleClickZoom = function (){};
/**
* (Function):
* Disables double click to zoom in and out. (Since 2.58)
* @type none  
* @method   
*/
GMap2.prototype.disableDoubleClickZoom = function (){};
/**
* (Function):
* Returns true iff double click to zoom is enabled. (Since 2.58)
* @type Boolean  
* @method   
*/
GMap2.prototype.doubleClickZoomEnabled = function (){};
/**
* (Function):
* Enables continuous smooth zooming for select browsers (disabled by default). (Since 2.58)
* @type none  
* @method   
*/
GMap2.prototype.enableContinuousZoom = function (){};
/**
* (Function):
* Disables continuous smooth zooming. (Since 2.58)
* @type none  
* @method   
*/
GMap2.prototype.disableContinuousZoom = function (){};
/**
* (Function):
* Returns true if continuous smooth zooming is enabled. (Since 2.58)
* @type Boolean  
* @method   
*/
GMap2.prototype.continuousZoomEnabled = function (){};
/**
* (Function):
* Enables zooming using a mouse's scroll wheel. Note: scroll wheel zoom is disabled by default. (Since 2.78)
* @type none  
* @method   
*/
GMap2.prototype.enableScrollWheelZoom = function (){};
/**
* (Function):
* Disables zooming using a mouse's scroll wheel. Note: scroll wheel zoom is disabled by default. (Since 2.78)
* @type none  
* @method   
*/
GMap2.prototype.disableScrollWheelZoom = function (){};
/**
* (Function):
* Returns a Boolean indicating whether scroll wheel zooming is enabled. (Since 2.78)
* @type Boolean  
* @method   
*/
GMap2.prototype.scrollWheelZoomEnabled = function (){};
/**
* (Function):
* Adds the control to the map. The position on the map is determined by the optional position argument. If this argument is absent, the default position of the control is used, as determined by the GControl.getDefaultPosition() method. A control instance must not be added more than once to the map.
* @type none  
* @method   
*/
GMap2.prototype.addControl = function (control, position_optional){};
/**
* (Function):
* Removes the control from the map. It does nothing if the control was never added to the map.
* @type none  
* @method   
*/
GMap2.prototype.removeControl = function (control){};
/**
* (Function):
* Returns the DOM object that contains the map. Used by GControl.initialize().
* @type Node  
* @method   
*/
GMap2.prototype.getContainer = function (){};
/**
* (Function):
* Returns the array of map types registered with this map.
* @type Array of GMapType  
* @method   
*/
GMap2.prototype.getMapTypes = function (){};
/**
* (Function):
* Returns the currently selected map type.
* @type GMapType  
* @method   
*/
GMap2.prototype.getCurrentMapType = function (){};
/**
* (Function):
* Selects the given new map type. The type must be known to the map. See the constructor, and the method addMapType().
* @type none  
* @method   
*/
GMap2.prototype.setMapType = function (type){};
/**
* (Function):
* Adds a new map type to the map. See section GMapType for how to define custom map types.
* @type none  
* @method   
*/
GMap2.prototype.addMapType = function (type){};
/**
* (Function):
* Removes the map type from the map. Will update the set of buttons displayed by the GMapTypeControl and fire the removemaptype event.
* @type none  
* @method   
*/
GMap2.prototype.removeMapType = function (type){};
/**
* (Function):
* Returns true iff the map was initialized by setCenter() since it was created.
* @type Boolean  
* @method   
*/
GMap2.prototype.isLoaded = function (){};
/**
* (Function):
* Returns the geographical coordinates of the center point of the map view.
* @type GLatLng  
* @method   
*/
GMap2.prototype.getCenter = function (){};
/**
* (Function):
* Returns the the visible rectangular region of the map view in geographical coordinates.
* @type GLatLngBounds  
* @method   
*/
GMap2.prototype.getBounds = function (){};
/**
* (Function):
* Returns the zoom level at which the given rectangular region fits in the map view. The zoom level is computed for the currently selected map type. If no map type is selected yet, the first on the list of map types is used.
* @type Number  
* @method   
*/
GMap2.prototype.getBoundsZoomLevel = function (bounds){};
/**
* (Function):
* Returns the size of the map view in pixels.
* @type GSize  
* @method   
*/
GMap2.prototype.getSize = function (){};
/**
* (Function):
* Returns the current zoom level.
* @type Number  
* @method   
*/
GMap2.prototype.getZoom = function (){};
/**
* (Function):
* Sets the map view to the given center. Optionally, also sets zoom level and map type. The map type must be known to the map. See the constructor, and the method addMapType(). This method must be called first after construction to set the initial state of the map. It is an error to call other operations on the map after construction.
* @type none  
* @method   
*/
GMap2.prototype.setCenter = function (center, zoom_optional, type_optional){};
/**
* (Function):
* Changes the center point of the map to the given point. If the point is already visible in the current map view, change the center in a smooth animation.
* @type none  
* @method   
*/
GMap2.prototype.panTo = function (center){};
/**
* (Function):
* Starts a pan animation by the given distance in pixels.
* @type none  
* @method   
*/
GMap2.prototype.panBy = function (distance){};
/**
* (Function):
* Starts a pan animation by half the width of the map in the indicated directions. +1 is right and down, -1 is left and up, respectively.
* @type none  
* @method   
*/
GMap2.prototype.panDirection = function (dx, dy){};
/**
* (Function):
* Sets the zoom level to the given new value.
* @type none  
* @method   
*/
GMap2.prototype.setZoom = function (level){};
/**
* (Function):
* Increments zoom level by one.
* @type none  
* @method   
*/
GMap2.prototype.zoomIn = function (){};
/**
* (Function):
* Decrements zoom level by one.
* @type none  
* @method   
*/
GMap2.prototype.zoomOut = function (){};
/**
* (Function):
* Stores the current map position and zoom level for later recall by returnToSavedPosition().
* @type none  
* @method   
*/
GMap2.prototype.savePosition = function (){};
/**
* (Function):
* Restores the map view that was saved by savePosition().
* @type none  
* @method   
*/
GMap2.prototype.returnToSavedPosition = function (){};
/**
* (Function):
* Notifies the map of a change of the size of its container. Call this method after the size of the container DOM object has changed, so that the map can adjust itself to fit the new size.
* @type none  
* @method   
*/
GMap2.prototype.checkResize = function (){};
/**
* (Function):
* Adds an overlay to the map and fires the addoverlay event.
* @type none  
* @method   
*/
GMap2.prototype.addOverlay = function (overlay){};
/**
* (Function):
* Removes the overlay from the map. If the overlay was on the map, it fires the removeoverlay event.
* @type none  
* @method   
*/
GMap2.prototype.removeOverlay = function (overlay){};
/**
* (Function):
* Removes all overlay from the map, and fires the clearoverlays event.
* @type none  
* @method   
*/
GMap2.prototype.clearOverlays = function (){};
/**
* (Function):
* Returns a DIV that holds the object in the layer identified by pane. Used by GOverlay instances in method GOverlay.initialize() instances to draw themselves on the map
* @type Node  
* @method   
*/
GMap2.prototype.getPane = function (pane){};
/**
* (Function):
* Opens a simple info window at the given point. Pans the map such that the opened info window is fully visible. The content of the info window is given as a DOM node.
* @type none  
* @method   
*/
GMap2.prototype.openInfoWindow = function (point, node, opts_optional){};
/**
* (Function):
* Opens a simple info window at the given point. Pans the map such that the opened info window is fully visible. The content of the info window is given as HTML text.
* @type none  
* @method   
*/
GMap2.prototype.openInfoWindowHtml = function (point, html, opts_optional){};
/**
* (Function):
* Opens a tabbed info window at the given point. Pans the map such that the opened info window is fully visible. The content of the info window is given as DOM nodes.
* @type none  
* @method   
*/
GMap2.prototype.openInfoWindowTabs = function (point, tabs, opts_optional){};
/**
* (Function):
* Opens a tabbed info window at the given point. Pans the map such that the opened info window is fully visible. The content of the info window is given as HTML text.
* @type none  
* @method   
*/
GMap2.prototype.openInfoWindowTabsHtml = function (point, tabs, opts_optional){};
/**
* (Function):
* Opens an info window at the given point that contains a closeup view on the map around this point.
* @type none  
* @method   
*/
GMap2.prototype.showMapBlowup = function (point, opts_optional){};
/**
* (Function):
* Updates the content of the currently open GInfoWindow object, without repositioning. The info window is resized to fit the new content. The optional onupdate callback function is called after the info window content is actually changed. (Since 2.85)
* @type none  
* @method   
*/
GMap2.prototype.updateInfoWindow = function (tabs, onupdate_optional){};
/**
* (Function):
* Updates the currently selected tab, causing a resize of the GInfoWindow object, without repositioning. The modifier function is used to modify the currently selected tab and is passed a GInfoWindowTab as an argument. The optional onupdate callback function is called after the info window displays the new content. (Since 2.85)
* @type none  
* @method   
*/
GMap2.prototype.updateCurrentTab = function (modifier, onupdate_optional){};
/**
* (Function):
* Closes the currently open info window.
* @type none  
* @method   
*/
GMap2.prototype.closeInfoWindow = function (){};
/**
* (Function):
* Returns the info window object of this map. If no info window exists yet, it is created, but not displayed. This operation is not influenced by enableInfoWindow().
* @type GInfoWindow  
* @method   
*/
GMap2.prototype.getInfoWindow = function (){};
/**
* (Function):
* Computes the pixel coordinates of the given geographical point in the DOM element that holds the draggable map. You need this method to position a custom overlay when you implement the GOverlay.redraw() method for a custom overlay.
* @type GPoint  
* @method   
*/
GMap2.prototype.fromLatLngToDivPixel = function (latlng){};
/**
* (Function):
* Computes the geographical coordinates from pixel coordinates in the div that holds the draggable map. You need this when you implement interaction with custom overlays.
* @type GLatLng  
* @method   
*/
GMap2.prototype.fromDivPixelToLatLng = function (pixel){};
/**
* (Function):
* Computes the geographical coordinates of the point at the given pixel coordinates in the DOM element that contains the map on the page. You need this when you implement interaction of custom controls with the map.
* @type GLatLng  
* @method   
*/
GMap2.prototype.fromContainerPixelToLatLng = function (pixel){};
/**
* (EVENT):
* This event is fired when a map type is added to the map.
*/
GMap2.addmaptype = 0;
/**
* (EVENT):
* This event is fired when a map type is removed from the map.
*/
GMap2.removemaptype = 0;
/**
* (EVENT):
* This event is fired when the map view starts changing. This can be caused by dragging, in which case a dragstart event is also fired, or by invocation of a method that changes the map view.
*/
GMap2.movestart = 0;
/**
* (EVENT):
* This event is fired, possibly repeatedly, while the map view is changing.
*/
GMap2.move = 0;
/**
* (EVENT):
* This event is fired when the change of the map view ends.
*/
GMap2.moveend = 0;
/**
* (EVENT):
* This event is fired when another map type is selected.
*/
GMap2.maptypechanged = 0;
/**
* (EVENT):
* This event is fired when the info window opens.
*/
GMap2.infowindowopen = 0;
/**
* (EVENT):
* This event is fired before the info window closes. (Since 2.83)
*/
GMap2.infowindowbeforeclose = 0;
/**
* (EVENT):
* This event is fired when the info window closes. The event infowindowbeforeclose is fired before this event. If a currently open info window is reopened at a different point using another call to openInfoWindow*(), the events infowindowbeforeclose, infowindowclose and infowindowopen are fired in this order.
*/
GMap2.infowindowclose = 0;
/**
* (EVENT):
* This event is fired when a single overlay is added to the map by the method addOverlay(). The new overlay is passed as an argument overlay to the event handler.
*/
GMap2.addoverlay = 0;
/**
* (EVENT):
* This event is fired when a single overlay is removed by the method removeOverlay(). The overlay that was removed is passed as an argument overlay to the event handler.
*/
GMap2.removeoverlay = 0;
/**
* (EVENT):
* This event is fired when all overlays are removed at once by the method clearOverlays().
*/
GMap2.clearoverlays = 0;
/**
* (EVENT):
* This event is fired when the user moves the mouse over the map from outside the map.
*/
GMap2.mouseover = 0;
/**
* (EVENT):
* This event is fired when the user moves the mouse off the map.
*/
GMap2.mouseout = 0;
/**
* (EVENT):
* This event is fired when the user moves the mouse inside the map.
*/
GMap2.mousemove = 0;
/**
* (EVENT):
* This event is fired when the user starts dragging the map.
*/
GMap2.dragstart = 0;
/**
* (EVENT):
* This event is repeatedly fired while the user drags the map.
*/
GMap2.drag = 0;
/**
* (EVENT):
* This event is fired when the user stops dragging the map.
*/
GMap2.dragend = 0;
/**
* (EVENT):
* This event is fired when the map setup is complete, and isLoaded() would return true. This means position, zoom, and map type are all initialized, but tile images may still be loading. (Since 2.52)
*/
GMap2.load = 0;
/**
* This class represents optional arguments to the GMap2 constructor. It has no constructor, but is instantiated as an object literal.
*/
function GMapOptions() {
/**
* (Property):
* Sets the size in pixels of the map. The container that is passed to the map constructor will be resized to the given size. By default, the map will assume the size of its container.
*/
this.size = 0;
/**
* (Property):
* Array of map types to be used by this map. By default, G_DEFAULT_MAP_TYPES is used. You can use this option to restrict the set of predefined map types that is displayed on the map, or to pass your own map types to the map. See also GMap2.addMapType().
*/
this.mapTypes = 0;
/**
* (Property):
* The cursor to display when the map is draggable. (Since 2.59)
*/
this.draggableCursor = 0;
/**
* (Property):
* The cursor to display while dragging the map. (Since 2.59)
*/
this.draggingCursor = 0;
}
/**
* +, - 	Zooms one level in or out, respectively. This corresponds to the + and - buttons in the GLargeMapControl and the GSmallMapControl.
* NOTE: This class has more constructors!
* @constructor   
*/
function GKeyboardHandler(map) {
}
/**
* (Function):
* Returns a CSS z-index value for a given latitude. It computes a z index such that overlays further south are on top of overlays further north, thus creating the 3D appearance of marker overlays.
* @type Number  
* @method   
*/
GKeyboardHandler.getZIndex = function (latitude){};
/**
* (Function):
* Called by the map after the overlay is added to the map using GMap2.addOverlay(). The overlay object can draw itself into the different panes of the map that can be obtained using GMap2.getPane().
* @type none  
* @method   
*/
GKeyboardHandler.prototype.initialize = function (map){};
/**
* (Function):
* Called by the map after the overlay is removed from the map using GMap2.removeOverlay() or GMap2.clearOverlays(). The overlay must remove itself from the map panes here.
* @type none  
* @method   
*/
GKeyboardHandler.prototype.remove = function (){};
/**
* (Function):
* Returns an uninitialized copy of itself that can be added to the map.
* @type GOverlay  
* @method   
*/
GKeyboardHandler.prototype.copy = function (){};
/**
* (Function):
* Called by the map when the map display has changed. The argument force will be true if the zoom level or the pixel offset of the map view has changed, so that the pixel coordinates need to be recomputed.
* @type none  
* @method   
*/
GKeyboardHandler.prototype.redraw = function (force){};
/**
* GInfoWindow has no constructor. It is created by the map and accessed by its method GMap2.getInfoWindow().
*/
function GInfoWindow() {
}
/**
* (Function):
* Selects the tab with the given index. This has the same effect as clicking on the corresponding tab.
* @type none  
* @method   
*/
GInfoWindow.prototype.selectTab = function (index){};
/**
* (Function):
* Makes the info window invisible. NOTE: This doesn't close the info window. It can be made visible again using show().
* @type none  
* @method   
*/
GInfoWindow.prototype.hide = function (){};
/**
* (Function):
* Makes the info window visible if its currently invisible.
* @type none  
* @method   
*/
GInfoWindow.prototype.show = function (){};
/**
* (Function):
* Returns true iff the info window is hidden. This includes the state that it's closed.
* @type Boolean  
* @method   
*/
GInfoWindow.prototype.isHidden = function (){};
/**
* (Function):
* Resets the state of the info window. Each argument may be null and then its value will not be changed from the current value.
* @type none  
* @method   
*/
GInfoWindow.prototype.reset = function (point, tabs, size, offset_optional, selectedTab_optional){};
/**
* (Function):
* Returns the geographical point at which the info window is anchored. The tip of the window points to this point on the map, modulo the pixel offset.
* @type GLatLng  
* @method   
*/
GInfoWindow.prototype.getPoint = function (){};
/**
* (Function):
* Returns the offset, in pixels, of the tip of the info window from the point on the map at whose geographical coordinates the info window is anchored.
* @type GSize  
* @method   
*/
GInfoWindow.prototype.getPixelOffset = function (){};
/**
* (Function):
* Returns the index, starting at 0, of the current selected tab.
* @type Number  
* @method   
*/
GInfoWindow.prototype.getSelectedTab = function (){};
/**
* (Function):
* Returns the array of tabs in this info window. (Since 2.59)
* @type Array of GInfoWindowTabs  
* @method   
*/
GInfoWindow.prototype.getTabs = function (){};
/**
* (Function):
* Returns the array of DOM nodes that hold the content of the tabs of this info window. (Since 2.59)
* @type Array of Node  
* @method   
*/
GInfoWindow.prototype.getContentContainers = function (){};
/**
* (EVENT):
* This event is fired when the info window close button is clicked. An event handler for this event can implement to close the info window, by calling the GMap2.closeInfoWindow() method.
*/
GInfoWindow.closeclick = 0;
/**
* An array of instances of this class can be passed as the tabs argument to the methods GMap2.openInfoWindowTabs(), GMap2.openInfoWindowTabsHtml(), GMarker.openInfoWindowTabs(), GMarker.openInfoWindowTabsHtml(), and the GMarker.bindInfoWindow*() variants. If the array contains more than one element, the info window will be shown with tabs. Every InfoWindowTab object contains two items: content defines the content of the info window when the tab is selected, and label defines the label of the tab. The properties are passed as arguments to the constructor. For the openInfoWindowTabs() methods, content is a DOM Node. For the methods openInfoWindowTabsHtml(), content is a string that contains HTML text.
* @constructor   
*/
function GInfoWindowTab(label, content) {
}
/**
* Instances of this class are used in the opts? argument to the methods openInfoWindow(), openInfoWindowHtml(), openInfoWindowTabs(), openInfoWindowTabsHtml(), the bindInfoWindow*() variants, and showMapBlowup() of classes GMap2 and GMarker. There is no constructor for this class. Instead, this class is instantiated as javascript object literal.
*/
function GInfoWindowOptions() {
/**
* (Property):
* Selects the tab with the given index, starting at 0, instead of the first tab (with index 0).
*/
this.selectedTab = 0;
/**
* (Property):
* Maximum width of the info window content, in pixels.
*/
this.maxWidth = 0;
/**
* (Property):
* Indicates whether or not the info window should close for a click on the map that was not on a marker. If set to true, the info window will not close when the map is clicked. The default value is false. (Since 2.83)
*/
this.noCloseOnClick = 0;
/**
* (Property):
* Function is called after the info window is opened and the content is displayed.
*/
this.onOpenFn = 0;
/**
* (Property):
* Function is called when the info window is closed.
*/
this.onCloseFn = 0;
/**
* (Property):
* Pertinent for showMapBlowup() only. The zoom level of the blowup map in the info window.
*/
this.zoomLevel = 0;
/**
* (Property):
* Pertinent for showMapBlowup() only. The map type of the blowup map in the info window.
*/
this.mapType = 0;
}
/**
* After it is added to a map, the info window of that map can be opened through the marker. The marker object will fire mouse events and infowindow events.
* NOTE: This class has more constructors!
* @constructor   
*/
function GMarker(point, icon_optional, inert_optional) {
}
/**
* (Function):
* Opens the map info window over the icon of the marker. The content of the info window is given as a DOM node. Only option GInfoWindowOptions.maxWidth is applicable.
* @type none  
* @method   
*/
GMarker.prototype.openInfoWindow = function (content, opts_optional){};
/**
* (Function):
* Opens the map info window over the icon of the marker. The content of the info window is given as a string that contains HTML text. Only option GInfoWindowOptions.maxWidth is applicable.
* @type none  
* @method   
*/
GMarker.prototype.openInfoWindowHtml = function (content, opts_optional){};
/**
* (Function):
* Opens the tabbed map info window over the icon of the marker. The content of the info window is given as an array of tabs that contain the tab content as DOM nodes. Only options GInfoWindowOptions.maxWidth and InfoWindowOptions.selectedTab are applicable.
* @type none  
* @method   
*/
GMarker.prototype.openInfoWindowTabs = function (tabs, opts_optional){};
/**
* (Function):
* Opens the tabbed map info window over the icon of the marker. The content of the info window is given as an array of tabs that contain the tab content as Strings that contain HTML text. Only options InfoWindowOptions.maxWidth and InfoWindowOptions.selectedTab are applicable.
* @type none  
* @method   
*/
GMarker.prototype.openInfoWindowTabsHtml = function (tabs, opts_optional){};
/**
* (Function):
* Binds the given DOM node to this marker. The content within this node will be automatically displayed in the info window when the marker is clicked. Pass content as null to unbind. (Since 2.85)
* @type none  
* @method   
*/
GMarker.prototype.bindInfoWindow = function (content, opts_optional){};
/**
* (Function):
* Binds the given HTML to this marker. The HTML content will be automatically displayed in the info window when the marker is clicked. Pass content as null to unbind. (Since 2.85)
* @type none  
* @method   
*/
GMarker.prototype.bindInfoWindowHtml = function (content, opts_optional){};
/**
* (Function):
* Binds the given GInfoWindowTabs (provided as DOM nodes) to this marker. The content within these tabs' nodes will be automatically displayed in the info window when the marker is clicked. Pass tabs as null to unbind. (Since 2.85)
* @type none  
* @method   
*/
GMarker.prototype.bindInfoWindowTabs = function (tabs, opts_optional){};
/**
* (Function):
* Binds the given GInfoWindowTabs (provided as strings of HTML) to this marker. The HTML content within these tabs will be automatically displayed in the info window when the marker is clicked. Pass tabs as null to unbind. (Since 2.85)
* @type none  
* @method   
*/
GMarker.prototype.bindInfoWindowTabsHtml = function (tabs, opts_optional){};
/**
* (Function):
* Closes the info window only if it belongs to this marker. (Since 2.85)
* @type none  
* @method   
*/
GMarker.prototype.closeInfoWindow = function (){};
/**
* (Function):
* Opens the map info window over the icon of the marker. The content of the info window is a closeup map around the marker position. Only options InfoWindowOptions.zoomLevel and InfoWindowOptions.mapType are applicable.
* @type none  
* @method   
*/
GMarker.prototype.showMapBlowup = function (opts_optional){};
/**
* (Function):
* Returns the icon of this marker, as set by the constructor.
* @type GIcon  
* @method   
*/
GMarker.prototype.getIcon = function (){};
/**
* (Function):
* Returns the title of this marker, as set by the constructor via the GMarkerOptions.title property. Returns undefined if no title is passed in. (Since 2.85)
* @type String  
* @method   
*/
GMarker.prototype.getTitle = function (){};
/**
* (Function):
* Returns the geographical coordinates at which this marker is anchored, as set by the constructor or by setPoint(). (Deprecated since 2.88)
* @type GLatLng  
* @method   
*/
GMarker.prototype.getPoint = function (){};
/**
* (Function):
* Returns the geographical coordinates at which this marker is anchored, as set by the constructor or by setLatLng(). (Since 2.88)
* @type GLatLng  
* @method   
*/
GMarker.prototype.getLatLng = function (){};
/**
* (Function):
* Sets the geographical coordinates of the point at which this marker is anchored. (Deprecated since 2.88)
* @type none  
* @method   
*/
GMarker.prototype.setPoint = function (point){};
/**
* (Function):
* Sets the geographical coordinates of the point at which this marker is anchored. (Since 2.88)
* @type none  
* @method   
*/
GMarker.prototype.setLatLng = function (point){};
/**
* (Function):
* Enables the marker to be dragged and dropped around the map. To function, the marker must have been initialized with GMarkerOptions.draggable = true.
* @type none  
* @method   
*/
GMarker.prototype.enableDragging = function (){};
/**
* (Function):
* Disables the marker from being dragged and dropped around the map.
* @type none  
* @method   
*/
GMarker.prototype.disableDragging = function (){};
/**
* (Function):
* Returns true if the marker has been initialized via the constructor using GMarkerOptions.draggable = true. Otherwise, returns false.
* @type Boolean  
* @method   
*/
GMarker.prototype.draggable = function (){};
/**
* (Function):
* Returns true if the marker is currently enabled for the user to drag on the map.
* @type Boolean  
* @method   
*/
GMarker.prototype.draggingEnabled = function (){};
/**
* (Function):
* Requests the image specified by the url to be set as the foreground image for this marker. Note that neither the print image nor the shadow image are adjusted. Therefore this method is primarily intended to implement highlighting or dimming effects, rather than drastic changes in marker's appearances. (Since 2.75)
* @type none  
* @method   
*/
GMarker.prototype.setImage = function (url){};
/**
* (Function):
* Hides the marker if it is currently visible. Note that this function triggers the event GMarker.visibilitychanged in case the marker is currently visible. (Since 2.77)
* @type none  
* @method   
*/
GMarker.prototype.hide = function (){};
/**
* (Function):
* Shows the marker if it is currently hidden. Note that this function triggers the event GMarker.visibilitychanged in case the marker is currently hidden. (Since 2.77)
* @type none  
* @method   
*/
GMarker.prototype.show = function (){};
/**
* (Function):
* Returns true if the marker is currently hidden. Otherwise returns false. (Since 2.77)
* @type Boolean  
* @method   
*/
GMarker.prototype.isHidden = function (){};
/**
* (EVENT):
* This event is fired when the marker icon was clicked. Notice that this event will also fire for the map, with the marker passed as the first argument to the event handler there.
*/
GMarker.click = 0;
/**
* (EVENT):
* This event is fired when the marker icon was double-clicked. Notice that this event will not fire for the map, because the map centers on double-click as a hardwired behavior.
*/
GMarker.dblclick = 0;
/**
* (EVENT):
* This event is fired when the DOM mousedown event is fired on the marker icon. Notice that the marker will stop the mousedown DOM event, so that it doesn't cause the map to start dragging.
*/
GMarker.mousedown = 0;
/**
* (EVENT):
* This event is fired for the DOM mouseup on the marker. Notice that the marker will not stop the mousedown DOM event, because it will not confuse the drag handler of the map.
*/
GMarker.mouseup = 0;
/**
* (EVENT):
* This event is fired when the mouse enters the area of the marker icon.
*/
GMarker.mouseover = 0;
/**
* (EVENT):
* This event is fired when the mouse leaves the area of the marker icon.
*/
GMarker.mouseout = 0;
/**
* (EVENT):
* This event is fired when the info window of the map was opened through this marker.
*/
GMarker.infowindowopen = 0;
/**
* (EVENT):
* This event is fired before the info window of the map that was opened through this marker is closed. (Since 2.83)
*/
GMarker.infowindowbeforeclose = 0;
/**
* (EVENT):
* This event is fired when the info window of the map that was opened through this marker is closed. This happens when either the info window was closed, or when it was opened on another marker, or on the map. The event infowindowbeforeclose is fired before this event.
*/
GMarker.infowindowclose = 0;
/**
* (EVENT):
* This event is fired when the marker is removed from the map, using GMap2.removeOverlay() or GMap2.clearOverlays().
*/
GMarker.remove = 0;
/**
* (EVENT):
* If the marker is enabled for dragging, this event is fired when the marker dragging begins.
*/
GMarker.dragstart = 0;
/**
* (EVENT):
* If the marker is enabled for dragging, this event is fired when the marker is being dragged.
*/
GMarker.drag = 0;
/**
* (EVENT):
* If the marker is enabled for dragging, this event is fired when the marker ceases to be dragged.
*/
GMarker.dragend = 0;
/**
* (EVENT):
* This event is fired when the visibility of the marker is changed (i.e. the visibility is flipped from visible to hidden or vice-versa). isVisible refers to the state of the marker after the visibility change has happened. (Since 2.77)
*/
GMarker.visibilitychanged = 0;
/**
* Instances of this class are used in the opts? argument to the constructor of the GMarker class. There is no constructor for this class. Instead, this class is instantiated as a javascript object literal.
*/
function GMarkerOptions() {
/**
* (Property):
* Chooses the Icon for this class. If not specified, G_DEFAULT_ICON is used. (Since 2.50)
*/
this.icon = 0;
/**
* (Property):
* When dragging markers normally, the marker floats up and away from the cursor. Setting this value to true keeps the marker underneath the cursor, and moves the cross downwards instead. The default value for this option is false. (Since 2.63)
*/
this.dragCrossMove = 0;
/**
* (Property):
* This string will appear as tooltip on the marker, i.e. it will work just as the title attribute on HTML elements. (Since 2.50)
*/
this.title = 0;
/**
* (Property):
* Toggles whether or not the marker is clickable. Markers that are not clickable or draggable are inert, consume less resources and do not respond to any events. The default value for this option is true, i.e. if the option is not specified, the marker will be clickable. (Since 2.50)
*/
this.clickable = 0;
/**
* (Property):
* Toggles whether or not the marker will be draggable by users. Markers set up to be dragged require more resources to set up than markers that are clickable. Any marker that is draggable is also clickable, bouncy and auto-pan enabled by default. The default value for this option is false. (Since 2.61)
*/
this.draggable = 0;
/**
* (Property):
* Toggles whether or not the marker should bounce up and down after it finishes dragging. The default value for this option is false. (Since 2.61)
*/
this.bouncy = 0;
/**
* (Property):
* When finishing dragging, this number is used to define the acceleration rate of the marker during the bounce down to earth. The default value for this option is 1. (Since 2.61)
*/
this.bounceGravity = 0;
/**
* (Property):
* Auto-pan the map as you drag the marker near the edge. If the marker is draggable the default value for this option is true. (Since 2.87)
*/
this.autoPan = 0;
}
/**
* This is a map overlay that draws a polyline on the map, using the vector drawing facilities of the browser if they are available, or an image overlay from Google servers otherwise.
* @constructor   
*/
function GPolyline(latlngs, color_optional, weight_optional, opacity_optional, opts_optional) {
}
/**
* (Function):
* Creates a polyline from encoded strings of aggregated points and levels. color is a string that contains a hexadecimal numeric HTML style, i.e. #RRGGBB. weight is the width of the line in pixels. opacity is a number between 0 and 1. points is a string containing the encoded latitude and longitude coordinates. levels is a string containing the encoded polyline zoom level groups. numLevels is the number of zoom levels contained in the encoded levels string. zoomFactor is the magnification between adjacent sets of zoom levels in the encoded levels string. Together, these two values determine the precision of the levels within an encoded polyline. The line will be antialiased and semitransparent. (Since 2.63)
* @type GPolyline  
* @method   
*/
GPolyline.prototype.fromEncoded = function (color_optional, weight_optional, opacity_optional, points, zoomFactor, levels, numLevels){};
/**
* (Function):
* Returns the number of vertices in the polyline. (Since 2.46)
* @type Number  
* @method   
*/
GPolyline.prototype.getVertexCount = function (){};
/**
* (Function):
* Returns the vertex with the given index in the polyline. (Since 2.46)
* @type GLatLng  
* @method   
*/
GPolyline.prototype.getVertex = function (index){};
/**
* (Function):
* Returns the length (in meters) of the polyline along the surface of a spherical Earth. (Since 2.85)
* @type Number  
* @method   
*/
GPolyline.prototype.getLength = function (){};
/**
* (Function):
* Returns the bounds for this polyline. (Since 2.85)
* @type GLatLngBounds  
* @method   
*/
GPolyline.prototype.getBounds = function (){};
/**
* (Function):
* Hides the polyline if it is both currently visible and GPolyline.supportsHide() returns true. Note that this function triggers the event GPolyline.visibilitychanged in case the polyline is currently visible. (Since 2.87)
* @type none  
* @method   
*/
GPolyline.prototype.hide = function (){};
/**
* (Function):
* Returns true if the polyline is currently hidden. Otherwise returns false. (Since 2.87)
* @type Boolean  
* @method   
*/
GPolyline.prototype.isHidden = function (){};
/**
* (Function):
* Shows the polyline if it is currently hidden. Note that this function triggers the event GPolyline.visibilitychanged in case the polyline is currently hidden. (Since 2.87)
* @type none  
* @method   
*/
GPolyline.prototype.show = function (){};
/**
* (Function):
* Returns true if GPolyline.hide() is supported in the current environment for GPolyline objects. Otherwise returns false. (Since 2.87)
* @type Boolean  
* @method   
*/
GPolyline.prototype.supportsHide = function (){};
/**
* (EVENT):
* This event is fired when the polyline is removed from the map, using GMap2.removeOverlay() or GMap2.clearOverlays().
*/
GPolyline.remove = 0;
/**
* (EVENT):
* This event is fired when the visibility state of the polyline toggles from visible to hidden or vice versa. The isVisible argument reflects the state of the polyline after completion of this visibility state. (Since 2.87)
*/
GPolyline.visibilitychanged = 0;
/**
* (EVENT):
* This event is fired when the polyline is clicked. Note that this event also subsequently triggers a "click" event on the map, where the polyline is passed as the overlay argument within that event. (Since 2.88)
*/
GPolyline.click = 0;
/**
* Instances of this class are used in GPolyline's constructor. There is no constructor for this class. Instead, this class is instantiated as a javascript object literal.
*/
function GPolylineOptions() {
/**
* (Property):
* Toggles whether or not the polyline is clickable. The default value for this option is true, i.e. if the option is not specified, the polyline will be clickable. (Since 2.91)
*/
this.clickable = 0;
/**
* (Property):
* Render each edge of the polyline as a geodesic (a segment of a "great circle"). A geodesic is the shortest path between two points along the surface of the Earth. (Since 2.84)
*/
this.geodesic = 0;
}
/**
* This is very similar to a GPolyline, except that you can additionally specify a fill color and opacity.
* @constructor   
*/
function GPolygon(points, strokeColor_optional, strokeWeight_optional, strokeOpacity_optional, fillColor_optional, fillOpacity_optional, opts_optional) {
}
/**
* (Function):
* Creates a polygon (consisting of a number of polylines) from encoded strings of aggregated points and levels. polylines contains an associative array of constituent polylines, encoded in the same format as described in the GPolyline.fromEncoded documentation. fill specifies whether to fill in the polygon with a certain color. opacity and outline specifies whether to stroke the polygon with the polyline's color, weight and opacity. In case multiple values are specified in polylines, the first polyline's values are taken. (Since 2.78)
* @type GPolygon  
* @method   
*/
GPolygon.prototype.fromEncoded = function (polylines, fill_optional, color_optional, opacity_optional, outline_optional){};
/**
* (Function):
* Returns the number of vertices in the polygon. (Since 2.69)
* @type Number  
* @method   
*/
GPolygon.prototype.getVertexCount = function (){};
/**
* (Function):
* Returns the vertex with the given index in the polygon. (Since 2.69)
* @type GLatLng  
* @method   
*/
GPolygon.prototype.getVertex = function (index){};
/**
* (Function):
* Returns the area (in square meters) of the polygon, assuming a spherical Earth. (Since 2.85)
* @type Number  
* @method   
*/
GPolygon.prototype.getArea = function (){};
/**
* (Function):
* Returns the bounds for this polygon. (Since 2.85)
* @type GLatLngBounds  
* @method   
*/
GPolygon.prototype.getBounds = function (){};
/**
* (Function):
* Hides the polygon if it is both currently visible and GPolygon.supportsHide returns true. Note that this function triggers the event GPolygon.visibilitychanged in case the polygon is currently visible. (Since 2.87)
* @type none  
* @method   
*/
GPolygon.prototype.hide = function (){};
/**
* (Function):
* Returns true if the polygon is currently hidden. Otherwise returns false. (Since 2.87)
* @type Boolean  
* @method   
*/
GPolygon.prototype.isHidden = function (){};
/**
* (Function):
* Shows the polygon if it is currently hidden. Note that this function triggers the event GPolygon.visibilitychanged in case the polygon is currently hidden. (Since 2.87)
* @type none  
* @method   
*/
GPolygon.prototype.show = function (){};
/**
* (Function):
* Returns true if GPolygon.hide() is supported in the current environment for GPolygon objects. Otherwise returns false. (Since 2.87)
* @type Boolean  
* @method   
*/
GPolygon.prototype.supportsHide = function (){};
/**
* (EVENT):
* This event is fired when the polygon is removed from the map, using GMap2.removeOverlay() or GMap2.clearOverlays().
*/
GPolygon.remove = 0;
/**
* (EVENT):
* This event is fired when the visibility state of the polygon toggles from visible to hidden or vice versa. The isVisible argument reflects the state of the polygon after completion of this visibility state. (Since 2.87)
*/
GPolygon.visibilitychanged = 0;
/**
* (EVENT):
* This event is fired when the polygon is clicked. Note that this event also subsequently triggers a "click" event on the map, where the polygon is passed as the overlay argument within that event. (Since 2.88>)
*/
GPolygon.click = 0;
/**
* Instances of this class are used in GPolygon's constructor. There is no constructor for this class. Instead, this class is instantiated as a javascript object literal.
*/
function GPolygonOptions() {
/**
* (Property):
* Toggles whether or not the polygon is clickable. The default value for this option is true, i.e. if the option is not specified, the polygon will be clickable. (Since 2.91)
*/
this.clickable = 0;
}
/**
* This object creates a rectangular image overlay on the map, whose boundaries are defined by GLatLngBounds.
* @constructor   
*/
function GGroundOverlay(imageUrl, bounds) {
}
/**
* (Function):
* Hides the ground overlay if it is currently visible. Note that this function triggers the event GGroundOverlay.visibilitychanged in case the ground overlay is currently visible. (Since 2.87)
* @type none  
* @method   
*/
GGroundOverlay.prototype.hide = function (){};
/**
* (Function):
* Returns true if the ground overlay is currently hidden. Otherwise returns false. (Since 2.87)
* @type Boolean  
* @method   
*/
GGroundOverlay.prototype.isHidden = function (){};
/**
* (Function):
* Shows the ground overlay if it is currently hidden. Note that this function triggers the event GGroundOverlay.visibilitychanged in case the ground overlay is currently hidden. (Since 2.87)
* @type none  
* @method   
*/
GGroundOverlay.prototype.show = function (){};
/**
* (Function):
* Always returns true. (Since 2.87)
* @type Boolean  
* @method   
*/
GGroundOverlay.prototype.supportsHide = function (){};
/**
* (EVENT):
* This event is fired when the visibility state of the ground overlay toggles from visible to hidden or vice versa. The isVisible argument reflects the state of the ground overlay after completion of this visibility state. (Since 2.77)
*/
GGroundOverlay.visibilitychanged = 0;
/**
* An icon specifies the images used to display a GMarker on the map. For browser compatibility reasons, specifying an icon is actually quite complex. Note that you can use the default Maps icon G_DEFAULT_ICON if you don't want to specify your own.
* @constructor   
*/
function GIcon(copy_optional, image_optional) {
/**
* (Property):
* The foreground image URL of the icon.
*/
this.image = 0;
/**
* (Property):
* The shadow image URL of the icon.
*/
this.shadow = 0;
/**
* (Property):
* The pixel size of the foreground image of the icon.
*/
this.iconSize = 0;
/**
* (Property):
* The pixel size of the shadow image.
*/
this.shadowSize = 0;
/**
* (Property):
* The pixel coordinate relative to the top left corner of the icon image at which this icon is anchored to the map.
*/
this.iconAnchor = 0;
/**
* (Property):
* The pixel coordinate relative to the top left corner of the icon image at which the info window is anchored to this icon.
*/
this.infoWindowAnchor = 0;
/**
* (Property):
* The URL of the foreground icon image used for printed maps. It must be the same size as the main icon image given by image.
*/
this.printImage = 0;
/**
* (Property):
* The URL of the foreground icon image used for printed maps in Firefox/Mozilla. It must be the same size as the main icon image given by image.
*/
this.mozPrintImage = 0;
/**
* (Property):
* The URL of the shadow image used for printed maps. It should be a GIF image since most browsers cannot print PNG images.
*/
this.printShadow = 0;
/**
* (Property):
* The URL of a virtually transparent version of the foreground icon image used to capture click events in Internet Explorer. This image should be a 24-bit PNG version of the main icon image with 1% opacity, but the same shape and size as the main icon.
*/
this.transparent = 0;
/**
* (Property):
* An array of integers representing the x/y coordinates of the image map we should use to specify the clickable part of the icon image in browsers other than Internet Explorer.
*/
this.imageMap = 0;
/**
* (Property):
* Specifies the distance in pixels in which a marker will visually "rise" vertically when dragged. (Since 2.79)
*/
this.maxHeight = 0;
/**
* (Property):
* Specifies the cross image URL when an icon is dragged. (Since 2.79)
*/
this.dragCrossImage = 0;
/**
* (Property):
* Specifies the pixel size of the cross image when an icon is dragged. (Since 2.79)
*/
this.dragCrossSize = 0;
/**
* (Property):
* Specifies the pixel coordinate offsets (relative to the iconAnchor) of the cross image when an icon is dragged. (Since 2.79)
*/
this.dragCrossAnchor = 0;
}
/**
* Notice that while the two parameters of a GPoint are accessible as properties x and y, it is better to never modify them, but to create a new object with different paramaters instead.
* @constructor   
*/
function GPoint(x, y) {
}
/**
* (Function):
* Returns true iff the other point has equal coordinates.
* @type Boolean  
* @method   
*/
GPoint.prototype.equals = function (other){};
/**
* (Function):
* Returns a string that contains the x and y coordinates, in this order, separated by a comma.
* @type String  
* @method   
*/
GPoint.prototype.toString = function (){};
/**
* Notice that while the two parameters of a GSize are accessible as properties width and height, it is better to never modify them, but to create a new object with different paramaters instead.
* @constructor   
*/
function GSize(width, height) {
/**
* (Property):
* The width parameter.
*/
this.width = 0;
/**
* (Property):
* The height parameter.
*/
this.height = 0;
}
/**
* (Function):
* Returns true iff the other size has exactly equal components.
* @type Boolean  
* @method   
*/
GSize.prototype.equals = function (other){};
/**
* (Function):
* Returns a string that contains the wdith and height parameter, in this order, separated by a comma.
* @type String  
* @method   
*/
GSize.prototype.toString = function (){};
/**
* GBounds is a rectangular area of the map in pixel coordinates. Notice that a rectangle in geographical coordinates is represented by a GLatLngBounds object.
* @constructor   
*/
function GBounds(points) {
/**
* (Property):
* The x coordinate of the left edge of the rectangle.
*/
this.minX = 0;
/**
* (Property):
* The y coordinate of the top edge of the rectangle.
*/
this.minY = 0;
/**
* (Property):
* The x coordinate of the right edge of the rectangle.
*/
this.maxX = 0;
/**
* (Property):
* The y coordinate of the bottom edge of the rectangle.
*/
this.maxY = 0;
}
/**
* (Function):
* Returns a string that contains the coordinates of the upper left and the lower right corner points of the box, in this order, separated by comma, surrounded by parentheses.
* @type String  
* @method   
*/
GBounds.prototype.toString = function (){};
/**
* (Function):
* Returns the pixel coordinates of the center of the rectangular area. (Since 2.88)
* @type GPoint  
* @method   
*/
GBounds.prototype.mid = function (){};
/**
* (Function):
* Returns the pixel coordinates of the upper left corner of the rectangular area.
* @type GPoint  
* @method   
*/
GBounds.prototype.min = function (){};
/**
* (Function):
* Returns the pixel coordinates of the lower right corner of the rectangular area.
* @type GPoint  
* @method   
*/
GBounds.prototype.max = function (){};
/**
* (Function):
* Returns true if the passed rectangular area is entirely contained in this rectangular area.
* @type Boolean  
* @method   
*/
GBounds.prototype.containsBounds = function (other){};
/**
* (Function):
* Returns true if the rectangular area (inclusively) contains the pixel coordinates. (Since 2.88)
* @type Boolean  
* @method   
*/
GBounds.prototype.containsPoint = function (point){};
/**
* (Function):
* Enlarges this box so that the point is also contained in this box.
* @type none  
* @method   
*/
GBounds.prototype.extend = function (point){};
/**
* Notice also that you cannot modify the coordinates of a GLatLng. If you want to compute another point, you have to create a new one.
* @constructor   
*/
function GLatLng(lat, lng, unbounded_optional) {
}
/**
* (Function):
* Returns the latitude coordinate in degrees, as a number between -90 and +90. If the unbounded flag was set in the constructor, this coordinate can be outside this interval.
* @type Number  
* @method   
*/
GLatLng.prototype.lat = function (){};
/**
* (Function):
* Returns the longitude coordinate in degrees, as a number between -180 and +180. If the unbounded flag was set in the constructor, this coordinate can be outside this interval.
* @type Number  
* @method   
*/
GLatLng.prototype.lng = function (){};
/**
* (Function):
* Returns the latitude coordinate in radians, as a number between -PI/2 and +PI/2. If the unbounded flag was set in the constructor, this coordinate can be outside this interval.
* @type Number  
* @method   
*/
GLatLng.prototype.latRadians = function (){};
/**
* (Function):
* Returns the longitude coordinate in radians, as a number between -PI and +PI. If the unbounded flag was set in the constructor, this coordinate can be outside this interval.
* @type Number  
* @method   
*/
GLatLng.prototype.lngRadians = function (){};
/**
* (Function):
* Returns true iff the other size has equal components, within certain roundoff margins.
* @type Boolean  
* @method   
*/
GLatLng.prototype.equals = function (other){};
/**
* (Function):
* Returns the distance, in meters, from this point to the given point. The earth is approximated as a sphere, hence the distance could be off by as much as 0.3%. See below. (Deprecated since 2.89)
* @type Number  
* @method   
*/
GLatLng.prototype.distanceFrom = function (other){};
/**
* (Function):
* Returns the distance, in meters, from this point to the given point. By default, this distance is calculated given the default equatorial earth radius of 6378137 meters. The earth is approximated as a sphere, hence the distance could be off as much as 0.3%, especially in the polar extremes. You may also pass an optional radius argument to calculate distances between GLatLng coordinates on spheres of a different radius than earth. (Since 2.89)
* @type Number  
* @method   
*/
GLatLng.prototype.distanceFrom = function (other, radius_optional){};
/**
* (Function):
* This version of the method has been deprecated in favor of the revised version (shown below) which passes an optional precision parameter. (Deprecated since 2.78)
* @type String  
* @method   
*/
GLatLng.prototype.toUrlValue = function (){};
/**
* (Function):
* Returns a string that represents this point in a format suitable for use as a URL parameter value, separated by a comma, without whitespace. By default, precision is returned to 6 digits, which corresponds to a resolution to 4 inches/ 11 centimeters. An optional precision parameter allows you to specify a lower precision to reduce server load. Note: prior to 2.78, this precision parameter was not available. (Since 2.78)
* @type String  
* @method   
*/
GLatLng.prototype.toUrlValue = function (precision_optional){};
/**
* A GLatLngBounds instance represents a rectangle in geographical coordinates, including one that crosses the 180 degrees meridian.
* NOTE: This class has more constructors!
* @constructor   
*/
function GLatLngBounds(sw_optional, ne_optional) {
}
/**
* (Function):
* Returns true iff all parameters in this rectangle are equal to the parameters of the other, within a certain roundoff margin.
* @type Boolean  
* @method   
*/
GLatLngBounds.prototype.equals = function (other){};
/**
* (Function):
* Returns true iff the geographical coordinates of the point lie within this rectangle. (Deprecated since 2.88)
* @type Boolean  
* @method   
*/
GLatLngBounds.prototype.contains = function (latlng){};
/**
* (Function):
* Returns true iff the geographical coordinates of the point lie within this rectangle. (Since 2.88)
* @type Boolean  
* @method   
*/
GLatLngBounds.prototype.containsLatLng = function (latlng){};
/**
* (Function):
* What the name says.
* @type Boolean  
* @method   
*/
GLatLngBounds.prototype.intersects = function (other){};
/**
* (Function):
* What the name says.
* @type Boolean  
* @method   
*/
GLatLngBounds.prototype.containsBounds = function (other){};
/**
* (Function):
* Enlarges this rectangle such that it contains the given point. In longitude direction, it is enlarged in the smaller of the two possible ways. If both are equal, it is enlarged at the eastern boundary.
* @type none  
* @method   
*/
GLatLngBounds.prototype.extend = function (latlng){};
/**
* (Function):
* Returns the point at the south-west corner of the rectangle.
* @type GLatLng  
* @method   
*/
GLatLngBounds.prototype.getSouthWest = function (){};
/**
* (Function):
* Returns the point at the north-east corner of the rectangle.
* @type GLatLng  
* @method   
*/
GLatLngBounds.prototype.getNorthEast = function (){};
/**
* (Function):
* Returns a GLatLng whose cordinates represent the size of this rectangle.
* @type GLatLng  
* @method   
*/
GLatLngBounds.prototype.toSpan = function (){};
/**
* (Function):
* Returns true if this rectangle extends from the south pole to the north pole.
* @type Boolean  
* @method   
*/
GLatLngBounds.prototype.isFullLat = function (){};
/**
* (Function):
* Returns true if this rectangle extends fully around the earth in the longitude direction.
* @type Boolean  
* @method   
*/
GLatLngBounds.prototype.isFullLng = function (){};
/**
* (Function):
* Returns true if this rectangle is empty.
* @type Boolean  
* @method   
*/
GLatLngBounds.prototype.isEmpty = function (){};
/**
* (Function):
* Returns the point at the center of the rectangle. (Since 2.52)
* @type GLatLng  
* @method   
*/
GLatLngBounds.prototype.getCenter = function (){};
/**
* (Function):
* Returns to the map if the control should be printable.
* @type Boolean  
* @method   
*/
GLatLngBounds.prototype.printable = function (){};
/**
* (Function):
* Returns to the map if the control contains selectable text.
* @type Boolean  
* @method   
*/
GLatLngBounds.prototype.selectable = function (){};
/**
* (Function):
* Will be called by the map so the control can initialize itself. The control will use the method GMap2.getContainer() to get hold of the DOM element that contains the map, and add itself to it. It returns the added element.
* @type Node  
* @method   
*/
GLatLngBounds.prototype.initialize = function (map){};
/**
* (Function):
* Returns to the map the position in the map view at which the control appears by default. This will be overridden by the second argument to GMap2.addControl().
* @type GControlPosition  
* @method   
*/
GLatLngBounds.prototype.getDefaultPosition = function (){};
/**
* This class described the position of a control in the map view. It consists of a corner relative to where the control is postioned, and an offset that determines this position. It can be passed as optional argument position to the method GMap2.addControl(), and it is returned from method GControl.getDefaultPosition().
* @constructor   
*/
function GControlPosition(anchor, offset) {
}
/**
* These implementations of interface GControl are available.
* NOTE: This class has more constructors!
* @constructor   
*/
function GControl() {
}
/**
* This class can also be subclassed. Constructor arguments can be omitted if instantiated as a prototype. A subclass constructor must invoke the GMapType constructor using call().
* @constructor   
*/
function GMapType(layers, projection, name, opts_optional) {
}
/**
* (Function):
* Returns to the map the zoom level at which the map section defined by center and span fits into the map view of the given size in pixels.
* @type Number  
* @method   
*/
GMapType.prototype.getSpanZoomLevel = function (center, span, viewSize){};
/**
* (Function):
* Returns to the map the zoom level at which the map section defined by bounds fits into the map view of the given size in pixels.
* @type none  
* @method   
*/
GMapType.prototype.getBoundsZoomLevel = function (bounds, viewSize){};
/**
* (Function):
* Returns to the map the name of the map type to be used as the button label in the GMapTypeControl.
* @type String  
* @method   
*/
GMapType.prototype.getName = function (short_optional){};
/**
* (Function):
* Returns to the map the projection of this map type.
* @type GProjection  
* @method   
*/
GMapType.prototype.getProjection = function (){};
/**
* (Function):
* Returns to the map the map tile size in pixels of this map type. The tiles are assumed to be quadratic. All tile layers have the same tile size.
* @type Number  
* @method   
*/
GMapType.prototype.getTileSize = function (){};
/**
* (Function):
* Returns to the map the array of tile layers.
* @type Array of GTileLayer  
* @method   
*/
GMapType.prototype.getTileLayers = function (){};
/**
* (Function):
* Returns to the map the lowest zoom level at which this map type is defined.
* @type Number  
* @method   
*/
GMapType.prototype.getMinimumResolution = function (){};
/**
* (Function):
* Returns to the map the highest zoom level at which this map type is defined.
* @type Number  
* @method   
*/
GMapType.prototype.getMaximumResolution = function (){};
/**
* (Function):
* Returns to the map the color that is best used for text that is overlaid on the map. Used for the color of the text of the copyright message displayed by the copyroght control.
* @type String  
* @method   
*/
GMapType.prototype.getTextColor = function (){};
/**
* (Function):
* Returns to the map the color that is best used for a hyperlink that is overlaid on the map. Used for the color of the link to the terms of use displayed by the copyroght control.
* @type String  
* @method   
*/
GMapType.prototype.getLinkColor = function (){};
/**
* (Function):
* Returns to the map the error message that is displayed in areas or on zoom level where this map type doesn't have map tiles.
* @type String  
* @method   
*/
GMapType.prototype.getErrorMessage = function (){};
/**
* (Function):
* Returns to the map the copyright messages appropriate for the region described by bounds at the given zoom level. This is used by the copyright message on the map.
* @type Array of String  
* @method   
*/
GMapType.prototype.getCopyrights = function (bounds, zoom){};
/**
* (Function):
* Returns to the map a value that is used as a URL paramater value to identify this map type in permalinks to the current map view. This is currently only used by the maps application.
* @type String  
* @method   
*/
GMapType.prototype.getUrlArg = function (){};
/**
* (Function):
* Returns to the map the alternative text of this map type. (Since 2.86)
* @type String  
* @method   
*/
GMapType.prototype.getAlt = function (){};
/**
* (EVENT):
* This event is fired when a new copyright is added to the copyright collection of one of the tile layers contained in this map type.
*/
GMapType.newcopyright = 0;
/**
* Instances of this class are used as the opts? argument to the GMapType constructor. There is no constructor for this class. Instead, this class is instantiated as a javascript object literal.
* @constructor   
*/
function GMapTypeOptions(copyrights, minResolution, maxResolution, options_optional) {
/**
* (Property):
* Sets the short name of the map type that is returned from GMapType.getName(true). Default is the same as the name.
*/
this.shortName = 0;
/**
* (Property):
* Sets the url argument of the map type that is returned from GMapType.getUrlArg(). Default is the empty string.
*/
this.urlArg = 0;
/**
* (Property):
* Sets the maximum zoom level of this map type, returned by GMapType.getMaximumResolution(). Default is the maximum of all tile layers.
*/
this.maxResolution = 0;
/**
* (Property):
* Sets the minimum zoom level of this map type, returned by GMapType.getMinimumResolution(). Default is the minimum of all tile layers.
*/
this.minResolution = 0;
/**
* (Property):
* Set the tile size returned by GMapType.getTileSize(). Default is 256.
*/
this.tileSize = 0;
/**
* (Property):
* Sets the text color returned by GMapType.getTextColor(). Default is "black".
*/
this.textColor = 0;
/**
* (Property):
* Sets the text color returned by GMapType.getLinkColor(). Default is "#7777cc".
*/
this.linkColor = 0;
/**
* (Property):
* Sets the error message returned by GMapType.getErrorMessage(). Default is the empty string.
*/
this.errorMessage = 0;
/**
* (Property):
* Sets the alternative text to the map type returned by GMapType.getAlt(). Default is the empty string. (Since 2.64)
*/
this.alt = 0;
/**
* (Property):
* Sets the radius of the map type given the passed Number measured in meters. The default value is 6378137, the equatorial radius of the Earth in meters. (Since 2.89)
*/
this.radius = 0;
}
/**
* (Function):
* Returns to the map type the lowest zoom level of this tile layer.
* @type Number  
* @method   
*/
GMapTypeOptions.prototype.minResolution = function (){};
/**
* (Function):
* Returns to the map type the highest zoom level of this tile layer.
* @type Number  
* @method   
*/
GMapTypeOptions.prototype.maxResolution = function (){};
/**
* (Function):
* Abstract. Returns to the map the URL of the map tile with the tile indices given by the x and y properties of the GPoint, at the given zoom level.
* @type String  
* @method   
*/
GMapTypeOptions.prototype.getTileUrl = function (tile, zoom){};
/**
* (Function):
* Abstract. Returns to the map whether the tiles are in PNG image format and hence can be transparent. Otherwise GIF is assumed.
* @type Boolean  
* @method   
*/
GMapTypeOptions.prototype.isPng = function (){};
/**
* (Function):
* Abstract. Returns to the map the opacity with which to display this tile layer. 1.0 is opaque, 0.0 is transparent.
* @type Number  
* @method   
*/
GMapTypeOptions.prototype.getOpacity = function (){};
/**
* (Function):
* Abstract. Returns to the map the copyright messages for this tile layer that are pertinent for the given map region at the given zoom level. This is used to generate the copyright message of the GMapType to which this tile layer belongs. (Since 2.89)
* @type String  
* @method   
*/
GMapTypeOptions.prototype.getCopyright = function (bounds, zoom){};
/**
* (EVENT):
* This event is fired when a new copyright is added to the copyright collection of this tile layer.
*/
GMapTypeOptions.newcopyright = 0;
/**
* This class represents optional arguments to the GTileLayer interface. It has no constructor, but is instantiated as an object literal.
*/
function GTileLayerOptions() {
/**
* (Property):
* Sets the tile opacity from 0.0 (invisible) to 1.0 (opaque). The default is 1.0.
*/
this.opacity = 0;
/**
* (Property):
* Indicates whether or not tiles are in the PNG format.
*/
this.isPng = 0;
/**
* (Property):
* Specifies a template for the tile URLs that will be expanded for each tile request to refer to a unique tile based on an existing tile coordinate system. Placing a template in the GTileLayer constructor allows you to dynamically retrieve tiles using this coordinate system, similar to the way Google Maps retrieves tiles. Templates should be of the form:http://host/tile?x={X}&y={Y}&z={Z}.png where X and Y refer to latitudinal and longitudinal tile coordinates, and Z refers to the zoom level. E.g. http://host/tile?x=3&y=27&z=5.png.
*/
this.tileUrlTemplate = 0;
/**
* (Property):
* The cursor to display while dragging the map. (Since 2.59)
*/
this.draggingCursor = 0;
}
/**
* A GTileLayerOverlay augments the map with a GTileLayer. It implements the GOverlay interface and thus is added to the map using the GMap2.addOverlay() method. The GTileLayer is presented on top of the existing map imagery - to replace the imagery instead, put the GTileLayer inside a custom GMapType.
* @constructor   
*/
function GTileLayerOverlay(tileLayer) {
}
/**
* (Function):
* Hides this overlay so it is not visible, but maintains its position in the stack of overlays. (Since 2.71)
* @type none  
* @method   
*/
GTileLayerOverlay.prototype.hide = function (){};
/**
* (Function):
* Returns true if the tile layer overlay is hidden. Otherwise returns false. (Since 2.87)
* @type none  
* @method   
*/
GTileLayerOverlay.prototype.isHidden = function (){};
/**
* (Function):
* Shows a previously hidden TileLayerOverlay. (Since 2.71)
* @type none  
* @method   
*/
GTileLayerOverlay.prototype.show = function (){};
/**
* (Function):
* Always returns true. (Since 2.87)
* @type none  
* @method   
*/
GTileLayerOverlay.prototype.supportsHide = function (){};
/**
* (Function):
* Returns the tile layer used by this overlay. (Since 2.83)
* @type none  
* @method   
*/
GTileLayerOverlay.prototype.getTileLayer = function (){};
/**
* You use this class to manage copyright messages displayed on maps of custom map type. If you don't implement custom map types, then you don't need to use this class. A copyright collection contains information about which copyright to display for which region on the map at which zoom level. This is very important for map types that display heterogenous data such as the satellite map type.
* @constructor   
*/
function GCopyrightCollection(prefix_optional) {
}
/**
* (Function):
* Adds a copyright information object to the collection.
* @type none  
* @method   
*/
GCopyrightCollection.prototype.addCopyright = function (copyright){};
/**
* (Function):
* Returns all copyright strings that are pertinent for the given map region at the given zoom level. Example: [ "Google", "Keyhole" ]
* @type Array of String  
* @method   
*/
GCopyrightCollection.prototype.getCopyrights = function (bounds, zoom){};
/**
* (Function):
* Returns the prefix and all relevant copyright strings that are pertinent for the given map region at the given zoom level. Example: "Imagery (C) 2006 Google, Keyhole"
* @type String  
* @method   
*/
GCopyrightCollection.prototype.getCopyrightNotice = function (bounds, zoom){};
/**
* (EVENT):
* This event is fired when a new copyright was added to this copyright collection.
*/
GCopyrightCollection.newcopyright = 0;
/**
* A copyright object contains information about which copyright message applies to a region of the map given by a rectangle, at a given zoom level. You need this object only if you implement custom map types or tile layers.
* @constructor   
*/
function GCopyright(id, bounds, minZoom, text) {
/**
* (Property):
* A unique identifier for this copyright information.
*/
this.id = 0;
/**
* (Property):
* The lowest zoom level at which this information applies.
*/
this.minZoom = 0;
/**
* (Property):
* The region to which this information applies.
*/
this.bounds = 0;
/**
* (Property):
* The text of the copyright message.
*/
this.text = 0;
}
/**
* (Function):
* Returns the map coordinates in pixels for the point at the given geographical coordinates, and the given zoom level.
* @type GPoint  
* @method   
*/
GCopyright.prototype.fromLatLngToPixel = function (latlng, zoom){};
/**
* (Function):
* Returns the geographical coordinates for the point at the given map coordinates in pixels, and the given zoom level. Flag unbounded causes the geographical longitude coordinate not to wrap when beyond the -180 or 180 degrees meridian.
* @type none  
* @method   
*/
GCopyright.prototype.fromPixelToLatLng = function (pixel, zoom, unbounded_optional){};
/**
* (Function):
* Returns to the map if the tile index is in a valid range for the map type. Otherwise the map will display an empty tile. It also may modify the tile index to point to another instance of the same tile in the case that the map contains more than one copy of the earth, and hence the same tile at different tile coordinates.
* @type none  
* @method   
*/
GCopyright.prototype.tileCheckRange = function (tile, zoom, tilesize){};
/**
* (Function):
* Returns to the map the periodicity in x-direction, i.e. the number of pixels after which the map repeats itself because it wrapped once round the earth. By default, returns Infinity, i.e. the map will not repeat itself. This is used by the map to compute the placement of overlays on map views that contain more than one copy of the earth (this usually happens only at low zoom levels). (Since 2.46)
* @type none  
* @method   
*/
GCopyright.prototype.getWrapWidth = function (zoom){};
/**
* This implementation of the GProjection interface for the mercator projection is used by all predefined map types.
* @constructor   
*/
function GMercatorProjection(zoomlevels) {
}
/**
* (Function):
* See GProjection.
* @type GPoint  
* @method   
*/
GMercatorProjection.prototype.fromLatLngToPixel = function (latlng, zoom){};
/**
* (Function):
* See GProjection.
* @type GLatLng  
* @method   
*/
GMercatorProjection.prototype.fromPixelToLatLng = function (pixel, zoom, unbounded_optional){};
/**
* (Function):
* See GProjection.
* @type none  
* @method   
*/
GMercatorProjection.prototype.tileCheckRange = function (tile, zoom, tilesize){};
/**
* (Function):
* See GProjection. Mercator projection is periodic in longitude direction, therefore this returns the width of the map of the entire Earth in pixels at the given zoom level. (Since 2.46)
* @type none  
* @method   
*/
GMercatorProjection.prototype.getWrapWidth = function (zoom){};
/**
* This namespace contains functions that you use to register event handlers, both for custom events and for DOM events, and to fire custom events. All the events defined by this API are custom events that are internally fired by GEvent.trigger().
*/
function GEvent() {
}
/**
* (Function):
* Registers an event handler for a custom event on the source object. Returns a handle that can be used to eventually deregister the handler. The event handler will be called with this set to the source object.
* @type GEventListener  
* @method   
*/
GEvent.addListener = function (source, event, handler){};
/**
* (Function):
* Registers an event handler for a DOM event on the source object. The source object must be a DOM Node. Returns a handle that can be used to eventually deregister the handler. The event handler will be called with this set to the source object. This function uses the DOM methods for the current browser to register the event handler.
* @type GEventListener  
* @method   
*/
GEvent.addDomListener = function (source, event, handler){};
/**
* (Function):
* Removes a handler that was installed using addListener() or addDomListener().
* @type none  
* @method   
*/
GEvent.removeListener = function (handle){};
/**
* (Function):
* Removes all handlers on the given object for the given event that were installed using addListener() or addDomListener().
* @type none  
* @method   
*/
GEvent.clearListeners = function (source, event){};
/**
* (Function):
* Removes all handlers on the given object for all events that were installed using addListener() or addDomListener().
* @type none  
* @method   
*/
GEvent.clearInstanceListeners = function (source){};
/**
* (Function):
* Registers an invocation of the method on the given object as the event handler for a custom event on the source object. Returns a handle that can be used to eventually deregister the handler.
* @type GEventListener  
* @method   
*/
GEvent.bind = function (source, event, object, method){};
/**
* (Function):
* Registers an invocation of the method on the given object as the event handler for a custom event on the source object. Returns a handle that can be used to eventually deregister the handler.
* @type GEventListener  
* @method   
*/
GEvent.bindDom = function (source, event, object, method){};
/**
* (Function):
* Returns a closure that calls method on object.
* @type Function  
* @method   
*/
GEvent.callback = function (object, method){};
/**
* This class is opaque. It has no methods and no constructor. Its instances are returned from GEvent.addListener() or GEvent.addDomListener() and are eventually passed back to GEvent.removeListener().
*/
function GEventListener() {
}
/**
* This namespace provides a factory method to create XmlHttpRequest instances in a browser independent way.
*/
function GXmlHttp() {
}
/**
* (Function):
* Factory to create a new instance of XmlHttpRequest.
* @type GXmlHttp  
* @method   
*/
GXmlHttp.create = function (){};
/**
* This namespace provides static methods to handle XML documents and document fragments.
*/
function GXml() {
}
/**
* (Function):
* Parses the given string as XML text and returns a DOM representation. If the browser doesn't support XML parsing natively, this returns the DOM node of an empty DIV element.
* @type Node  
* @method   
*/
GXml.parse = function (xmltext){};
/**
* (Function):
* Returns the text value (i.e., only the plain text content) of the XML document fragment given in DOM representation.
* @type String  
* @method   
*/
GXml.value = function (xmlnode){};
/**
* This class provides methods to apply XSLT to XML in a browser-independent way.
*/
function GXslt() {
}
/**
* (Function):
* Creates a GXslt instance from the XSLT stylesheet given as DOM representation.
* @type GXslt  
* @method   
*/
GXslt.create = function (xsltnode){};
/**
* (Function):
* Uses the XSLT stylesheet given in the constructor of this GXslt instance to transform the XML document given as DOM representation in xmlnode. Appends the resulting HTML document fragment to the given htmlnode. This only works if the browser natively supports XSL transformations, in which case it will return true. Otherwise, this function will do nothing and return false.
* @type Boolean  
* @method   
*/
GXslt.transformToHtml = function (xmlnode, htmlnode){};
/**
* This namespace contains some static methods that help you to debug web applications. When you use one of the write*() methods for the first time, a floating window opens on the page and displays the written messages.
*/
function GLog() {
}
/**
* (Function):
* Writes the message as plain text into the log window. HTML markup characters will be escaped so that they are visible as characters.
* @type none  
* @method   
*/
GLog.write = function (message, color_optional){};
/**
* (Function):
* Writes a link to the given URL into the log window.
* @type none  
* @method   
*/
GLog.writeUrl = function (url){};
/**
* (Function):
* Writes text as HTML in the log window.
* @type none  
* @method   
*/
GLog.writeHtml = function (html){};
/**
* This class makes a DOM element draggable. The static members for changing the drag cursors affect all subsequently created draggable objects, such as the map, zoom control slider, and overview map rectangles. The per-instance members affect only their particular instance. For example, before creating the map, you can call GDraggableObject.setDraggableCursor('default') and GDraggableObject.setDraggingCursor('move') to get the pre-API 2.56 style. Alternatively, the Map constructor can take options to set its DraggableObject's cursor style. See the W3C CSS specification for allowable cursor values.
* @constructor   
*/
function GDraggableObject(src, opts_optional) {
}
/**
* (Function):
* Sets the draggable cursor for subsequently created draggable objects. (Since 2.59)
* @type none  
* @method   
*/
GDraggableObject.setDraggableCursor = function (cursor){};
/**
* (Function):
* Sets the dragging cursor for subsequently created draggable objects. (Since 2.59)
* @type none  
* @method   
*/
GDraggableObject.setDraggingCursor = function (cursor){};
/**
* (Function):
* Returns the current dragging cursor in use by the map. If not set through the static setDraggingCursor() method, this returns the default cursor used by the map for its controls and markers. (Since 2.87)
* @type String  
* @method   
*/
GDraggableObject.getDraggingCursor = function (){};
/**
* (Function):
* Returns the current draggable cursor in use by the map. If not set through the static setDraggableCursor() method, this returns the default cursor used by the map for its controls and markers. (Since 2.87)
* @type String  
* @method   
*/
GDraggableObject.getDraggableCursor = function (){};
/**
* (Function):
* Sets the cursor when the mouse is over this draggable object. (Since 2.59)
* @type none  
* @method   
*/
GDraggableObject.prototype.setDraggableCursor = function (cursor){};
/**
* (Function):
* Sets the cursor when the mouse is held down, dragging this draggable object. (Since 2.59)
* @type none  
* @method   
*/
GDraggableObject.prototype.setDraggingCursor = function (cursor){};
/**
* (Function):
* Moves the GDraggableObject to a given absolute position. The position is in pixel coordinates relative to the parent node. This method uses the DOM coordinate system, i.e. the X coordinate increases to the left, and the Y coordinate increases downwards. (Since 2.89)
* @type none  
* @method   
*/
GDraggableObject.prototype.moveTo = function (point){};
/**
* (Function):
* Moves the GDraggableObject by a given size offset. This method uses the DOM coordinate system, i.e. width increases to the left, and height increases downwards. (Since 2.89)
* @type none  
* @method   
*/
GDraggableObject.prototype.moveBy = function (size){};
/**
* (EVENT):
* This event is fired in response to the DOM mousedown event. Handling this event will prevent the default action of the DOM mousedown event. (Since 2.84)
*/
GDraggableObject.mousedown = 0;
/**
* (EVENT):
* This event is fired in response to the DOM mouseup event on a draggable object. Handling this event will prevent the default action of the DOM mouseup event. (Since 2.84)
*/
GDraggableObject.mouseup = 0;
/**
* (EVENT):
* This event is fired when a draggable object is clicked. (Since 2.84)
*/
GDraggableObject.click = 0;
/**
* (EVENT):
* This event is fired at the start of a draggable object's drag event (when the user initiates a drag by clicking and dragging a draggable object). (Since 2.84)
*/
GDraggableObject.dragstart = 0;
/**
* (EVENT):
* This event is repeatedly fired while the user drags the draggable object. (Since 2.84)
*/
GDraggableObject.drag = 0;
/**
* (EVENT):
* This event is fired at the end of a draggable object's drag event (when the user releases a drag). (Since 2.84)
*/
GDraggableObject.dragend = 0;
/**
* This class represents optional arguments to the GDraggableObject constructor. It has no constructor, but is instantiated as an object literal.
*/
function GDraggableObjectOptions() {
/**
* (Property):
* The left starting position of the object. (Since 2.59)
*/
this.left = 0;
/**
* (Property):
* The top starting position of the object. (Since 2.59)
*/
this.top = 0;
/**
* (Property):
* A DOM element that will act as a bounding box for the draggable object (Since 2.59)
*/
this.container = 0;
/**
* (Property):
* The cursor to show on mousover. (Since 2.59)
*/
this.draggableCursor = 0;
/**
* (Property):
* The cursor to show while dragging. (Since 2.59)
*/
this.draggingCursor = 0;
/**
* (Property):
* By default, the event dragstart is fired when the DOM mousedown event is fired on a draggable DOM element. Similarly, the event dragend is fired when the DOM mouseup event is fired. Setting this value to true delays drag events until the mouse has moved from the location where the mousedown or mouseup was generated. The default value for this property is false. (Since 2.84)
*/
this.delayDrag = 0;
}
/**
* This class is used to communicate directly with Google servers to obtain geocodes for user specified addresses. In addition, a geocoder maintains its own cache of addresses, which allows repeated queries to be answered without a round trip to the server.
* @constructor   
*/
function GClientGeocoder(cache_optional) {
}
/**
* (Function):
* Sends a request to Google servers to geocode the specified address. If the address was successfully located, the user-specified callback function is invoked with a GLatLng point. Otherwise, the callback function is given a null point. In case of ambiguous addresses, only the point for the best match is passed to the callback function. (Since 2.55)
* @type none  
* @method   
*/
GClientGeocoder.prototype.getLatLng = function (address, callback){};
/**
* (Function):
* Sends a request to Google servers to geocode the specified address. A reply that contains status code, and if successful, one or more Placemark objects, is passed to the user-specified callback function. Unlike the GClientGeocoder.getLatLng method, the callback function may determine the reasons for failure by examining the code value of the Status field. (Since 2.55)
* @type none  
* @method   
*/
GClientGeocoder.prototype.getLocations = function (address, callback){};
/**
* (Function):
* Returns currently used geocode cache, or null, if no client-side caching is performed. (Since 2.55)
* @type GGeocodeCache  
* @method   
*/
GClientGeocoder.prototype.getCache = function (){};
/**
* (Function):
* Sets a new client-side caching. If this method is invoked with cache set to null, client-side caching is disabled. Setting a new cache discards previously stored addresses. (Since 2.55)
* @type none  
* @method   
*/
GClientGeocoder.prototype.setCache = function (cache){};
/**
* (Function):
* Sets the geocoder to magnify geocoding results within or near the given viewport. The viewport is expressed as a GLatLngBounds rectangle. Note that setting a viewport does not restrict results to that bounding box, though it will elevate them in priority. (Since 2.82)
* @type none  
* @method   
*/
GClientGeocoder.prototype.setViewport = function (bounds){};
/**
* (Function):
* Returns the viewport for magnifying geocoding results within that geocoder. The viewport is expressed as a GLatLngBounds rectangle. (Since 2.82)
* @type GLatLngBounds  
* @method   
*/
GClientGeocoder.prototype.getViewport = function (){};
/**
* (Function):
* Sets the geocoder to bias search results as if they were sent from the domain specified by the given ISO 3166-1 (alpha-2) country code. Geocoding is only supported for those countries in which Google Maps itself supports geocoding. Most ISO 3166-1 codes are identical to top-level Internet domain, with some notable exceptions. For example, "ES" refers to the top-level Internet domain for Spain: .es while "GB" refers to the top-level Internet domain for Great Britain: .co.uk. Note that the default domain is the domain from which you initially load the Maps API. Country codes are case insensitive. (Since 2.82)
* @type none  
* @method   
*/
GClientGeocoder.prototype.setBaseCountryCode = function (countryCode){};
/**
* (Function):
* Returns the current country code in use by the given geocoder. (If no country code is in effect, this method returns null.) (Since 2.82)
* @type String  
* @method   
*/
GClientGeocoder.prototype.getBaseCountryCode = function (){};
/**
* (Function):
* Resets the geocoder. In particular this method calls the GGeocodeCache.reset() method on the client-side cache, if one is used by this geocoder. (Since 2.55)
* @type none  
* @method   
*/
GClientGeocoder.prototype.reset = function (){};
/**
* This class maintains a map from addresses to known locations. While this class is fully functional, it is intended as a base class from which more sophisticated caches are derived.
* @constructor   
*/
function GGeocodeCache() {
}
/**
* (Function):
* Returns the reply which was stored under the given address. If no reply was ever stored for the given address, this method returns null. (Since 2.55)
* @type Object  
* @method   
*/
GGeocodeCache.prototype.get = function (address){};
/**
* (Function):
* Returns whether or not the given reply should be cached. By default very rudimentary checks are performed on the reply object. In particular, this class makes sure that the object is not null and that it has the name field . This method may be overridden by extending classes to provide more precise conditions on the reply object. (Since 2.55)
* @type Boolean  
* @method   
*/
GGeocodeCache.prototype.isCachable = function (reply){};
/**
* (Function):
* Stores the given reply under the given address. This method calls the GGeocodeCache.isCachable method to verify that the reply may be cached. If it gets a go-ahead, it caches the reply under the address normalized with the help of the GGeocodeCache.toCanoninical method. (Since 2.55)
* @type none  
* @method   
*/
GGeocodeCache.prototype.put = function (address, reply){};
/**
* (Function):
* Purges all replies from the cache. After this method returns, the cache is empty. (Since 2.55)
* @type none  
* @method   
*/
GGeocodeCache.prototype.reset = function (){};
/**
* (Function):
* Returns what is considered a canonical version of the address. It converts the address parameter to lower case, replaces comas with spaces and replaces multiple spaces with one space. (Since 2.55)
* @type String  
* @method   
*/
GGeocodeCache.prototype.toCanonical = function (address){};
/**
* This class refines the basic GGeocodeCache class by placing stricter conditions on cached replies. It only caches replies which are very unlikely to change within a short period of time.
* @constructor   
*/
function GFactualGeocodeCache() {
}
/**
* (Function):
* Overrides the default implementation of this method to perform a more thorough check of the status code. Only a reply with Status.code set to G_GEO_SUCCESS, or known to be invalid, is considered cachable. Replies that timed out or resulted in a generic server error are not cached. (Since 2.55)
* @type Boolean  
* @method   
*/
GFactualGeocodeCache.prototype.isCachable = function (reply){};
/**
* This class is used to manage visibility of hundreds of markers on a map, based on the map's current viewport and zoom level.
* @constructor   
*/
function GMarkerManager(map, opts_optional) {
}
/**
* (Function):
* Adds a batch of markers to this marker manager. The markers are not added to the map, until the refresh() method is called. Once placed on a map, the markers are shown if they fall within the map's current viewport and the map's zoom level is greater than or equal to the specified minZoom. If the maxZoom was given, the markers are automatically removed if the map's zoom is greater than the one specified. (Since 2.67)
* @type none  
* @method   
*/
GMarkerManager.prototype.addMarkers = function (markers, minZoom, maxZoom_optional){};
/**
* (Function):
* Adds a single marker to a collection of markers controlled by this manager. If the marker's location falls within the map's current viewport and the map's zoom level is within the specified zoom level rage, the marker is immediately added to the map. Similar to the addMarkers method, the minZoom and the optional maxZoom parameters specify the range of zoom levels at which the marker is shown. (Since 2.67)
* @type none  
* @method   
*/
GMarkerManager.prototype.addMarker = function (marker, minZoom, maxZoom_optional){};
/**
* (Function):
* Forces the manager to update markers shown on the map. This method must be called if markers were added using the addMarkers method. (Since 2.67)
* @type none  
* @method   
*/
GMarkerManager.prototype.refresh = function (){};
/**
* (Function):
* Returns the total number of markers potentially visible at the given zoom level. This may include markers at lower zoom levels. (Since 2.67)
* @type Number  
* @method   
*/
GMarkerManager.prototype.getMarkerCount = function (zoom){};
/**
* This class represents optional arguments to the GMarkerManager constructor. It has no constructor, but is instantiated as an object literal.
*/
function GMarkerManagerOptions() {
/**
* (Property):
* Specifies, in pixels, the extra padding outside the map's current viewport monitored by a manager. Markers that fall within this padding are added to the map, even if they are not fully visible. (Since 2.67)
*/
this.borderPadding = 0;
/**
* (Property):
* Sets the maximum zoom level monitored by a marker manager. If not given, the manager assumes the maximum map zoom level. This value is also used when markers are added to the manager without the optional maxZoom parameter. (Since 2.67)
*/
this.maxZoom = 0;
/**
* (Property):
* Indicates whether or not a marker manager should track markers' movements. If you wish to move managed markers using the setPoint method, this option should be set to true. The default value is false. (Since 2.67)
*/
this.trackMarkers = 0;
}
/**
* A GGeoXml object add geographic content to the map from an XML file (such as a KML file) that is hosted on a publicly accessible web server. It implements the GOverlay interface and thus is added to the map using the GMap2.addOverlay() method.
* @constructor   
*/
function GGeoXml(urlOfXml, callback_optional) {
}
/**
* (Function):
* GGeoXml objects may create a tile overlay for optimization purposes in certain cases. This method returns this tile layer overlay (if available). Note that the tile overlay may be null if not needed, or if the GGeoXml file has not yet finished loading. (Since 2.84)
* @type GTileLayerOverlay  
* @method   
*/
GGeoXml.prototype.getTileLayerOverlay = function (){};
/**
* (Function):
* Returns the center of the default viewport as a lat/lng. This function should only be called after the file has been loaded. (Since 2.84)
* @type GLatLng  
* @method   
*/
GGeoXml.prototype.getDefaultCenter = function (){};
/**
* (Function):
* Returns the span of the default viewport as a lat/lng. This function should only be called after the file has been loaded. (Since 2.84)
* @type GLatLng  
* @method   
*/
GGeoXml.prototype.getDefaultSpan = function (){};
/**
* (Function):
* Returns the bounding box of the default viewport. This function should only be called after the file has been loaded. (Since 2.84)
* @type GLatLngBounds  
* @method   
*/
GGeoXml.prototype.getDefaultBounds = function (){};
/**
* (Function):
* Sets the map's viewport to the default viewport of the XML file. (Since 2.84)
* @type none  
* @method   
*/
GGeoXml.prototype.gotoDefaultViewport = function (map){};
/**
* (Function):
* Checks to see if the XML file has finished loading, in which case it returns true. If the XML file has not finished loading, this method returns false. (Since 2.84)
* @type Boolean  
* @method   
*/
GGeoXml.prototype.hasLoaded = function (){};
/**
* (Function):
* Hides the child overlays created by the GGeoXml object if the overlay is both currently visible and the overlay's supportsHide() method returns true. Note that this method will trigger the respective visibilitychanged event for each child overlay that fires that event (e.g. GMarker.visibilitychanged, GGroundOverlay.visibilitychanged, etc.). If no overlays are currently visible that return supportsHide() as true, this method has no effect. (Since 2.87)
* @type none  
* @method   
*/
GGeoXml.prototype.hide = function (){};
/**
* (Function):
* Returns true if the GGeoXml object is currently hidden, as changed by the GGeoXml.hide() method. Otherwise returns false. (Since 2.87)
* @type Boolean  
* @method   
*/
GGeoXml.prototype.isHidden = function (){};
/**
* (Function):
* Checks to see if the XML file has loaded correctly, in which case it returns true. If the XML file has not loaded correctly, this method returns false. If the XML file has not finished loading, this method's return value is undefined. (Since 2.84)
* @type Boolean  
* @method   
*/
GGeoXml.prototype.loadedCorrectly = function (){};
/**
* (Function):
* Shows the child overlays created by the GGeoXml object, if they are currently hidden. Note that this method will trigger the respective visibilitychanged event for each child overlay that fires that event (e.g. GMarker.visibilitychanged, GGroundOverlay.visibilitychanged). (Since 2.87)
* @type none  
* @method   
*/
GGeoXml.prototype.show = function (){};
/**
* (Function):
* Always returns true. (Since 2.87)
* @type Boolean  
* @method   
*/
GGeoXml.prototype.supportsHide = function (){};
/**
* GDownloadUrl(url, onload, postBody?, postContentType?) 	none 	Retrieves the resource from the given URL and calls the onload function with the text of the document as first argument, and the HTTP response status code as the second. If the request times out, the onload function may be called instead with null as the first argument and -1 as the second. This function defaults to sending an HTTP GET request. To send an HTTP POST request instead, pass data within the optional postBody argument. If the data being sent is not of type "application/x-www-form-urlencoded," pass the content type as a string in the postContentType argument. This method is subject to cross-site scripting restrictions. Note that this method uses the underlying XmlHttpRequest implementation of the browser.
*/
function GDownloadUrl() {
}
/**
* GBrowserIsCompatible() 	Boolean 	Returns true if the current browser supports the maps API library.
*/
function GBrowserIsCompatible() {
}
/**
* GUnload() 	none 	Dismantles all registered event handlers in order to prevent memory leaks. Should be called as a handler for the unload event.
*/
function GUnload() {
}
/**
* This class is used to obtain driving directions results and display them on a map and/or a text panel.
* @constructor   
*/
function GDirections(map_optional, panel_optional) {
}
/**
* (Function):
* This method issues a new directions query. The query parameter is a string containing any valid directions query, e.g. "from: Seattle to: San Francisco" or "from: Toronto to: Ottawa to: New York". By default, if a map was specified during construction of the GDirections object, the query will request a polyline result. Similarly, if a text panel was specified, the query will request detailed textual results. Otherwise, the result will contain only summary information about routes found. In order to override this behavior (e.g. to request polyline information even when no map was attached to this object), callers can use the queryOpts optional parameter. See the documentation for GDirectionsOptions for details. When directions results are received, this object clears old results, replacing them with new ones and updating the map and/or panel with new results. Directions results consist of multiple routes (objects of type GRoute), one per consecutive pair of waypoints/addresses specified in the query. In turn, routes consist of multiple steps (objects of type GStep). If a previous load() request has not completed when a new call to load() is invoked, the previous request is cancelled. Thus, you can use a single GDirections object to issue directions requests serially, but to generate multiple requests in parallel, you must use multiple GDirections objects. (Since 2.81)
* @type none  
* @method   
*/
GDirections.prototype.load = function (query, queryOpts_optional){};
/**
* (Function):
* Issues a new directions query using an array of waypoints as input instead of a single query string. Each entry in the array is a string representing an input address or a lat,lng point. See GDirections.load() for more details on the behavior of this method. (Since 2.81)
* @type none  
* @method   
*/
GDirections.prototype.loadFromWaypoints = function (waypoints, queryOpts_optional){};
/**
* (Function):
* Clears any existing directions results, removes overlays from the map and panel, and cancels any pending load() requests. (Since 2.81)
* @type none  
* @method   
*/
GDirections.prototype.clear = function (){};
/**
* (Function):
* Returns the status of the directions request. The returned object has the following form: {   code: 200   request: "directions" } The status code can take any of the values defined in GGeoStatusCode. (Since 2.81)
* @type Object  
* @method   
*/
GDirections.prototype.getStatus = function (){};
/**
* (Function):
* This method is used to get the bounding box for the result of this directions query. Returns a GLatLngBounds object or null if no successful result is available. (Since 2.81)
* @type GLatLngBounds  
* @method   
*/
GDirections.prototype.getBounds = function (){};
/**
* (Function):
* Returns the number of routes available in the result. For a successful query, this should be the total number of input waypoints minus 1. When no results are available (either because no query was issued or because the previous query was unsuccessful), this method returns 0. (Since 2.81)
* @type Number  
* @method   
*/
GDirections.prototype.getNumRoutes = function (){};
/**
* (Function):
* Return the GRoute object for the ith route in the response. (Since 2.81)
* @type GRoute  
* @method   
*/
GDirections.prototype.getRoute = function (i){};
/**
* (Function):
* Returns the number of geocoded entries available in the result. For a successful query, this should be equal to the total number of input waypoints. When no results are available (either because no query was issued or because the previous query was unsuccessful), this method returns 0. (Since 2.81)
* @type Number  
* @method   
*/
GDirections.prototype.getNumGeocodes = function (){};
/**
* (Function):
* Return the geocoded result for the ith waypoint. The structure of this object is identical to that of a single placemark in a response from the GClientGeocoder object. (Since 2.81)
* @type Object  
* @method   
*/
GDirections.prototype.getGeocode = function (i){};
/**
* (Function):
* Returns an HTML string containing the copyright information for this result. (Since 2.81)
* @type String  
* @method   
*/
GDirections.prototype.getCopyrightsHtml = function (){};
/**
* (Function):
* Returns an HTML snippet containing a summary of the distance and time for this entire directions request. Note that this summary is the only information returned to a GDirections object constructed without an associated map or DIV element. (Since 2.81)
* @type String  
* @method   
*/
GDirections.prototype.getSummaryHtml = function (){};
/**
* (Function):
* Returns an object literal representing the total distance of the directions request (across all routes). The object contains two fields: a number called "meters" indicating the numeric value of the distance (in meters), and a string called "html" containing a localized string representation of the distance in the units that are predominant in the starting country of this set of directions. (Since 2.81)
* @type Object  
* @method   
*/
GDirections.prototype.getDistance = function (){};
/**
* (Function):
* Returns an object literal representing the total time of the directions request (across all routes). The object contains two fields: a number called "seconds" indicating the numeric value of the time (in seconds), and a string called "html" containing a localized string representation of the time. (Since 2.81)
* @type Object  
* @method   
*/
GDirections.prototype.getDuration = function (){};
/**
* (Function):
* Returns the GPolyline object associated with the entire directions response. Note that there is a single polyline that represents all the routes in the response. This object will be defined only after the directions results have been loaded (i.e. the "load" event has been triggered). (Since 2.81)
* @type GPolyline  
* @method   
*/
GDirections.prototype.getPolyline = function (){};
/**
* (Function):
* Return the marker associated with the ith geocode. This method will return a non-null value only after the directions results have been loaded (i.e. the "load" event has been triggered). (Since 2.81)
* @type GMarker  
* @method   
*/
GDirections.prototype.getMarker = function (i){};
/**
* This class represents optional arguments to the GDirections.load() and GDirections.loadFromWaypoints() methods. It has no constructor, but is instantiated as an object literal.
*/
function GDirectionsOptions() {
/**
* (Property):
* The locale to use for the directions result. For example, "en_US", "fr", "fr_CA", etc.
*/
this.locale = 0;
/**
* (Property):
* By default, the GDirections.load*() methods fetch polyline data only if a map is attached to the GDirections object. This field can be used to override this behavior and retrieve polyline data even when a map is not attached to the Directions object.
*/
this.getPolyline = 0;
/**
* (Property):
* By default, the GDirections.load*() methods fetch steps data only if a panel is attached to the GDirections object. This field can be used to override this behavior and retrieve steps data even when a panel is not attached to the Directions object.
*/
this.getSteps = 0;
/**
* (Property):
* By default, when a Directions object has a map, the map is centered and zoomed to the bounding box of the the directions result. When this option is set to true, the viewport is left alone for this request (unless it was never set in the first place).
*/
this.preserveViewport = 0;
}
/**
* Objects of this class are created by the GDirections object to store information about a single route in a directions result. This class does not have a public constructor. Clients should not directly create objects of this class.
*/
function GRoute() {
}
/**
* (Function):
* Returns the number of steps in this route. (Since 2.81)
* @type Number  
* @method   
*/
GRoute.prototype.getNumSteps = function (){};
/**
* (Function):
* Return the GStep object for the ith step in this route. (Since 2.81)
* @type GStep  
* @method   
*/
GRoute.prototype.getStep = function (i){};
/**
* (Function):
* Return the geocode result for the starting point of this route. The structure of this object is identical to that of a single placemark in a response from the GClientGeocoder object. (Since 2.83)
* @type Object  
* @method   
*/
GRoute.prototype.getStartGeocode = function (){};
/**
* (Function):
* Return the geocode result for the ending point of this route. The structure of this object is identical to that of a single placemark in a response from the GClientGeocoder object. (Since 2.83)
* @type Object  
* @method   
*/
GRoute.prototype.getEndGeocode = function (){};
/**
* (Function):
* Returns a GLatLng object for the last point along the polyline for this route. Note that this point may be different from the lat,lng in GRoute.getEndGeocode() because getEndLatLng() always returns a point that is snapped to the road network. There is no corresponding getStartLatLng() method because that is identical to calling GRoute.getStep(0).getLatLng(). (Since 2.81)
* @type GLatLng  
* @method   
*/
GRoute.prototype.getEndLatLng = function (){};
/**
* (Function):
* Returns an HTML snippet containing a summary of the distance and time for this route. (Since 2.81)
* @type String  
* @method   
*/
GRoute.prototype.getSummaryHtml = function (){};
/**
* (Function):
* Returns an object literal representing the total distance of this route. See GDirections.getDistance() for the structure of this object. (Since 2.81)
* @type Object  
* @method   
*/
GRoute.prototype.getDistance = function (){};
/**
* (Function):
* Returns an object literal representing the total time of this route. See GDirections.getDuration() for the structure of this object. (Since 2.81)
* @type Object  
* @method   
*/
GRoute.prototype.getDuration = function (){};
/**
* Objects of this class are created by the GDirections object to store information about a single step within a route in a directions result. This class does not have a public constructor. Clients should not directly create objects of this class.
*/
function GStep() {
}
/**
* (Function):
* Returns a GLatLng object for the first point along the polyline for this step. (Since 2.81)
* @type GLatLng  
* @method   
*/
GStep.prototype.getLatLng = function (){};
/**
* (Function):
* Returns the index of the first point along the polyline for this step. (Since 2.81)
* @type Number  
* @method   
*/
GStep.prototype.getPolylineIndex = function (){};
/**
* (Function):
* Return an HTML string containing the description of this step. (Since 2.81)
* @type String  
* @method   
*/
GStep.prototype.getDescriptionHtml = function (){};
/**
* (Function):
* Returns an object literal representing the total distance of this step. See GDirections.getDistance() for the structure of this object. (Since 2.81)
* @type Object  
* @method   
*/
GStep.prototype.getDistance = function (){};
/**
* (Function):
* Returns an object literal representing the total time of this step. See GDirections.getDuration() for the structure of this object. (Since 2.81)
* @type Object  
* @method   
*/
GStep.prototype.getDuration = function (){};
/**
* A GTrafficOverlay object adds an overlay to the map that displays road traffic information. It implements the GOverlay interface and thus is added to the map using the GMap2.addOverlay() method and removed using the GMap2.removeOverlay() method. The GTrafficOverlay will only display traffic information for supported cities.
* @constructor   
*/
function GTrafficOverlay() {
}
/**
* (Function):
* Hides the traffic overlay. (Since 2.81)
* @type none  
* @method   
*/
GTrafficOverlay.prototype.hide = function (){};
/**
* (Function):
* Shows the traffic overlay. (Since 2.81)
* @type none  
* @method   
*/
GTrafficOverlay.prototype.show = function (){};
/**
* (EVENT):
* This event is fired when the state of traffic data changes within the current viewport. This event may be fired either when moving the map between areas with and without traffic data or when the addition of a GTrafficOverlay to the map results in traffic data appearing within the current viewport. The hasTrafficInView parameter will be true if the viewport contains traffic data and false otherwise. The event works regardless of whether the layer is hidden or shown. (Since 2.85)
*/
GTrafficOverlay.changed = 0;
/**
* A GAdsManager object fetches AdSense ads and displays them on a specified map. Ads show up as GMarkers and can be clicked on to bring up the ad within the marker's info window. The GAdsManager selects AdSense ads based on the current viewport and the surrounding textual content on the page. Note that when adding a GAdsManager to a map, you must also specifically enable it using the enable() method.
* @constructor   
*/
function GAdsManager(map, publisherId, adsManagerOptions_optional) {
}
/**
* (Function):
* Enables fetching of ads. Ads are not fetched by default. (Since 2.85)
* @type none  
* @method   
*/
GAdsManager.prototype.enable = function (){};
/**
* (Function):
* Disables fetching of ads. (Since 2.85)
* @type none  
* @method   
*/
GAdsManager.prototype.disable = function (){};
/**
* This class stores optional arguments to the GAdsManager constructor. It has no constructor, but is instantiated as an object literal.
*/
function GAdsManagerOptions() {
/**
* (Property):
* The maximum number of ads to show on the map at any time. The default value is 3. (Since 2.85)
*/
this.maxAdsOnMap = 0;
/**
* (Property):
* The AdSense channel used for fetching ads. Channels are an optional feature that AdSense publishers can use to track ad revenue from multiple sources. (Since 2.85)
*/
this.channel = 0;
/**
* (Property):
* The minimum zoom level at which to show ads. The default value is 6. (Since 2.85)
*/
this.minZoomLevel = 0;
}
