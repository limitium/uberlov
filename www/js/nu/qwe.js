var mapia_trail = [];
function trail_mapia(){
    if (geo_map) {
        var center = geo_map.getCenter();
        lat = Math.round(center.y * 1000000);
        lng = Math.round(center.x * 1000000);
        mapia_trail.push({
            0: lat,
            1: lng
        });
    }
    setTimeout("trail_mapia()", 2000);
}

setTimeout("trail_mapia()", 2000);
function chat_ask_orders(){
    chatAsRQtm = 0;
    inner_mapia_trail = '';
    if (geo_map) {
        var center = geo_map.getCenter();
        lat = Math.round(center.y * 1000000);
        lng = Math.round(center.x * 1000000);
        for (i in mapia_trail)
            if (i >= 0) {
                dx = mapia_trail[i][0] - lat;
                dy = mapia_trail[i][1] - lng;
                if (dx && dy)
                    inner_mapia_trail += (dx) + "," + (dy) + ";";
                else
                    inner_mapia_trail += ";";
            }
        goloc = "lat=" + lat + "&lng=" + lng + "&z=" + geo_map.getZoom() + '&a=' + registered_move;
        registered_move = 0;
    }
    else
        goloc = '';
    new Ajax.Request(DRR + "loader/chat/ask_what_to_do.php?live=" + aCurrentUser.LiveID + '&' + goloc, {
        method: 'post',
        parameters: {
            trail: inner_mapia_trail
        },
        encoding: "windows-1251",
        asynchronous: true,
        evalscripts: true,
        onComplete: function(transport){
        }
    });
    mapia_trail = [];
}

function chat_await_orders(tm){
    if (chatAsRQtm)
        clearTimeout(chatAsRQtm);
    chatAsRQtm = setTimeout("chat_ask_orders()", tm);
}

chat_await_orders(5000);
function cancelChatRQ(){
    chat_allow_load = 0;
    if (chatAsRQtm)
        clearTimeout(chatAsRQtm);
}

function open_self_blog_selector(){
    var showW = 0;
    if (!dark_panel_on)
        showW = 1;
    dark_on();
    if (showW)
        $("darkdotinner").innerHTML = '<img src=imgs/icon/load.gif>';
    new Ajax.Updater("darkdotinner", DRR + "editors/self_blogs.php", {
        encoding: "windows-1251",
        asynchronous: true,
        evalScripts: true
    });
}

function follow_blog_link(id){
    if (id)
        window.location.href = DRR + "blog/go/blog/" + id + "/index.html";
}

function chat_open_close_local(id){
    o = $("chat_open_close_local");
    b = $("obj_chat_hidden");
    b.style.left = getRealOffsetX(o) + 'px';
    b.style.top = (getRealOffsetY(o) + 15) + 'px';
    if (!b.style.display) {
        o.innerHTML = "Открыть Чат локации";
        b.hide();
        chat_disable_chat(id);
    }
    else {
        o.innerHTML = "Закрыть Чат локации";
        b.show();
        chat_enable_chat(id);
    }
}

function chat_disable_chat(id){
    chat_disabled_stated[id] = 1;
}

function chat_enable_chat(id){
    if (chat_disabled_stated[id]) {
        chat_disabled_stated[id] = 0;
        chat_update(id);
    }
}

var called_iplocation_form = 0;
function spawn_iplocation_form(called, caller){
    called_iplocation_form = caller;
    if (called == -1) {
        val = confirm("Забудем и не будем плакать?");
    }
    else
        if (called == 5) {
            var showW = 0;
            if (!dark_panel_on)
                showW = 1;
            dark_on();
            if (showW)
                $("darkdotinner").innerHTML = '<img src=imgs/icon/load.gif><BR>...Сейчас загрузим и фсе узнаем...';
            new Ajax.Updater("darkdotinner", DRR + "editors/self_location.php", {
                encoding: "windows-1251",
                asynchronous: true,
                evalScripts: true
            });
        }
        else
            if (called) {
                new Ajax.Request(DRR + "editors/self_location.php?set&newloc=" + called + "&forIP=" + caller.name.substr(8), {
                    encoding: "windows-1251",
                    asynchronous: true,
                    evalScripts: true
                });
            }
}

function set_iplocation_form(value, Name){
    for (i in ldsNames)
        if (i >= 0 && ldsNames[i]) {
            $(ldsNames[i]).options[$(ldsNames[i]).options.length] = new Option(Name, value);
        }
    if (called_iplocation_form) {
        called_iplocation_form.selectedIndex = called_iplocation_form.options.length - 1;
    }
}

var loaderevents = [];
var jaxSRCH_timer = 0;
var jaxSRCH_laststr = '';
var nav_blocks = {};
var nav_block_index = {};
var nav_objects = {};
var consar = new Array(-85051128, -83979259, -82676284, -81093213, -79171334, -76840816, -74019543, -70612614, -66513260, -61606396, -55776579, -48922499, -40979898, -31952162, -21943045, -11178401, 0, 11178401, 21943045, 31952162, 40979898, 48922499, 55776579, 61606396, 66513260, 70612614, 74019543, 76840816, 79171334, 81093213, 82676284, 83979259, 85051128);
var Mapia_icons = new Array();
Mapia_icons[11] = 1;
Mapia_icons[12] = 1;
Mapia_icons[13] = 1;
Mapia_icons[30] = 1;
Mapia_icons[31] = 1;
Mapia_icons[32] = 1;
Mapia_icons[34] = 1;
Mapia_icons[35] = 1;
Mapia_icons[40] = 1;
Mapia_icons[41] = 1;
Mapia_icons[50] = 1;
Mapia_icons[52] = 1;
Mapia_icons[55] = 1;
Mapia_icons[60] = 1;
Mapia_icons[62] = 1;
Mapia_icons[64] = 1;
Mapia_icons[65] = 1;
Mapia_icons[70] = 1;
Mapia_icons[71] = 1;
Mapia_icons[72] = 1;
Mapia_icons[73] = 1;
Mapia_icons[80] = 1;
Mapia_icons[81] = 1;
Mapia_icons[82] = 1;
Mapia_icons[53] = 1;
Mapia_icons[61] = 1;
Mapia_icons[67] = 1;
Mapia_icons[33] = 1;
Mapia_icons[51] = 1;
var RU_BOX1 = new Array(19511719, 40979898, 180000000, 78206563);
var gzipext = '.xy';
var nav_show_thread = 0;
var nav_new_objects = {};
var RENDER_CNT_PER_TICK = 20;
var geo_map_zoom_on_start = 0;
var tim_ZoomOK = 0;
var dLog = 0 && console;
var allow_geo_requests = 1;
var current_visible_count = 0;
var NavFixObject = 0;
var gmevent = 0;
var MIN_ZOOM_ALLOW = 6;
var m_nav_auto_went = 1;
var map_history_lat = 0;
var map_history_lng = 0;
var map_history_zoom = 0;
var last_gmap_lat = 0;
var last_gmap_lng = 0;
var last_gmap_zoom = 0;
var last_gmap_v = 0;
var skip_next_jax = 0;
var gmap_pos_set = 0;
var zoomerror = 0;
var nav_gcnt = 0;
var registered_move = 1;
var A_ID_DS = new Array()
var A_ID_DS_counter = 1;
var MAX_VISIBLE_OBJECTS = 30;
function window_innerHeight(){
    if (typeof(window.innerWidth) == 'number')
        return window.innerHeight;
    else
        if (document.documentElement && (document.documentElement.clientWidth || document.documentElement.clientHeight))
            return document.documentElement.clientHeight;
}

function la(a){
    return typeof a != "undefined"
};
function GLatLng(a, b, c){
    this.Qp = a;
    this.Kb = b;
    this.x = b;
    this.y = a
}

GLatLng.prototype.toString = function(){
    return "(" + this.lat() + ", " + this.lng() + ")"
};
GLatLng.prototype.equals = function(a){
    if (!a)
        return false;
    return kd(this.lat(), a.lat()) && kd(this.lng(), a.lng())
};
GLatLng.prototype.copy = function(){
    return new J(this.lat(), this.lng())
};
function ki(a, b){
    var c = Math.pow(10, b);
    return Math.round(a * c) / c
}

GLatLng.prototype.ib = function(a){
    var b = la(a) ? a : 6;
    return ki(this.lat(), b) + "," + ki(this.lng(), b)
};
GLatLng.prototype.lat = function(){
    return this.Qp
};
GLatLng.prototype.lng = function(){
    return this.Kb
};
GLatLng.prototype.rB = function(a){
    this.Qp = a;
    this.y = a
};
GLatLng.prototype.sB = function(a){
    this.Kb = a;
    this.x = a
};
GLatLng.prototype.jd = function(){
    return id(this.Qp)
};
GLatLng.prototype.kd = function(){
    return id(this.Kb)
};
GLatLng.prototype.Ld = function(a, b){
    return this.Fm(a) * (b || 6378137)
};
GLatLng.prototype.Fm = function(a){
    var b = this.jd(), c = a.jd(), d = b - c, e = this.kd() - a.kd();
    return 2 * yc(Ic(Gc(Hc(d / 2), 2) + Cc(b) * Cc(c) * Gc(Hc(e / 2), 2)))
};
GLatLng.fromUrlValue = function(a){
    var b = a.split(",");
    return new J(parseFloat(b[0]), parseFloat(b[1]))
};
GLatLng.fromRadians = function(a, b, c){
    return new J(jd(a), jd(b), c)
};
function GLatLngBounds(a, b){
    this.a = a;
    this.b = b
}

GLatLngBounds.prototype.getSouthWest = function(){
    return this.a;
}
GLatLngBounds.prototype.getNorthEast = function(){
    return this.b;
}
function LivePageClose(LID){
    Ajax.Request(DRR + "alive.php?closed=" + LID, {
        asynchronous: true,
        evalScripts: false
    });
    alert("one be closed");
}

function ID_DS(){
    A_ID_DS[A_ID_DS_counter] = 0;
    return A_ID_DS_counter++;
}

function DS(key){
    current_data_center = A_ID_DS[key];
    ret = DataCenters[current_data_center];
    current_data_center++;
    if (current_data_center >= DataCenters.length) {
        current_data_center = 0;
    }
    A_ID_DS[key] = current_data_center;
    return "http://" + ret;
}

var findDS = ID_DS();
function fixPNG(element){
    if (/MSIE (5\.5|6).+Win/.test(navigator.userAgent)) {
        var src;
        if (element.tagName == 'IMG') {
        }
        else {
            src = element.currentStyle.backgroundImage.match(/url\("(.+\.png)"\)/i);
            if (src) {
                src = src[1];
                element.runtimeStyle.backgroundImage = "none";
                if (src)
                    element.runtimeStyle.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(src='" + src + "',sizingMethod='scale')";
            }
        }
    }
}

var MapObjectDS = ID_DS();
var map_fetch = ID_DS();
function timeGetTime(){
    var current0 = new Date();
    return current0.getTime();
}

var jax_resultsL = [];
var jax_KAddoCode = 0;
var jax_GAddoCode = 0;
var jax_KAddo = 0;
var jax_GAddo = 0;
function jax_on_cmp(lines){
    jax_KAddoCode = 1;
    jax_KAddo = lines;
    jax_mix_and_out();
}

function jax_mix_and_out(){
    Element.setStyle($("search_w"), "background-color:#FFFFFF");
    Element.setStyle($("jax_help"), "background-color:#FFFFFF");
    $("jax_help").style.zIndex = 100000;
    resultOK = 0;
    resultL = [];
    if (jax_GAddo) {
        for (i in jax_GAddo.Placemark)
            if (i >= 0) {
                place = jax_GAddo.Placemark[i];
                point = new GLatLng(place.Point.coordinates[1], place.Point.coordinates[0]);
                paddr = place.address;
                if (place.AddressDetails.Country.CountryNameCode != 'RU')
                    continue;
                {
                    for (i = 0; i < 10; i++)
                        if (paddr.charAt(i) == ',')
                            break;
                    if (i == 10)
                        continue;
                    paddr = paddr.substr(i + 1);
                }
                SA = '';
                var AAN = '';
                LOCA = '';
                if (typeof(place.AddressDetails.Country.AdministrativeArea) != 'undefined') {
                    AAN = place.AddressDetails.Country.AdministrativeArea.AdministrativeAreaName;
                    if (typeof(place.AddressDetails.Country.AdministrativeArea.SubAdministrativeArea) != 'undefined') {
                        SA = place.AddressDetails.Country.AdministrativeArea.SubAdministrativeArea.SubAdministrativeAreaName;
                        LOCA = place.AddressDetails.Country.AdministrativeArea.SubAdministrativeArea.LocalityName;
                    }
                    else {
                        SA = '';
                        if (typeof(place.AddressDetails.Country.AdministrativeArea.Locality) != 'undefined')
                            LOCA = place.AddressDetails.Country.AdministrativeArea.Locality.LocalityName;
                    }
                }
                else {
                    AAN = "";
                }
                if (AAN && LOCA && place.AddressDetails.Accuracy >= 6)
                    resultL.push(['+posmarker' + i, Math.round(point.lat() * 1000000), Math.round(point.lng() * 1000000), paddr, 0, '', '', 'imgs/icon/blank.gif', 1, 1, 0, +":" +
                    SA +
                    ":" +
                    LOCA]);
                resultOK = 1;
            }
    }
    if (jax_KAddo) {
        lines = jax_KAddo;
        for (i in lines)
            if (i >= 0)
                if (lines[i]) {
                    info = lines[i].split("|");
                    if (info == '!MANY') {
                        resultL.push(['', 0, 0, 'Слишком много вариатов', 0, '', '']);
                        resultL.push(['', 0, 0, '...Поменьше область поиска...', 0, '', '']);
                    }
                    else {
                        info[1] = parseInt(info[1]);
                        info[2] = parseInt(info[2]);
                        info[8] = parseInt(info[8]);
                        info[9] = parseInt(info[9]);
                        info[10] = parseInt(info[10]);
                        resultL.push(info);
                        resultOK = 1;
                    }
                }
    }
    var jax_help = $("jax_help");
    jax_help.style.display = 'none';
    jax_help.innerHTML = '';
    jax_resultsL = resultL;
    if (resultL.length == 0)
        $("jax_help").hide();
    if (resultOK)
        $("locstr_load").hide();
    else
        $("locstr_load").src = DRR + 'imgs/ajax-loader-fail.gif';
    if (resultL.length > 0) {
        jax_help.style.position = 'absolute';
        h = resultL.length * 25 + 20;
        if (h > 200)
            h = 200;
        inner = "<table bgcolor=#FFFFFF width=100% cellpadding=0 cellspacing=1>";
        {
            for (i in resultL)
                if (i >= 0) {
                    lstr = resultL[i][3] + " : " + resultL[i][5];
                    instr = lstr;
                    if (lstr.length > 60) {
                        dof = lstr.length - 60;
                        lstr = resultL[i][3] + " : " + "...";
                        lstr += resultL[i][5].substring(dof);
                    }
                    if (resultL[i][7])
                        img = "<img src='" + DRR + resultL[i][7] + "' width=16 height=16>";
                    else
                        img = '';
                    inner += "<tr><td width=18px>" + img + "</td><td>";
                    if (i == 0)
                        inner += '<a href="javascript:void()" onclick="$(\'jax_help\').hide()" style="color:red;float:right"><B>X</B></a>';
                    inner += "<a href='javascript:jax_clicked(" + i + ")' title='" + instr + "' class=nav_loc>" + lstr + "</a></td></tr>\n";
                }
        }
        if (0) {
            console.log(e);
        }
        inner += "</table>";
        jax_help.innerHTML = inner;
        jax_help.style.height = "10px";
        jax_help.style.height = h + "px";
        jax_help.style.width = "400px";
        jax_help.scrollTop = "0px";
        jax_help.style.left = getRealOffsetX($("search_w")) + 'px';
        jax_help.style.top = (getRealOffsetY($("search_w")) + 20) + 'px';
        jax_help.show();
    }
}

function jax_clicked(index){
    $("locstr_load").hide();
    index = jax_resultsL[index];
    skip_next_jax = 1;
    if (typeof(jax_clicked_override) != 'undefined') {
        jax_clicked_override(index);
        return;
    }
    if (index[0].charAt(0) == '+') {
        PosMap(new GLatLng(index[1] / 1000000, index[2] / 1000000), 15);
    }
    if (index[0].charAt(0) == 'l')
        city_clicked(index[0].substring(1), index);
    if (index[0].charAt(0) == 'm') {
        if (typeof(m_nav_go) != 'undefined')
            m_nav_go(index[0], index);
        else {
            if (index[10])
                city_clicked(index[10], index, 0);
            {
                if (m_nav_auto_went) {
                    nav_clicked(index[0], index);
                    return;
                }
            }
            if (GetMap())
                GMapZoomToBounds(NavDivToBounds(index[1], index[2], index[8], index[9], 0));
        }
    }
    if (typeof(script_position_event) != 'undefined')
        script_position_event(Math.round(parseInt(index[2]) + (parseInt(index[9])) / 2), Math.round(parseInt(index[1]) + (parseInt(index[8])) / 2));
}

function jax_addAddressToMap(response){
    if (!response || response.Status.code != 200) {
        jax_GAddoCode = 1;
        jax_GAddo = 0;
    }
    else {
        jax_GAddo = response;
        jax_GAddoCode = 1;
        jax_mix_and_out();
    }
}

function jax_dohelp(str){
    jaxSRCH_varian = 1 || jaxSRCH_varian;
    str = $F("search_w");
    $("locstr_load").src = DRR + 'imgs/ajax-loader-snake.gif';
    $("locstr_load").show();
    $("jax_help").hide();
    Element.setStyle($("search_w"), "background-color:#E0E0E0");
    jax_GAddoCode = 0;
    jax_KAddoCode = 0;
    jax_GAddo = 0;
    jax_KAddo = 0;
    if (geocoder) {
        geocoder.getLocations("Россия, " + str, jax_addAddressToMap);
    }
    else
        jax_GAddo = 1;
    new Ajax.Request(DRR + "loader/ajafind.php?w=" + str + "&Var=" + jaxSRCH_varian, {
        encoding: "windows-1251",
        asynchronous: true,
        evalScripts: false,
        onFail: function(){
        },
        onComplete: function(transport){
        }
    });
}

var jax_try_timeout = 0;
function jax_tryme(){
    str2 = $("search_w").value;
    if (jaxSRCH_laststr != str2)
        jax_helpme(str2);
}

function jax_helpme(str, variant, event){
    if (jax_try_timeout)
        clearTimeout(jax_try_timeout);
    var tm = 500;
    variant = 1 || variant;
    if (jaxSRCH_laststr == str) {
        jax_try_timeout = setTimeout("jax_tryme()", 200);
        return;
    }
    if (jaxSRCH_timer)
        clearTimeout(jaxSRCH_timer);
    if (jaxSRCH_laststr.length > str.length)
        tm = 2000;
    else
        tm = 1000;
    jaxSRCH_laststr = str;
    jaxSRCH_varian = variant;
    if (skip_next_jax) {
        if (skip_next_jax == 1) {
            skip_next_jax = str;
            return;
        }
        if (skip_next_jax == str) {
            return
        }
        else
            skip_next_jax = 0;
    }
    if (event)
        if (13 == event.keyCode || 13 == event.which)
            tm = 5;
    if (str.length >= 2)
        jaxSRCH_timer = setTimeout("jax_dohelp('" + str + "');", tm);
}

var geo_map = 0;
var geocoder = 0;
var geo_map_center = new GLatLng(56, 40);
var geo_map_default_zoom = 6;
var start_seq = new Array();
var HistoryBackEvents = new Array();
var current_gloc = 0;
function mapsetSize(x, y){
    $("map_overlayed").style.width = x;
    $("map_overlayed").style.height = y;
    GetMap().checkResize();
}

var lastGZoom = 0;
var map_current_type_select = parseInt(getCookie("map_current_type_select"));
if (!map_current_type_select)
    map_current_type_select = 0;
function set_map_current_type_select(set){
    map_current_type_select = setCookie("map_current_type_select", set, 60 * 60 * 28);
    _GMapSmartZoom(GetMap().getZoom());
}

function map_autodup(){
    set_map_current_type_select(0);
}

function map_phisdup(){
    set_map_current_type_select(1);
}

function map_satedup(){
    set_map_current_type_select(2);
}

function map_mapdup(){
    set_map_current_type_select(3);
}

function _GMapSmartZoom(zoom){
    if (map_current_type_select == 0) {
        if (zoom < 7 || zoom > 14) {
            if (geo_map.getCurrentMapType() != G_PHYSICAL_MAP && (zoom > 1)) {
                if (geo_map.getCurrentMapType() != G_HYBRID_MAP)
                    geo_map.setMapType(G_HYBRID_MAP);
            }
            else
                if (geo_map.getCurrentMapType() != G_HYBRID_MAP)
                    geo_map.setMapType(G_HYBRID_MAP);
        }
        else {
            if (geo_map.getCurrentMapType() != G_PHYSICAL_MAP)
                geo_map.setMapType(G_PHYSICAL_MAP);
        }
    }
    else
        if (map_current_type_select == 1) {
            if (geo_map.getCurrentMapType() != G_PHYSICAL_MAP)
                geo_map.setMapType(G_PHYSICAL_MAP);
        }
        else
            if (map_current_type_select == 2) {
                if (geo_map.getCurrentMapType() != G_HYBRID_MAP)
                    geo_map.setMapType(G_HYBRID_MAP);
            }
            else
                if (map_current_type_select == 3) {
                    if (geo_map.getCurrentMapType() != G_NORMAL_MAP)
                        geo_map.setMapType(G_NORMAL_MAP);
                }
    if ($("map_autodup")) {
        $("map_autodup").className = map_current_type_select == 0 ? "nav_a_Nh" : "nav_a_N";
        $("map_phisdup").className = map_current_type_select == 1 ? "nav_a_Nh" : "nav_a_N";
        $("map_satedup").className = map_current_type_select == 2 ? "nav_a_Nh" : "nav_a_N";
        $("map_mapdup").className = map_current_type_select == 3 ? "nav_a_Nh" : "nav_a_N";
    }
}

var gmap_tl = 0;
var gmap_br = 0;
function GMapSmartZoom(){
    if (lastGZoom != geo_map.getZoom()) {
        zoomerror = 0;
        Mapia_hidepolygon();
        clearNavRequestTimeouts();
        nav_new_objects = {};
    }
    lastGZoom = geo_map.getZoom();
    gmap_bounds = geo_map.getBounds();
    gmap_bounds_sw = gmap_bounds.getSouthWest();
    gmap_bounds_ne = gmap_bounds.getNorthEast();
    gmap_tl = geo_map.fromLatLngToDivPixel(gmap_bounds_sw);
    gmap_br = geo_map.fromLatLngToDivPixel(gmap_bounds_ne);
    gmapclientwidth = Math.abs(gmap_tl.x - gmap_br.x);
    gmapclientheight = Math.abs(gmap_tl.y - gmap_br.y);
    gmap_pixellong = Math.abs((gmap_bounds_sw.lng() - gmap_bounds_ne.lng()) / gmapclientwidth);
    _GMapSmartZoom(geo_map.getZoom());
}

var loadeventsi = 0;
function OnLoadAdd(str){
    loaderevents.push(str);
}

function make_center_on_center(){
    x = Math.round(geo_map_center.lat() * 1000000);
    y = Math.round(geo_map_center.lng() * 1000000);
    document.write("<a id=center_on_center href='javascript:return_to_indent()' name='" + x + "," + y + "' onclick=loc_a_loc(this) title='Переместиться на центр выбраной локации'><img border=0 src='" + DRR + "imgs/icon/icon_home.gif'></a>");
}

function update_center_center(){
    x = Math.round(geo_map_center.lat() * 1000000);
    y = Math.round(geo_map_center.lng() * 1000000);
    if ($("center_on_center"))
        $("center_on_center").name = x + "," + y;
}

var urltimeout = 0;
function GMap_on_resize(){
    return;
}

var Mapia_RaisedScripts = 0;
function Mapia_RaiseScripts(gm){
    if (typeof(GOverlay) != 'undefined') {
    }
    else
        return 0;
    if (Mapia_RaisedScripts)
        return;
    Mapia_RaisedScripts = 1;
    t = '\n<!-- scripts--->\n';
    ;
    if (gm)
        t += '<script language="javascript" type="text/javascript" src="http://maps.google.com/maps?file=api&v=2&hl=ru&key=' + GM_APIKEY + '" encode="utf8" charset="utf-8"></script>\n';
    for (i in wikiScripts)
        if (i >= 0) {
            t += '<script language="javascript" type="text/javascript" src="' + wikiScripts[i] + '"></script>\n';
        }
    t += '<!-- end scripts -->\n';
    document.write(t);
    return;
    t = '';
    for (i in wikiScripts)
        if (i >= 0) {
            SRAX.addScript({
                url: wikiScripts[i],
                callback: function(){
                },
                noax: true
            })
        }
    SRAX.addScript({
        url: 'rsh_blank.js',
        callback: function(){
        },
        noax: true
    })
}

function Mapia_StartScript(gm){
    Mapia_RaiseScripts(gm);
}

function StartMap(){
    PlaceMapDivOnBody();
    if (geo_map)
        return geo_map;
    else {
        var hidden_box = document.body;
        if (typeof(chat_dlg) != "undefined") {
            hidden_box.appendChild(chat_dlg);
            hidden_box.appendChild(chat_tabs);
            chat_chat_on_load();
        }
        if (!$("map_overlayed"))
            return;
        MakeGIcons();
        G_HYBRID_MAP.getErrorMessage = G_HYBRID_MAP_getErrorMessage;
        G_NORMAL_MAP_getErrorMessage = G_HYBRID_MAP.getErrorMessage;
        G_PHYSICAL_MAP.getErrorMessage = G_PHYSICAL_MAP_getErrorMessage;
        if (GBrowserIsCompatible()) {
            geo_map = new GMap2($("map_overlayed"));
            geo_map.addControl(new GSmallZoomControl());
            var __geo_map_center = new GLatLng(geo_map_center.lat(), geo_map_center.lng());
            geo_map.setCenter(__geo_map_center, geo_map_default_zoom);
            _GMapSmartZoom(geo_map_default_zoom);
            geo_map.setCenter(__geo_map_center, geo_map_default_zoom);
            if (geo_map_zoom_on_start) {
                pm = gmap_pos_set;
                GMapZoomToBounds(geo_map_zoom_on_start);
                if (pm)
                    geo_map.setCenter(geo_map_center, geo_map.getZoom());
            }
            update_center_center();
            geocoder = new GClientGeocoder();
            GEvent.addListener(geo_map, "movestart", function(){
                panoramio_popup_allow = 0;
                history_disable = 1;
            });
            geo_map.okl = geo_map.kl;
            geo_map.kl = function(a){
                if (a)
                    this.okl(a);
            };
            GEvent.addListener(geo_map, "moveend", function(){
                tim_ZoomOK = 0;
                registered_move = 1;
                zoom = geo_map.getZoom();
                if (zoom < MIN_ZOOM_ALLOW) {
                    geo_map.setZoom(MIN_ZOOM_ALLOW);
                    return;
                }
                var center = geo_map.getCenter();
                lat = Math.round(center.y * 1000000);
                lng = Math.round(center.x * 1000000);
                chr = 0;
                if (lat < RU_BOX1[1]) {
                    lat = RU_BOX1[1];
                    chr = 1;
                }
                if (lat > RU_BOX1[3]) {
                    lat = RU_BOX1[3];
                    chr = 1;
                }
                if (lng < RU_BOX1[0]) {
                    lng = RU_BOX1[0];
                    chr = 1;
                }
                if (lng > RU_BOX1[2]) {
                    lng = RU_BOX1[2];
                    chr = 1;
                }
                if (chr) {
                    lat /= 1000000;
                    lng /= 1000000;
                    setTimeout("geo_map.panTo(new GLatLng(" + lat + "," + lng + "),100)", 100);
                    return;
                }
                if (Math.abs(last_gmap_lat - lat) > 2 || Math.abs(last_gmap_lng - lng) > 2 || Math.abs(last_gmap_zoom - geo_map.getZoom()) > 0) {
                }
                else
                    return;
                last_gmap_lat = lat;
                last_gmap_lng = lng;
                last_gmap_zoom = geo_map.getZoom();
                goloc = '';
                if (location_by_now)
                    goloc += location_by_now
                if (goloc)
                    goloc += "&";
                goloc += "lat=" + lat + "&lng=" + lng + "&z=" + geo_map.getZoom() + '&v=' + map_current_type_select;
                if (rsh_ini_ended) {
                    if (urltimeout)
                        clearTimeout(urltimeout);
                    map_history_lat = lat;
                    map_history_lng = lng;
                    map_history_zoom = zoom;
                    map_history_v = map_current_type_select;
                    urltimeout = setTimeout("urltimeout=0;history_skip=1;window.location.href='" + indent_wloc + '#' + goloc + "'", 500);
                }
                GMapSmartZoom();
                request_geo_objects();
                do_render_viewport();
                history_disable = 0;
            });
            hidden_box.appendChild(float_tool_div);
            hidden_box.appendChild(spot_nav_img);
            hidden_box.appendChild(mapia_context);
            for (i in loaderevents)
                if (i >= 0)
                    eval(loaderevents[i]);
            request_geo_objects();
            GMapSmartZoom();
        }
        else
            alert("Карты не будет - браузер не подходит");
        return geo_map;
    }
}

G_PHYSICAL_MAP_getErrorMessage = function(){
    var z = GetMap().getZoom();
    zoomerror++;
    if (z > 8 && zoomerror > 2) {
        if (!tim_ZoomOK) {
            tim_ZoomOK = setTimeout("GetMap().setMapType(G_HYBRID_MAP);tim_ZoomOK=0;", 200);
        }
        return "Карты нет, получаю фотоснимки..";
    }
    else
        return "Карты нет, получаю фотоснимки..";
}
G_HYBRID_MAP_getErrorMessage = function(){
    var z = GetMap().getZoom();
    zoomerror++;
    if (z > 8 && zoomerror > 2) {
        if (!tim_ZoomOK) {
            tim_ZoomOK = setTimeout("GetMap().setZoom(" + (z - 1) + ");tim_ZoomOK=0;", 200);
        }
        return "Данных нет, уменьшаю приближение (" + z + ")..";
    }
    else
        return "Данных нет, уменьшаю приближение(-" + z + ")..";
}
function GetMap(){
    return geo_map;
}

var is_moving_disabled = 0;
function disableMoving(){
    is_moving_disabled = 1;
}

function enableMoving(){
    is_moving_disabled = 0;
}

function return_to_indent(){
    PosMap(geo_map_center, geo_map_default_zoom);
}

function PosMap(Pos, loc){
    if (is_moving_disabled)
        return;
    gmap_pos_set = 1;
    geo_map_center = Pos;
    var map = GetMap();
    if (map) {
        loc = loc || 10;
        var center = map.getCenter();
        var zm = map.getZoom();
        if (Math.abs(center.x - Pos.x) < 0.001 && Math.abs(center.y - Pos.y) < 0.001)
            return;
        if (!loc)
            loc = zm;
        if (zm != loc) {
            _GMapSmartZoom(loc);
            geo_map_default_zoom = loc;
            map.setCenter(Pos, loc);
        }
        else
            map.panTo(Pos, 200);
    }
    else {
        geo_map_center = Pos;
        geo_map_default_zoom = loc;
    }
}

var loc_a_loc_timer = 0;
var loc_a_loc_object = 0;
var fix_here_marker = 0;
function Nav_FixActivation(fixobj){
    NavFixObject = fixobj;
}

function loc_a_loc(obj){
    clearTimeout(loc_a_loc_timer);
    if (obj) {
        xy = obj.name.split(",");
        x = parseInt(xy[0]) / 1000000;
        y = parseInt(xy[1]) / 1000000;
        z = parseInt(xy[2]);
        if (!z)
            z = GetMap().getZoom();
        loc_a_loc_timer = setTimeout('PosMap(new GLatLng(' + x + ',' + y + '),' + z + ')', 300);
        loc_a_loc_object = obj;
    }
}

var gi_HSpot = 0;
var gi_TSpot = 0;
var gi_Loc = 0;
function MakeGIcons(){
    gi_HSpot = new GIcon(G_DEFAULT_ICON);
    gi_HSpot.image = DRR + 'imgs/pic/house.png';
    gi_HSpot.shadow = DRR + 'imgs/pic/house-shadow.png';
    gi_HSpot.iconSize = new GSize(16, 16);
    gi_HSpot.iconAnchor = new GPoint(8, 8);
    gi_HSpot.shadowSize = new GSize(16, 16);
    gi_HSpot.shadowAnchor = new GPoint(8, 8);
    gi_TSpot = new GIcon(G_DEFAULT_ICON);
    gi_TSpot.image = DRR + 'imgs/pic/spot.gif';
    gi_TSpot.shadow = '';
    gi_TSpot.iconSize = new GSize(12, 12);
    gi_TSpot.iconAnchor = new GPoint(6, 6);
    gi_Loc = new GIcon(G_DEFAULT_ICON);
    gi_Loc.image = DRR + 'imgs/icon/here.gif';
    gi_Loc.shadow = '';
    gi_Loc.iconSize = new GSize(14, 14);
    gi_Loc.iconAnchor = new GPoint(14, 14);
}

var geo_here_marker = 0;
function SetHereMarker(point, Zoom){
    map = GetMap();
    if (map) {
        if (geo_here_marker) {
            map.removeOverlay(geo_here_marker);
            delete geo_here_marker;
        }
        geo_here_marker = new GMarker(point, {
            draggable: false,
            icon: gi_Loc
        });
        map.addOverlay(geo_here_marker);
        PosMap(point, Zoom);
    }
    else {
        here_marker_pos = point;
        here_marker_zoom = Zoom;
        geo_map_center = point;
        geo_map_default_zoom = Zoom;
        setTimeout("SetHereMarker(here_marker_pos,here_marker_zoom)", 100);
    }
}

var CityMarkers = new Array();
var HouseMarkers = new Array();
function geo_ShowAddr(address, Zoom, SavePoint, callback){
    map = GetMap();
    if (geocoder) {
        geocoder.getLatLng(address, function(point){
            if (!point) {
                point = SavePoint;
            }
            else {
                SetHereMarker(point, 16);
            }
            if (callback)
                callback(point, geo_here_marker, address);
        });
    }
    else {
        geo_SavePoint = SavePoint;
        geo_callback = callback;
        setTimeout("geo_ShowAddr('" + address + "'," + Zoom + ",geo_SavePoint,geo_callback)", 100);
    }
}

function name2exd(name){
    r = new Array();
    r[3] = name;
    return r;
}

function follow_city_link(cid){
    window.location.href = DRR + "loc/click/" + cid + "/index.html";
}

function city_clicked(cid, exd, c){
    if (typeof(oncity) != 'undefined')
        oncity(cid, exd, c);
    else
        if (typeof(onloc) != 'undefined')
            onloc(cid, exd, c);
        else
            follow_city_link(cid);
}

function m_nav_went(ind){
    window.location.href = DRR + 'onmap/clicked/' + ind + '/index.html';
}

function nav_clicked(ind, exd){
    if (typeof(onnav) != 'undefined')
        onnav(ind, exd);
    else
        m_nav_went(ind);
}

function house_clicked(hid){
    window.location.href = DRR + "/house/click/" + hid + "/index.html";
}

var geo_object_now_requesting = 0;
var geo_object_requesting_timer = 0;
var RGO_last_center = new GLatLng(56, 40);
var RGO_last_bounds = 0;
function getdatakvname(x, y, curzoomkv){
    var xdel = 0;
    var ydel = 0;
    var xline = 0;
    var yline = 0;
    var x1 = -180000000;
    var x2 = 180000000;
    var y1 = -85051128;
    var y2 = 85051128;
    var y1cons = 0;
    var y2cons = 32;
    var yconsdel = 0;
    var n = 0;
    var z = curzoomkv - 1;
    while (z >= 0) {
        xdel = Math.round((x1 + x2) / 2);
        if (n < 4) {
            yconsdel = (y1cons + y2cons) / 2;
            ydel = consar[yconsdel];
        }
        else {
            ydel = Math.round((y1 + y2) / 2);
        }
        if (x <= xdel) {
            x2 = xdel;
            xline = xline * 2;
        }
        else {
            x1 = xdel + 1;
            xline = xline * 2 + 1;
        }
        if (y <= ydel) {
            y2 = ydel;
            y2cons = yconsdel;
            yline = yline * 2;
        }
        else {
            y1 = ydel + 1;
            y1cons = yconsdel;
            yline = yline * 2 + 1;
        }
        z--;
        n++
    }
    var out = new Array();
    out.xline = xline;
    out.yline = yline;
    return out;
}

function cheakpoint(x, y, xline, yline, curzoomkv){
    var xdel = 0;
    var ydel = 0;
    var x1 = -180000000;
    var x2 = 180000000;
    var y1 = -85051128;
    var y2 = 85051128;
    var y1cons = 0;
    var y2cons = 32;
    var yconsdel = 0;
    var n = 0;
    var xlinetest = 0;
    var ylinetest = 0;
    var test = 0;
    var z = curzoomkv - 1;
    while (z >= 0) {
        xdel = Math.round((x1 + x2) / 2);
        if (n < 4) {
            yconsdel = (y1cons + y2cons) / 2;
            ydel = consar[yconsdel]
        }
        else {
            ydel = Math.round((y1 + y2) / 2)
        }
        test = Math.pow(2, z);
        xlinetest = xline & test;
        ylinetest = yline & test;
        if (xlinetest > 0) {
            x1 = xdel + 1
        }
        else {
            x2 = xdel
        }
        if (ylinetest > 0) {
            y1 = ydel + 1;
            y1cons = yconsdel
        }
        else {
            y2 = ydel;
            y2cons = yconsdel
        }
        z--;
        n++
    }
    var out = new Array();
    if ((x >= x1) && (x <= x2) && (y >= y1) && (y <= y2)) {
        out.res = 1
    }
    else {
        out.res = 0
    }
    return out;
}

function retcode(xline, yline, curzoomkv){
    var xparam = 0;
    var yparam = 0;
    var test = 0;
    var xlinetest = 0;
    var ylinetest = 0;
    var line = '';
    var z = curzoomkv - 1;
    while (z >= 0) {
        test = Math.pow(2, z);
        xlinetest = xline & test;
        ylinetest = yline & test;
        if (xlinetest > 0) {
            xparam = 1
        }
        else {
            xparam = 0
        }
        if (ylinetest > 0) {
            yparam = 2
        }
        else {
            yparam = 0
        }
        linepart = xparam + yparam;
        line = line + linepart;
        z--;
    }
    return line;
}

var request_geo_objectst = 0;
function request_geo_objects(){
    if (request_geo_objectst)
        clearTimeout(request_geo_objectst);
    request_geo_objectst = setTimeout("request_geo_objectsin()", 500);
}

function request_geo_objectsin(){
    if (!allow_geo_requests)
        return;
    require_block = {};
    map = GetMap();
    curzoomkv = map.getZoom() - 1;
    bounds = map.getBounds();
    bounds_sw = bounds.getSouthWest();
    bounds_ne = bounds.getNorthEast();
    var x1point = Math.round(bounds_sw.lng() * 1000000);
    var y1point = Math.round(bounds_sw.lat() * 1000000);
    var x2point = Math.round(bounds_ne.lng() * 1000000);
    var y2point = Math.round(bounds_ne.lat() * 1000000);
    if (x1point < -180000000) {
        x1point = -180000000
    }
    if (x2point < -180000000) {
        x2point = -180000000
    }
    if (x1point > 180000000) {
        x1point = 180000000
    }
    if (x2point > 180000000) {
        x2point = 180000000
    }
    if (y1point < -85051128) {
        y1point = -85051128
    }
    if (y2point < -85051128) {
        y2point = -85051128
    }
    if (y1point > 85051128) {
        y1point = 85051128
    }
    if (y2point > 85051128) {
        y2point = 85051128
    }
    outar = [];
    outar = getdatakvname(x1point, y1point, curzoomkv);
    var xline = outar.xline;
    var yline = outar.yline;
    var maks = Math.pow(2, curzoomkv) - 1;
    var vlez = 0;
    var xsdvig = 0;
    var xlinet = xline;
    var ylinet = yline;
    while (vlez != 1) {
        outar = cheakpoint(x2point, y1point, xlinet, ylinet, curzoomkv);
        vlez = outar.res;
        xsdvig++;
        xlinet = xlinet + 1;
        if (xlinet > maks) {
            xlinet = 0
        }
    }
    vlez = 0;
    var ysdvig = 0;
    var xlinet = xline;
    var ylinet = yline;
    while (vlez != 1) {
        outar = cheakpoint(x1point, y2point, xlinet, ylinet, curzoomkv);
        vlez = outar.res;
        ysdvig++;
        ylinet = ylinet + 1;
        if (ylinet > maks) {
            ylinet = 0
        }
    }
    var temp = '';
    var newtemp = '';
    var ylinesave = yline;
    var ysdvigsave = ysdvig;
    while (xsdvig > 0) {
        while (ysdvig > 0) {
            temp = '0' + retcode(xline, yline, curzoomkv);
            var lineleng = 0;
            var newtemp = '';
            while (lineleng < temp.length) {
                newtemp = newtemp + "/" + temp.substring(lineleng, lineleng + 3);
                lineleng = lineleng + 3;
            }
            var letbe = "z";
            {
                newtemp = 'z' + newtemp + gzipext;
                xml_url = newtemp;
                require_block[temp] = xml_url;
            }
            ysdvig--;
            yline++;
            if (yline > maks) {
                yline = 0
            }
        }
        yline = ylinesave;
        ysdvig = ysdvigsave;
        xsdvig--;
        xline++;
        if (xline > maks) {
            xline = 0
        }
    }
    var i = 0;
    clearNavRequestTimeouts();
    for (gotarrn in require_block)
        if (!nav_block_index[gotarrn]) {
            NavRequestImage[i] = {};
            if (gotarrn.charAt(0) != '0')
                gotarrn = '0' + gotarrn;
            NavRequestImage[i].gotarrn = gotarrn;
            NavRequestImage[i].iid = i;
            NavRequestImage[i].onload = function(){
                nav_request_image_loaded(this.iid, this.gotarrn, this);
            };
            NavRequestImage[i].DS = DS(map_fetch);
            NavRequestImage[i].xml_url = require_block[gotarrn];
            nav_request_image_loaded(NavRequestImage[i].iid, NavRequestImage[i].gotarrn, NavRequestImage[i]);
            i++;
        }
}

var NavRequestsAjaxian = {}
var NavRequestImage = {}
var NavRequestsTimes = {};
function nav_request_image_loaded(i, ind, cthis){
    if (NavRequestImage[i] != cthis)
        return;
    if (dLog)
        console.log("cache image " + ind + " loaded");
    NavRequestsTimes[ind] = setTimeout("request_map_block('" + DRR + "','" + NavRequestImage[i].xml_url + "'," + ind + ")", 10 + Math.round(Math.random() * 10));
    if (NavRequestImage[i]) {
        delete NavRequestImage[i];
        NavRequestImage[i] = 0;
    }
}

function clearNavRequestTimeouts(){
    idx = 0;
    for (i in NavRequestsTimes) {
        if (NavRequestsTimes[i]) {
            idx++;
            clearTimeout(NavRequestsTimes[i]);
            NavRequestsTimes[i] = 0;
        }
    }
    NavRequestsTimes = {};
    for (i in NavRequestImage) {
        if (NavRequestImage[i]) {
            idx++;
            delete NavRequestImage[i];
            NavRequestImage[i] = 0;
        }
    }
    NavRequestImage = {};
    idx = 0;
    for (i in NavRequestsAjaxian) {
        if (NavRequestsAjaxian[i]) {
            idx++;
            {
            }
            NavRequestsAjaxian[i].transport.abort();
            delete (NavRequestsAjaxian[i]);
            NavRequestsAjaxian[i] = 0;
        }
    }
    NavRequestsAjaxian = {};
}

var current_data_center = 0;
var NowRequestingcnt = 0;
function NowRequesting(a){
    if (!$("now_requesting"))
        return;
    NowRequestingcnt += a;
    if (NowRequestingcnt < 0)
        NowRequestingcnt = 0;
    if (NowRequestingcnt == 0)
        $("now_requesting").innerHTML = '';
    else
        $("now_requesting").innerHTML = "еще " + NowRequestingcnt + "";
}

function panoramia_request(proxy, xml_url, gotarrn){
    return;
    NavRequestsTimes['p' + gotarrn] = 0;
    addr = xml_url;
    addr = addr.substr(1);
    addr = "pano" + addr;
}

function request_map_block(proxy, xml_url, gotarrn){
    NavRequestsTimes[gotarrn] = 0;
    if (nav_block_index[gotarrn]) {
        process_nav_block(gotarrn);
        return
    }
    a1 = new String(gotarrn);
    MAXL = 0;
    gin1 = a1.slice(0, a1.length - 1);
    gin2 = a1.slice(0, a1.length - 2);
    stop1 = 0;
    stop2 = 0;
    for (ind in nav_blocks)
        if (nav_block_index[ind]) {
            b1 = new String(ind);
            if (gin1 == b1)
                stop1 = (nav_block_index[ind]['final']);
            else
                if (gin2 == b1)
                    stop2 = (nav_block_index[ind]['final']);
        }
    if (stop1)
        return;
    nav_blocks[gotarrn] = 1;
    addr = xml_url;
    if (!NavRequestsAjaxian[gotarrn]) {
        NowRequesting(1);
        NavRequestsAjaxian[gotarrn] = new Ajax.Request(proxy + addr, {
            method: 'get',
            encoding: "UTF-8",
            onFail: function(){
                NowRequesting(-1);
                nav_blocks[gotarrn] = 0;
            },
            asynchronous: true,
            onComplete: function(transport){
                NowRequesting(-1);
                decode_nav_block(transport.responseText, gotarrn, '');
            }
        });
    }
}

function process_nav_block(blockname){
}

nav = {};
function decode_nav_block(data, in_nav_block_id, prefix){
    nav_toshow = 0;
    NavRequestsAjaxian[prefix + in_nav_block_id] = 0;
    var nav_block_id = 0;
    if (!data) {
        return;
    }
    var lines = data.split("\n");
    for (var i = 0; i < lines.length; i++)
        if (lines[i] == '')
            continue;
        else {
            if (i == 0) {
                var info = lines[i].split("\|");
                info[1] = parseInt(info[1]);
                info[2] = parseInt(info[2]);
                info[3] = parseInt(info[3]);
                info[4] = parseInt(info[4]);
                nav_block_id = "0" + parseInt(info[0]);
                if (!nav_block_index[nav_block_id]) {
                    y1 = (info[1]);
                    y2 = (info[2]);
                    x1 = (info[3]);
                    x2 = (info[4]);
                    var rectBounds = new GLatLngBounds(new GLatLng(y1 / 1000000, x1 / 1000000), new GLatLng(y2 / 1000000, x2 / 1000000));
                    nav_block_index[nav_block_id] = {};
                    nav_block_index[nav_block_id]['final'] = parseInt(info[5]);
                    nav_block_index[nav_block_id]['id'] = nav_block_id;
                    nav_block_index[nav_block_id][0] = info[3];
                    nav_block_index[nav_block_id][1] = info[4];
                    nav_block_index[nav_block_id][2] = info[1];
                    nav_block_index[nav_block_id][3] = info[2];
                    nav_block_index[nav_block_id]['w'] = Math.abs(info[1] - info[2]);
                    nav_block_index[nav_block_id]['h'] = Math.abs(info[3] - info[4]);
                    nav_block_index[nav_block_id]['show_cnt'] = 0;
                    nav_block_index[nav_block_id]['obj_cnt'] = 0;
                    nav_block_index[nav_block_id]['time'] = timeGetTime();
                    nav_block_index[nav_block_id]['visible'] = 0;
                    nav_block_index[nav_block_id]['o'] = {};
                    nav_block_index[nav_block_id]['z'] = GetMap().getZoom();
                }
            }
            else
                if (i > 1) {
                    var info = lines[i].split("\|");
                    nav_id = info[0];
                    nav_block_index[nav_block_id]['o'][nav_id] = nav_id;
                    nav_block_index[nav_block_id]['obj_cnt']++;
                    if (nav_objects[nav_id]) {
                        if (!nav['in'][nav_block_id])
                            nav_objects[nav_id]['cnt']++;
                        nav['in'][nav_block_id] = nav_block_id;
                        continue;
                    }
                    y1 = parseInt(info[1]);
                    x1 = parseInt(info[2]);
                    y2 = parseInt(info[3]);
                    x2 = parseInt(info[4]);
                    type = info[5];
                    Name = info[6];
                    display = info[7];
                    po = info[9];
                    imgs = info[11] || "";
                    gy1 = y1 / 1000000;
                    gy2 = y2 / 1000000;
                    gx1 = x1 / 1000000;
                    gx2 = x2 / 1000000;
                    var rectBounds = new GLatLngBounds(new GLatLng(gx1, gy1), new GLatLng(-gx2 + gx1, gy2 + gy1));
                    point = new GLatLng(gx1, gy1);
                    nav = new Array();
                    nav['id'] = nav_id;
                    nav['in'] = {};
                    nav['in'][nav_block_id] = nav_block_id;
                    nav[0] = y1;
                    nav[1] = y2;
                    nav[2] = x1;
                    nav[3] = x2;
                    nav[4] = Math.ceil(300000 / (Math.abs(parseInt(info[3])) + Math.abs(parseInt(info[4]))));
                    nav[5] = rectBounds;
                    if (nav[4] < 1)
                        nav[4] = 1;
                    else
                        if (nav[4] > 10000)
                            nav[4] = 10000;
                    if (type == 1)
                        nav[4] = 11000;
                    nav['city_link'] = info[8];
                    nav['Name'] = Name;
                    nav['Type'] = type;
                    nav['shown'] = 0;
                    nav['po'] = po;
                    nav['cnt'] = 1;
                    nav['show_cnt'] = 0;
                    nav['mapelement'] = null;
                    nav['images'] = imgs;
                    nav['WH'] = parseInt(x2 + y2);
                    nav['point'] = point;
                    if (type == 1)
                        nav['mapelement'] = new CityRectangle(rectBounds, nav_id, Name, nav[4]);
                    else
                        if (type == 3)
                            nav['mapelement'] = new Panoramio(rectBounds, nav_id, Name, nav[4]);
                        else
                            nav['mapelement'] = new Rectangle(rectBounds, nav_id, Name, nav[4]);
                    nav_gcnt++;
                    nav_toshow++;
                    nav_objects[nav_id] = nav;
                }
        }
    if (dLog)
        console.log("loaded:" + nav_toshow + " objs");
    if (!nav_block_index[nav_block_id]['obj_cnt'])
        delete_nav_block(nav_block_id);
    if (nav_toshow)
        do_render_viewport();
}

function hide_nav_object(ind){
    if (!nav_objects[ind])
        return;
    nav_objects[ind]['show_cnt']--;
    if (nav_objects[ind]['shown']) {
        current_visible_count--;
        nav_objects[ind]['show_cnt'] = 0;
        nav_objects[ind]['shown'] = 0;
        map.removeOverlay(nav_objects[ind]['mapelement']);
    }
    try_hide_floatToolTip(ind);
}

function show_nav_object(ind){
    if (!nav_objects[ind])
        return;
    nav_objects[ind]['show_cnt']++;
    if (!nav_objects[i]['shown']) {
        current_visible_count++;
        nav_objects[i]['shown'] = 1;
        map.addOverlay(nav_objects[i]['mapelement']);
    }
}

function hide_all_in_block(bind){
    for (ind in nav_block_index[bind]['o']) {
        hide_nav_object(ind);
    }
    nav_block_index[bind]['visible'] = 0;
    nav_block_index[bind]['time'] = timeGetTime();
}

function delete_nav_block(bind){
    for (ind in nav_block_index[bind]['o']) {
        nav_objects[ind]['cnt']--;
        if (nav_objects[ind]['cnt'] <= 0) {
            hide_nav_object(ind);
            nav_gcnt--;
            delete nav_objects[ind]['mapelement'];
            delete nav_objects[ind];
        }
    }
    delete nav_block_index[bind];
    delete nav_blocks[bind];
}

function block_keeps_invisible(bind){
    if (nav_block_index[bind]['visible'])
        hide_all_in_block(bind);
    else {
        return;
        if (!nav_block_index[bind]['time'])
            nav_block_index[bind]['time'] = timeGetTime();
        if ((timeGetTime() - nav_block_index[bind]['time']) > 300000) {
            if (aCurrentUser.Master)
                console.log("block " + bind + " deleted");
            delete_nav_block(bind);
        }
    }
}

function nav_width_sort(a, b){
    return b[1] - a[1];
}

do_render_viewport_timeout = 0;
function do_render_viewport(){
    if (do_render_viewport_timeout)
        return;
    do_render_viewport_timeout = setTimeout("_do_render_viewport()", 300);
}

function _do_render_viewport(){
    do_render_viewport_timeout = 0;
    map = GetMap();
    curzoomkv = map.getZoom();
    bounds = map.getBounds();
    bounds_sw = bounds.getSouthWest();
    bounds_ne = bounds.getNorthEast();
    var x1p = parseInt(bounds_sw.lng() * 1000000);
    var y1p = parseInt(bounds_sw.lat() * 1000000);
    var x2p = parseInt(bounds_ne.lng() * 1000000);
    var y2p = parseInt(bounds_ne.lat() * 1000000);
    var yd = y2p - y1p;
    var xd = x2p - x1p;
    var newnum = 0;
    var numvis = 0;
    var numhid = 0;
    var numfilt = 0;
    var CVC = 0;
    showncnt = 0;
    for (bind in nav_block_index)
        if (nav_block_index[bind]['z'] < curzoomkv + 2) {
            if (((nav_block_index[bind][0] <= x2p && nav_block_index[bind][0] >= x1p) || (nav_block_index[bind][1] <= x2p && nav_block_index[bind][1] >= x1p) || (nav_block_index[bind][0] <= x1p && nav_block_index[bind][1] >= x2p)) && ((nav_block_index[bind][2] <= y2p && nav_block_index[bind][2] >= y1p) || (nav_block_index[bind][3] <= y2p && nav_block_index[bind][3] >= y1p) || (nav_block_index[bind][2] <= y1p && nav_block_index[bind][3] >= y2p)))
                show = 1;
            else
                show = 0;
            if (!show) {
                block_keeps_invisible(bind);
            }
            else {
                showncnt = 0;
                for (ind in nav_block_index[bind]['o']) {
                    if (nav_objects[ind][0] <= x2p && (nav_objects[ind][1] + nav_objects[ind][0]) >= x1p && nav_objects[ind][2] >= y1p && (-nav_objects[ind][3] + nav_objects[ind][2]) <= y2p) {
                        show = 1;
                        numvis++
                    }
                    else {
                        show = 0;
                        numhid++
                    };
                    nav_objects[ind]['passby'] = 2;
                    if (nav_objects[ind]['shown'] && !show)
                        hide_nav_object(ind);
                    else
                        if (show) {
                            CVC++;
                            if (nav_objects[ind]['Type'] > 0) {
                                w = 1000;
                                h = 1000;
                            }
                            else {
                                var c1 = map.fromLatLngToDivPixel(nav_objects[ind][5].getSouthWest());
                                var c2 = map.fromLatLngToDivPixel(nav_objects[ind][5].getNorthEast());
                                var w = Math.abs(c1.x - c2.x);
                                var h = Math.abs(c1.y - c2.y);
                            }
                            if (w > 6 && h > 6) {
                                showncnt++;
                                if (!nav_objects[ind]['shown']) {
                                    nav_new_objects[ind] = ind;
                                    newnum++;
                                }
                            }
                            else {
                                numfilt++;
                                if (nav_objects[ind]['shown'])
                                    hide_nav_object(ind);
                            }
                        }
                }
                if (!showncnt)
                    block_keeps_invisible(bind);
                else {
                    nav_block_index[bind]['time'] = timeGetTime();
                    nav_block_index[bind]['visible'] = 1;
                }
            }
        }
        else
            block_keeps_invisible(bind);
    current_visible_count = CVC
    if ((current_visible_count) > MAX_VISIBLE_OBJECTS) {
        visible = [];
        for (i in nav_new_objects)
            if (i.charAt(0) == 'm') {
                visible[i] = {
                    0: i,
                    1: nav_objects[i]['WH']
                };
            }
        for (i in nav_objects)
            if (i.charAt(0) == 'm') {
                if (nav_objects[i]['shown'])
                    visible[i] = {
                        0: i,
                        1: nav_objects[i]['WH']
                    };
            }
        vc = 0;
        vs = [];
        for (i in visible) {
            vc++;
            vs.push(visible[i]);
        }
        visible = vs;
        visible.sort(function(a, b){
            if (b[1] && a[1])
                return (b[1] - a[1]);
            return 0;
        });
        if (vc > MAX_VISIBLE_OBJECTS) {
            newnum = 0;
            nav_new_objects2 = {};
            for (i in nav_new_objects)
                if (i.charAt(0) != 'm') {
                    nav_new_objects2[i] = i;
                    newnum++;
                };
            posible = (MAX_VISIBLE_OBJECTS);
            nav_new_objects = nav_new_objects2;
            cnt = 0;
            for (i in visible)
                if (visible[i][0]) {
                    ind = visible[i][0];
                    cnt++;
                    if (cnt >= posible) {
                        if (nav_objects[ind]['shown'])
                            hide_nav_object(ind)
                    }
                    else {
                        if (!nav_objects[ind]['shown']) {
                            nav_new_objects[ind] = ind;
                        }
                        newnum++;
                    }
                }
        }
    }
    if (dLog)
        console.log("" + newnum + " objs to render|vis:" + numvis + "|hid:" + numhid + "|ftlr:" + numfilt);
    if (newnum && !nav_show_thread) {
        nav_show_thread = setTimeout("nav_render()", 100);
    }
}

function nav_render(){
    nav_show_thread = 0;
    cnt = RENDER_CNT_PER_TICK;
    map = GetMap();
    count = 0;
    {
        for (i in nav_new_objects) {
            if (nav_objects[i])
                if (!nav_objects[i]['shown']) {
                    count++;
                    show_nav_object(i);
                    cnt--;
                    if (!cnt)
                        break;
                }
        }
    }
    if (0) {
        if (typeof(console) != 'undefined')
            console.log(e);
        else {
        }
    }
    if (count && cnt != RENDER_CNT_PER_TICK) {
        nav_show_thread = setTimeout("nav_render()", 10);
        return;
    }
    if (!count)
        nav_new_objects = {};
}

function ajaRemoveLoc(id){
    new Ajax.Request(DRR + "loader/ajaloc.php?ctl&remove=" + id, {
        asynchronous: true
    });
}

var wiki_load_loaded = 0;
function wiki_loadplace(lid, type){
    if (wiki_load_loaded == 0)
        $("wikki_informer").style.height = $("wikki_informer").clientHeight;
    if (parseInt($("wikki_informer").style.height) < 300)
        $("wikki_informer").style.height = '300px'
    wiki_load_loaded = 1;
    new Ajax.Updater("wikki_informer", "loader/wiki.php?loc=" + lid + "&t=" + type, {
        encoding: "windows-1251",
        asynchronous: true,
        evalScripts: true
    });
}

function dark_wiki_panel_selfcast(a, b){
    var v = b.options[b.selectedIndex].value;
    dark_wiki_panel(a, v);
}

function dark_wiki_panel(wid, wsec){
    if (wsec == -1)
        return;
    var showW = 0;
    if (!dark_panel_on)
        showW = 1;
    dark_on();
    if (showW)
        $("darkdotinner").innerHTML = '<img src=' + DRR + 'img/wiki_now_loading.gif>';
    new Ajax.Updater("darkdotinner", "loader/wikitext.php?loc=" + wid + "&sec=" + wsec, {
        encoding: "windows-1251",
        asynchronous: true,
        evalScripts: true
    });
}

var dark_panel_on = 0;
function dark_off(){
    if (!$("darkdotup")) {
        window.close();
        return;
    }
    dark_panel_on = 0;
    $("darkdotup").style.display = 'none';
    $("darkdotinner").innerHTML = '';
}

function dark_on(){
    dark_panel_on = 1;
    $("darkdotup").style.height = document.body.clientHeight + 'px';
    $("darkdotup").style.Width = document.body.clientWidth + 'px';
    h = (window.innerHeight);
    if (!h)
        h = (document.documentElement.clientHeight);
    if (!h)
        h = document.body.clientHeight;
    $("darkdot").style.height = h + "px";
    $("darkdotinner").style.Width = document.body.clientWidth + 'px';
    $("darkdotup").style.display = '';
    document.documentElement.scrollTop = '0';
}

function PointInPoly(poly, pt){
    var npoints = poly.length - 1;
    var xnew, ynew, xold, yold, x1, y1, x2, y2, i;
    var inside = false;
    if (npoints < 3) {
        return false;
    }
    xold = poly[npoints - 1].x;
    yold = poly[npoints - 1].y;
    for (i = 0; i < npoints; i++) {
        xnew = poly[i].x;
        ynew = poly[i].y;
        if (xnew > xold) {
            x1 = xold;
            x2 = xnew;
            y1 = yold;
            y2 = ynew;
        }
        else {
            x1 = xnew;
            x2 = xold;
            y1 = ynew;
            y2 = yold;
        }
        if ((xnew < pt.x) == (pt.x <= xold) && ((pt.y - y1) * (x2 - x1) < (y2 - y1) * (pt.x - x1))) {
            inside = !inside;
        }
        xold = xnew;
        yold = ynew;
    };
    return inside;
};
var map_overlayed_height = 0;
var mapia_resize_stopevent = 0;
var mouseY = 0;
function mapia_resize_mousemove(evt){
    if (!evt)
        evt = this.event;
    if (evt.pageY)
        var newheight = evt.pageY - mouseY;
    else
        var newheight = evt.clientY - mouseY;
    if (newheight >= 50) {
        $("map_overlayed_blocker").style.height = newheight + "px";
        $("map_overlayed_blocker").onresize();
        map_overlayed_height = newheight;
        GetMap().checkResize();
    }
}

function mapia_resize_start(evt){
    if (!evt)
        evt = this.event;
    if (!map_overlayed_height)
        map_overlayed_height = $("map_overlayed_blocker").clientHeight;
    if (evt.pageY)
        mouseY = evt.pageY - map_overlayed_height;
    else
        mouseY = evt.clientY - map_overlayed_height;
    if (document.addEventListener)
        document.addEventListener('mousemove', mapia_resize_mousemove, false);
    else
        document.attachEvent('onmousemove', mapia_resize_mousemove);
    if (!mapia_resize_stopevent) {
        mapia_resize_stopevent = 1;
        if (document.addEventListener)
            document.addEventListener('mouseup', mapia_resize_stop, false);
        else
            document.attachEvent('onmouseup', mapia_resize_stop);
    }
}

function mapia_resize_stop(){
    if (document.addEventListener)
        document.removeEventListener('mousemove', mapia_resize_mousemove, false);
    else
        document.detachEvent('onmousemove', mapia_resize_mousemove);
}

var map_instruments_ctm = 0;
var map_instruments_stm = 0;
function map_overlayed_onmouse(obj){
    clearTimeout(map_instruments_ctm);
    clearTimeout(map_instruments_stm);
    map_instruments_stm = setTimeout("map_overlayed_openpanel(1)", 500);
}

function map_overlayed_outmouse(obj){
    clearTimeout(map_instruments_ctm);
    clearTimeout(map_instruments_stm);
    map_instruments_stm = 0;
    map_instruments_ctm = 0;
    map_instruments_stm = setTimeout("map_overlayed_openpanel(0)", 1000);
}

function map_overlayed_openpanel(sh){
    clearTimeout(map_instruments_ctm);
    clearTimeout(map_instruments_stm);
    map_instruments_stm = 0;
    map_instruments_ctm = 0;
    if (!sh) {
        $("map_instuments").hide();
        if (GetMap())
            GetMap().disableScrollWheelZoom();
    }
    else {
        $("map_instuments").style.top = getRealOffsetY($("map_overlayed")) + 'px';
        $("map_instuments").style.left = (parseInt(getRealOffsetX($("map_overlayed")) + $("map_overlayed").clientWidth) + 3) + 'px';
        $("map_instuments").show();
        gmap_enablewheel(0);
    }
}

var gmap_maximized = 0;
var map_blocker_H = 0;
function gmap_maximize(){
    if (gmap_maximized)
        do_gmap_maximize(0);
    else
        do_gmap_maximize(1);
}

function do_gmap_maximize(openclose){
    if (openclose == 0) {
        $("map_overlayed").style.top = (getRealOffsetY($("map_overlayed_blocker"))) + 'px';
        $("map_overlayed").style.left = (getRealOffsetX($("map_overlayed_blocker"))) + 'px';
        $("map_overlayed").style.width = -5 + getRealOffsetX($("lefter_map_border")) - parseInt($("map_overlayed").style.left) + 'px';
        $("map_overlayed").style.height = parseInt($("map_overlayed_blocker").clientHeight) + 'px';
        $("map_overlayed").show();
        gmap_maximized = 0;
    }
    else {
        $("map_overlayed").style.left = 5 + 'px';
        $("map_overlayed").style.width = (parseInt(document.body.clientWidth) - 60) + 'px';
        $("map_overlayed").style.height = (parseInt(window_innerHeight()) - 55) + 'px';
        document.documentElement.scrollTop = (getRealOffsetY($("map_overlayed")) - 35);
        gmap_maximized = 1;
    }
    if (geo_map) {
        GetMap().checkResize();
        map_overlayed_openpanel(1);
    }
}

var PlaceMapDivOnBody_isdone = 0;
function PlaceMapDivOnBody(){
    if (!PlaceMapDivOnBody_isdone) {
        if (window.addEventListener)
            window.addEventListener("resize", PlaceMapDivOnBody, false);
        if (window.attachEvent)
            window.attachEvent("onresize", PlaceMapDivOnBody);
        PlaceMapDivOnBody_isdone = 1;
    }
    if (gmap_maximized) {
        do_gmap_maximize(1);
        return;
    }
    else
        do_gmap_maximize(0);
}

function gmap_enablewheel(op){
    enabled = parseInt(getCookie("map_wheelzoom"));
    if (op)
        enabled = ~ enabled;
    if (enabled) {
        GetMap().enableScrollWheelZoom();
    }
    else {
        GetMap().disableScrollWheelZoom();
    }
    setCookie("map_wheelzoom", enabled, 60 * 60 * 24 * 7);
    if (enabled)
        $("wheel_enabled_img").src = DRR + 'imgs/icon/icon_wheel_on.gif';
    else
        $("wheel_enabled_img").src = DRR + 'imgs/icon/icon_wheel.gif';
}

var divrect_Cache = [];
MAX_DIVRECT = 150;
var Mapia_polygonout = 0;
var doHideFloatTTimeout = 0;
var float_tool_div_text = '';
div2 = document.createElement("div");
div2.style.position = "absolute";
div2.setAttribute('id', 'spot_nav_img');
div2.style.zIndex = 20003;
div2.innerHTML = "";
var spot_nav_img = div2;
div3 = document.createElement("div");
div3.style.position = "absolute";
div3.setAttribute('id', 'mapia_context_menu');
div3.style.zIndex = 20004;
div3.innerHTML = "";
var mapia_context = div3;
div = document.createElement("div");
div.style.position = "absolute";
div.setAttribute('id', 'tooltip');
div.style.zIndex = 20002;
div.innerHTML = "";
var float_tool_div = div;
var inav_null = new Image();
inav_null.src = 'imgs/icon/null.gif';
var inav_image8 = new Image();
inav_image8.src = 'imgs/icon/nimg8.gif';
var inav_image16 = new Image();
inav_image16.src = 'imgs/icon/nimg16.gif';
var Mapia_polygonishiden = 0;
function copymevent(event){
    event = event || window.event;
    return {
        clientX: event.clientX,
        clientY: event.clientY
    };
}

function defScroll(x, y){
    if (document.attachEvent != null) {
        x = x + (document.documentElement.scrollLeft ? document.documentElement.scrollLeft : document.body.scrollLeft);
        y = y + (document.documentElement.scrollTop ? document.documentElement.scrollTop : document.body.scrollTop);
    }
    else
        if (!document.attachEvent && document.addEventListener) {
            x = x + window.scrollX;
            y = y + window.scrollY;
        }
        else {
        }
    return {
        x: x,
        y: y
    };
}

function defPosition(event){
    var x = y = 0;
    e = event || window.event;
    return defScroll(e.clientX, e.clientY);
}

var BB_pb_sw = 0;
var BB_pb_ne = 0;
var spot_nav_back_ts = 0;
function spot_nav_image(e, obj, iid){
    e = e || window.event;
    spot_nav_in();
    z = 25;
    zy = 55;
    x = e.clientX + z;
    y = e.clientY - 200;
    spot_nav_img.innerHTML = '<table onmouseover="spot_nav_in()" onmouseout="spot_nav_back()" style="width:420px;height:300px;border:2px solid black;background-color:#EEEEEE;padding:10px" border=0>' + '<tr valign=middle><td align=center>' + '<table onmouseover="spot_nav_in()" id=spot_pano_image_h width=100%><tr valing=middle height=300px><td align=center width=400px><img src="imgs/icon/load.gif" id=spot_pano_image_i></td></tr></table>' + '</td></tr></table>';
    df = defScroll(x, y);
    x = df.x;
    y = df.y;
    if (y < 0)
        y = 0;
    if (y > document.body.clientHeight) {
        y -= 300;
        x += 100;
    }
    if (x > document.body.clientWidth) {
        x -= 300;
    }
    spot_nav_img.style.left = x + "px";
    spot_nav_img.style.top = y + "px";
    if (spot_nav_img.style.display != 'block')
        spot_nav_img.style.display = 'block';
    var limg = new Image();
    limg.onload = function(){
        fy = 300 / this.height;
        fx = $("spot_pano_image_h").clientWidth / this.width;
        if (fx < fy)
            f = fx;
        else
            f = fy;
        if (f > 1)
            f = 1;
        $("spot_pano_image_i").width = Math.round(this.width * f);
        $("spot_pano_image_i").height = Math.round(this.height * f);
        $("spot_pano_image_i").src = this.src;
    };
    limg.src = DRR + 'img/nav/' + obj + "/" + iid + '.img';
}

function spot_nav_in(){
    if (spot_nav_back_ts)
        clearTimeout(spot_nav_back_ts);
    spot_nav_back_ts = 0;
}

function spot_nav_back(ts){
    ts = ts || 500;
    if (spot_nav_back_ts)
        clearTimeout(spot_nav_back_ts);
    spot_nav_back_ts = setTimeout("spot_nav_close()", ts);
}

function spot_nav_close(){
    spot_nav_back_ts = 0;
    spot_nav_img.style.display = 'none';
    spot_nav_img.innerHTML = '';
}

var mapia_oncontext_event = 0;
var mapia_oncontext_call = 0;
var mapia_oncontext_tm = 0;
var Mapia_popevent_enabled = 0;
function wmapia_OffContextMenu(call){
    mapia_context_out(150);
    clearTimeout(mapia_oncontext_tm);
}

function wmapia_OnContextMenu(event, call){
    clearTimeout(mapia_oncontext_tm);
    if (Mapia_popevent_enabled && call != mapia_oncontext_call)
        mapia_context_out(10);
    if (event.clientX)
        mapia_oncontext_event = copymevent(event);
    mapia_oncontext_call = call;
    mapia_oncontext_tm = setTimeout("Mapia_popevent(mapia_oncontext_event,mapia_oncontext_call);", 900);
}

var GMapZoomToBounds_store;
function GMapZoomToBounds(bounds_){
    map_ = GetMap();
    cc = 0;
    zoom = map_.getZoom();
    bounds__ = new GLatLngBounds(new GLatLng(bounds_.getSouthWest().lat(), bounds_.getSouthWest().lng()), new GLatLng(bounds_.getNorthEast().lat(), bounds_.getNorthEast().lng()))
    bounds = geo_map.getBounds();
    bounds_sw = bounds.getSouthWest();
    bounds_ne = bounds.getNorthEast();
    bounds_ = bounds__;
    ltl = geo_map.fromLatLngToDivPixel(bounds_sw);
    lbr = geo_map.fromLatLngToDivPixel(bounds_ne);
    br = Math.abs(ltl.x - lbr.x);
    tl = Math.abs(ltl.y - lbr.y);
    dw20 = br / 3;
    dh20 = tl / 3;
    while (1) {
        var c1 = map_.fromLatLngToDivPixel(bounds_.getSouthWest());
        var c2 = map_.fromLatLngToDivPixel(bounds_.getNorthEast());
        var wid = Math.abs(c2.x - c1.x) * 1.2;
        var hei = Math.abs(c2.y - c1.y) * 1.2;
        if (wid > dw20 || hei > dh20)
            break;
        GMapZoomToBounds_store = bounds_;
        zoom += 2;
        if (zoom > 18) {
            zoom = 18;
            break;
        }
        geo_map.setCenter(bounds_.getCenter(), zoom);
        if (cc++ > 10)
            break;
    }
    {
        center = bounds_.getCenter();
        bounds = geo_map.getBounds();
        bounds_sw = bounds.getSouthWest();
        bounds_ne = bounds.getNorthEast();
        ltl = geo_map.fromLatLngToDivPixel(bounds_sw);
        lbr = geo_map.fromLatLngToDivPixel(bounds_ne);
        br = Math.abs(ltl.x - lbr.x);
        tl = Math.abs(ltl.y - lbr.y);
        wid = wid * 1.2;
        hei = hei * 1.2;
        inter = 0;
        if (tl < wid || br < hei) {
            while (1) {
                tl = tl * 2;
                br = br * 2;
                zoom--;
                if (br > wid && tl > hei) {
                    break;
                }
                if (zoom < 8) {
                    break;
                }
            }
        }
        while (1) {
            inter++;
            tl = tl / 2;
            br = br / 2;
            zoom++;
            if (br < wid || tl < hei) {
                ;
                zoom--;
                break;
            }
            if (zoom > 17) {
                break;
            }
        }
        if (zoom > 18)
            zoom = 18;
        PosMap(center, zoom);
    }
    return 0;
}

function NavDivToBounds(y1, x1, y2, x2, fv){
    fvi = fv || 0;
    if (fvi == 0) {
        x1 = x1 / 1000000;
        x2 = x2 / 1000000;
        y1 = y1 / 1000000;
        y2 = y2 / 1000000;
    }
    return new GLatLngBounds(new GLatLng(x1, y1), new GLatLng(-x2 + x1, y2 + y1));
}

function NavDivToBox(y1, x1, y2, x2, fv){
    fvi = fv || 0;
    if (fvi == 0) {
        x1 = x1 / 1000000;
        x2 = x2 / 1000000;
        y1 = y1 / 1000000;
        y2 = y2 / 1000000;
    }
    return new GLatLngBounds(new GLatLng(x1, y1), new GLatLng(x2, y2));
}

function GMapZoomToDiv(x1, y1, x2, y2, fv){
    GMapZoomToBounds(NavDivToBounds(x1, y1, x2, y2, fv || 0));
}

var MapiaRectZoomDivToScreenO = 0;
var MapiaRectZoomDivToScreenT = 0;
function MapiaRectZoomDivToScreen(obj){
    hideFloatToolTip();
    MapiaRectZoomDivToScreenO = obj.nav_parent;
    if (MapiaRectZoomDivToScreenT)
        return;
    MapiaRectZoomDivToScreenT = setTimeout("MapiaRectZoomDivToScreenIn()", 50);
    return 0;
}

function MapiaRectZoomDivToScreenIn(){
    MapiaRectZoomDivToScreenT = 0;
    GMapZoomToBounds(MapiaRectZoomDivToScreenO.bounds_);
    return 0;
}

var mapia_context_object = 0;
function Mapia_popevent(event, obj, ctid){
    Mapia_popevent_enabled = 1;
    mapia_context_object = obj;
    mapia_context.style.display = 'none';
    point = defPosition(event);
    if (obj) {
        text = '<table onmouseover=mapia_context_in() onmouseout=mapia_context_out(400) style="padding:7px;border:1px solid black;background-color:#EEEEEE;width:200px;font-size:12px">';
        text += "<tr><td class=nav_a_B>" + nav_objects[obj.rid]['Name'] + "</td></tr>";
        text += "<tr><td><a href='javascript:void()' onclick='MapiaRectZoomDivToScreen(mapia_context_object)' style='cursor:hand'>Приблизить максимально</a>" + "</td></tr>";
        text += "<tr><td><a href='" + DRR + "onmap/clicked/" + obj.nav_parent.kvid_ + "/index.html'>Дополнительное описание</a>" + "</td></tr>";
        text += "</table>";
    }
    else {
        text = '<table onmouseover=mapia_context_in() onmouseout=mapia_context_out(400) style="padding:7px;border:1px solid black;background-color:#EEEEEE;width:200px;font-size:12px">';
        text += "<tr><td class=nav_a_B>" + nav_objects[ctid.rid]['Name'] + "</td></tr>";
        text += "<tr><td><a href='javascript:city_clicked(" + ctid.city_id + ")'>Перейти?</a>" + "</td></tr>";
        text += "</table>";
    }
    mapia_context.innerHTML = text;
    doHideFloatTT();
    mapia_context.style.left = (point.x + 5) + 'px';
    mapia_context.style.top = (point.y + 5) + 'px';
    mapia_context.style.display = '';
    mapia_context_out(5000);
}

var mapia_context_out_tm = 0;
function mapia_context_out(tm){
    if (mapia_context_out_tm)
        clearTimeout(mapia_context_out_tm);
    mapia_context_out_tm = setTimeout("Mapia_popevent_enabled=0;mapia_context.style.display='none'", tm);
}

function mapia_context_in(){
    if (mapia_context_out_tm)
        clearTimeout(mapia_context_out_tm);
    mapia_context_out_tm = 0;
}

var ShowToolTipFor = "";
function showFloatToolTip(e, obj){
    if (doHideFloatTTimeout) {
        clearTimeout(doHideFloatTTimeout);
        doHideFloatTTimeout = 0;
    }
    {
        var txt = "";
        float_tool_div_text = "" + nav_objects[obj.rid]['Name'] + txt + "";
        float_tool_div.innerHTML = float_tool_div_text;
        ShowToolTipFor = obj.rid;
    }
    float_tool_div.className = 'nav_pointer';
    e = e || window.event;
    z = 25;
    zy = 5;
    x = e.clientX + z;
    y = e.clientY + zy;
    if (float_tool_div.style.display != 'block')
        float_tool_div.style.display = 'block';
    if (x + float_tool_div.offsetWidth > gmapclientwidth) {
        x -= z * 2 + float_tool_div.offsetWidth;
        y += 50;
    }
    if (y + float_tool_div.offsetHeight > gmapclientheight)
        y -= zy + float_tool_div.offsetHeight;
    df = defScroll(x, y);
    x = df.x;
    y = df.y;
    if (x < 0)
        x = e.clientX + z;
    if (y < 0)
        y = e.clientY + zy;
    float_tool_div.style.left = (x) + 'px';
    float_tool_div.style.top = (y) + 'px'
}

function try_hide_floatToolTip(ind){
    if (ShowToolTipFor == ind)
        hideFloatToolTip();
}

function doHideFloatTT(){
    doHideFloatTTimeout = 0;
    float_tool_div.innerHTML = '';
    float_tool_div.style.display = 'none';
    float_tool_div.innerHTML = '';
    float_tool_div.style.left = '0px';
    float_tool_div.style.top = '0px'
}

function hideFloatToolTip(){
    doHideFloatTTimeout = setTimeout("doHideFloatTT()", 100);
    ShowToolTipFor = '';
    Mapia_hidepolygon();
}

function Mapia_hidepolygon(){
    Mapia_polygonishiden = 0;
    {
        if (Mapia_polygonout) {
            map.removeOverlay(Mapia_polygonout);
            delete Mapia_polygonout;
            Mapia_polygonout = 0;
        }
    }
}

var Mapia_polygonT = 0;
var Mapia_polygonishidenO = 0;
function MapiaDivOnOver(obj){
    if (div.baseborder && obj.style.border) {
        obj.style.border = "1px dashed #FBA723"
    }
    if (nav_objects[obj.rid]['po']) {
        Mapia_polygonishiden = obj.rid;
        Mapia_polygonishidenO = obj;
        if (Mapia_polygonT)
            clearTimeout(Mapia_polygonT);
        Mapia_polygonT = setTimeout("Mapia_prepolyone(Mapia_polygonishiden,Mapia_polygonishidenO)", 50);
    }
    else {
        Mapia_hidepolygon();
    }
}

function MapiaDivOnOut(obj){
    BB_pb_sw = 0;
    BB_pb_ne = 0;
    if (div.baseborder && obj.style.border)
        obj.style.border = div.baseborder;
    try {
        hideFloatToolTip();
    }
    catch (e) {
    }
    Mapia_hidepolygon();
}

function Mapia_prepolydata(points){
    from = [];
    for (i in points)
        if (i >= 0) {
            from.push(new GLatLng(points[i][1] / 1000000, points[i][0] / 1000000));
        }
    from.push(new GLatLng(points[0][1] / 1000000, points[0][0] / 1000000));
    return from;
}

function Mapia_textpolydata(fromt){
    var cinf = fromt.split(';');
    var polyz = [];
    for (var t = 2; t < cinf.length; t += 2) {
        var x1 = (parseFloat(cinf[t])) / 1000000;
        var y1 = (parseFloat(cinf[t + 1])) / 1000000;
        polyz.push(new GLatLng(y1, x1))
    }
    return polyz;
}

function Mapia_prepolyone(ifromt, obj){
    Mapia_polygonT = 0;
    if (!nav_objects[ifromt] || !nav_objects[ifromt]['po']) {
        Mapia_hidepolygon();
        return;
    }
    fromt = nav_objects[ifromt]['po'];
    var cinf = fromt.split(';');
    var from = 0;
    var polyz = [];
    ind = 0;
    cinf[0] = parseFloat(cinf[0]);
    cinf[1] = parseFloat(cinf[1]);
    BB_pb_sw = (obj.rparent.bounds_.getSouthWest());
    BB_pb_ne = (obj.rparent.bounds_.getNorthEast());
    for (var t = 2; t < cinf.length; t += 2) {
        var x1 = (cinf[0] + parseFloat(cinf[t])) / 1000000;
        var y1 = (cinf[1] + parseFloat(cinf[t + 1])) / 1000000;
        if (y1 < bounds_sw.lat() || y1 > bounds_ne.lat() || x1 < bounds_sw.lng() || x1 > bounds_ne.lng())
            from++;
        if (y1 < BB_pb_sw.lat())
            BB_pb_sw = new GLatLng(y1, BB_pb_sw.lng());
        if (y1 > BB_pb_ne.lat())
            BB_pb_ne = new GLatLng(y1, BB_pb_ne.lng());
        if (x1 < BB_pb_sw.lng())
            BB_pb_sw = new GLatLng(BB_pb_sw.lng(), x1);
        if (x1 > BB_pb_ne.lng())
            BB_pb_ne = new GLatLng(BB_pb_ne.lng(), x1);
        polyz.push(new GLatLng(y1, x1))
    }
    if (from > 0 && polyz.length / from < 1.8)
        return;
    var x = 0, y = 0;
    for (kvid in polyz)
        if (kvid >= 0) {
            if (polyz[kvid].lng() > 155)
                x = 1;
            else
                if (polyz[kvid].lng() < -155)
                    y = 1
        }
    var type = 1;
    if (x && y)
        type = 2;
    polyz.push(new GLatLng((cinf[1] + parseFloat(cinf[3])) / 1000000, (cinf[0] + parseFloat(cinf[2])) / 1000000));
    Mapia_drawpolyone(polyz, type, obj)
}

function Mapia_drawpolyone(from, type, obj){
    if (Mapia_polygonishiden != obj.rid) {
        Mapia_hidepolygon();
        return;
    }
    Mapia_hidepolygon();
    if (type == 1) {
        Mapia_polygonout = new GPolygon(from, '#7FF766', 2, 1, '#7FF766', 0.1)
    }
    else {
        Mapia_polygonout = new GPolyline(from, '#7FF766', 2, 1)
    }
    map.addOverlay(Mapia_polygonout);
}

function bring_image_up(obj){
    obj.style.width = 79;
    obj.style.height = 79;
    obj.width = 79;
    obj.height = 79;
}

function bring_image_down(obj){
    obj.style.width = 64;
    obj.style.height = 64;
    obj.width = 64;
    obj.height = 64;
}

var finf_tm = 0;
var finf_h_tm = 0;
function info_flat_hide(id, hide){
    if (!id)
        id = info_flat_current;
    clearTimeout(finf_h_tm);
    if (id == info_flat_current) {
        if (hide) {
            $("flat_info_div").hide();
            info_flat_current = 0;
            return;
        }
        if (finf_tm) {
            clearTimeout(finf_tm);
            finf_tm = 0;
            info_flat_current = 0;
            return;
        }
        {
            finf_h_tm = setTimeout("info_flat_hide(" + id + ",1)", 500);
        }
    }
}

function info_flat(fid, id, show){
    clearTimeout(finf_tm);
    clearTimeout(finf_h_tm);
    finf_tm = finf_h_tm = 0;
    if (!show) {
        var cf = "info_flat(" + fid + "," + id + ",1)";
        info_flat_current = id;
        finf_tm = setTimeout(cf, 200);
    }
    else {
        $("flat_info_top").innerHTML = "&nbsp;Квартира №" + fid;
        $("flat_info").innerHTML = "&nbsp;Постучали в дверь...";
        $("flat_info_div").style.left = getRealOffsetX($("f" + id)) + 33;
        $("flat_info_div").style.top = getRealOffsetY($("f" + id)) - 26;
        $("flat_info_div").show();
        new Ajax.Updater("flat_info", "loader/flat_knock.php?F=" + id, {
            asynchronous: true,
            evalScripts: true
        });
    }
}

function SFloor(f){
    document.write("<tr>");
}

function EFloor(){
    document.write("</td>");
}

function FN(){
    document.write("<td  bgcolor=#825340><img src='img/hv/f_na.gif'></td>");
}

function FD(id, fid){
    document.write("<td onclick=fch(" + id + ") id=f" + id + " bgcolor=#825340 onmouseover=info_flat(" + fid + "," + id + ",0) onmouseout=info_flat_hide(" + id + ",0) ><img src='img/hv/f_off.gif'></td>");
}

var now_comenting_in = 0;
var comment_allow = 0;
function spawn_cament(id){
    if (comment_allow) {
        t = "<textarea Id=MyCommentBy_" + id + " rows=5 style='width:400px;bgcolor:#F0F0F0'></textarea><BR><input Id=MyCommentBy_" + id + "_submit type=button Value='Отправить камент' onclick=addcoment(" + id + ")>";
        t += "<font style='font-size:9px'>Все html тэги будут жутко вырезаны!</font>";
    }
    else
        t = 'Ходите общаться - регистрируйтесь!';
    {
        $("CommTd_" + id).innerHTML = t;
    }
}

function addcoment(id){
    v = $("MyCommentBy_" + id).value;
    $("MyCommentBy_" + id).value = '';
    $("MyCommentBy_" + id + "_submit").enabled = false;
    new Ajax.Updater("coment_party", DRR + "loader/coment_updater.php?obj=" + now_comenting_in + "&cid=" + id, {
        method: 'post',
        parameters: {
            'message': v
        },
        encoding: "windows-1251",
        asynchronous: true,
        onComplete: function(transport){
            $("CommTd_" + id).innerHTML = '';
        }
    });
    $("CommTd_" + id).innerHTML = '<img src=imgs/icon/load.gif><BR>каментарю..';
}

function make_mapia_text_editor(mid, sec){
    H = parseInt($("content_holder").clientHeight);
    if (H < 200)
        H = 200;
    $("content_holder").innerHTML = "<div id=content_target style='height:" + H + "px'>Гружу редактор... моментос..</div>";
    new Ajax.Updater("content_target", DRR + "editors/mapia_text_editor.php?mid=" + mid + "&seq=" + sec, {
        encoding: "windows-1251",
        asynchronous: true
    });
}

function make_mapia_text_load(mid, seq){
    new Ajax.Updater("content_target", DRR + "loader/mapia_text_show.php?mid=" + mid + "&seq=" + seq, {
        encoding: "windows-1251",
        asynchronous: true
    });
}

function wish_to_add_place(){
    if (!aCurrentUser.id) {
        alert("Вы должны быть зарегистрированным пользователем для совершения этой операции");
        return;
    }
    fRet = confirm('Активировать режим редактора?');
    if (fRet) {
        var center = geo_map_center;
        zoom = 10;
        try {
            center = geo_map.getCenter();
            zoom = geo_map.getZoom();
        }
        catch (e) {
        }
        lat = Math.round(center.y * 1000000);
        lng = Math.round(center.x * 1000000);
        goloc = "lat=" + lat + "&lng=" + lng + "&z=" + zoom;
        window.location.href = DRR + "add/place/index.html#" + goloc;
    }
}

function nav_add_image(mid){
    if (!aCurrentUser.id) {
        alert("Мама учила не принимать подарки от незнакомых людей");
        return;
    }
    var showW = 0;
    if (!dark_panel_on)
        showW = 1;
    dark_on();
    if (showW)
        $("darkdotinner").innerHTML = '<img src=imgs/icon/load.gif>';
    new Ajax.Updater("darkdotinner", DRR + "editors/mapia_image_upload.php?mid=" + mid, {
        encoding: "windows-1251",
        asynchronous: true,
        evalScripts: true,
        onFail: function(){
            dark_off();
            alert("непроперло");
        }
    });
}

function storm_done(){
    $("storm_tag").innerHTML = 'Зарубленно';
    $("storm_tag").className = 'nav_a_S';
    dark_off();
}

function save_this_page(){
    var showW = 0;
    if (!dark_panel_on)
        showW = 1;
    dark_on();
    if (showW)
        $("darkdotinner").innerHTML = '<img src=imgs/icon/load.gif><BR>Идет загрузка...';
    lat = 0;
    lng = 0;
    zoom = 0;
    try {
        var center = GetMap().getCenter();
        lat = Math.round(center.y * 1000000);
        lng = Math.round(center.x * 1000000);
        zoom = GetMap().getZoom();
    }
    catch (e) {
    }
    yahoo = {
        'class': aCurrentUser.headerInClass,
        'code': aCurrentUser.headerInObject,
        'lat': lat,
        'lng': lng,
        'zoom': zoom,
        'title': document.title
    };
    new Ajax.Updater("darkdotinner", DRR + "editors/storm_tag.php", {
        method: 'post',
        parameters: yahoo,
        encoding: "windows-1251",
        evalScripts: true,
        asynchronous: true,
        evalScripts: true,
        onFail: function(){
            dark_off();
            alert("непроперло");
        }
    });
}

function news_rewritescanspore(){
    for (i = 1;; ++i) {
        obj = $("newspore" + i);
        if (!obj)
            return;
        obj.href = 'javascript:popup_newspore(' + obj.name.substring(4) + ');';
    }
}

function popup_newspore(id){
    if (!dark_panel_on)
        showW = 1;
    dark_on();
    if (showW)
        $("darkdotinner").innerHTML = 'в данный момент я гружу новость :)<BR>';
    new Ajax.Updater("darkdotinner", "loader/newspore.php?content_id=" + id, {
        encoding: "windows-1251",
        asynchronous: true,
        evalScripts: true
    });
}

function blog_add_open(){
    if (dark_panel_on == 0) {
        var showW = 0;
        if (!dark_panel_on)
            showW = 1;
        dark_on();
        if (showW)
            $("darkdotinner").innerHTML = '<img src=imgs/icon/load.gif><BR>Идет загрузка...';
        new Ajax.Updater("darkdotinner", DRR + "editors/spot_blog.php", {
            method: 'get',
            encoding: "windows-1251",
            evalScripts: true,
            asynchronous: true,
            onFail: function(){
                dark_off();
                alert("непроперло");
            }
        });
    }
    else {
        if (!window.open(DRR + "editors/spot_blog.php?alone", 'Add_Blog_Open', 'width=450,height=370,toolbar=0,location=0'))
            alert('Окошко не открывается :(');
    }
}

function OneAddNewBlog(value, name){
    if (typeof(mycaller) != 'undefined' && typeof(mycaller.OneAddNewBlog) != 'undefined' && this != mycaller)
        mycaller.OneAddNewBlog(value, name);
    else {
        if ($("BlogPost")) {
            $("BlogPost").options[$("BlogPost").options.length] = new Option(name, value);
            $("BlogPost").selectedIndex = $("BlogPost").options.length - 1;
        }
        else
            alert("no blogpost");
    }
}

function get_me_in_blog(blogid){
    new Ajax.Request(DRR + "editors/getinblog.php?blogid=" + blogid, {
        evalScripts: true,
        asynchronous: true
    });
}

function my_favorites(how){
    how = how || 0;
    mpr = $("my_places_ref");
    mfd = $("my_favorites");
    if (mfd.style.display == '' && !how) {
        mfd.hide();
        return;
    }
    mfd.style.top = getRealOffsetY(mpr);
    mfd.style.left = (parseInt(getRealOffsetX(mpr)) - 60) + 'px';
    mfd.style.width = (parseInt(document.body.clientWidth - getRealOffsetX(mpr)) + 50) + 'px';
    if (!how)
        mfd.innerHTML = '<center>Найдется все, со временем</center>'
    new Ajax.Updater("my_favorites", DRR + "loader/my_favorites.php", {
        parameters: {
            rq: how
        },
        method: 'post',
        asynchronous: true,
        encoding: "windows-1251"
    });
    mfd.style.display = '';
}<!--

var script_comm = "// редактор просто взят с харба, потому что хабра - зе бест :)";
var mouseY;
var textarea_height;
var undo = '';
var quote = false;
function hab_edit_text_undo(){
    if (undo)
        $("htmlarea").value = undo;
    $("undoimg").src = "editors/img/undo_grey.gif";
}

function hab_edit_text_save_undo(){
    undo = $("htmlarea").value;
    $("undoimg").src = "editors/img/undo.gif";
}

function hab_edit_text_clear_undo(){
    undo = '';
    $("undoimg").src = "editors/img/undo_grey.gif";
}

function hab_edit_getCursor(input){
    var result = {
        start: 0,
        end: 0
    };
    if (input.setSelectionRange) {
        result.start = input.selectionStart;
        result.end = input.selectionEnd;
    }
    else
        if (!document.selection) {
            return 0;
        }
        else
            if (document.selection && document.selection.createRange) {
                var range = document.selection.createRange();
                var stored_range = range.duplicate();
                stored_range.moveToElementText(input);
                stored_range.setEndPoint('EndToEnd', range);
                result.start = stored_range.text.length - range.text.length;
                result.end = result.start + range.text.length;
            }
    return result;
}

function hab_edit_setCursor(txtarea, start, end){
    if (txtarea.createTextRange) {
        var range = txtarea.createTextRange();
        range.move("character", start);
        range.select();
    }
    else
        if (txtarea.selectionStart) {
            txtarea.setSelectionRange(start, end);
        }
}

function hab_edit_insert_tag(starttag, endtag){
    hab_edit_text_save_undo();
    var txtarea = $("htmlarea");
    txtarea.focus();
    var scrtop = txtarea.scrollTop;
    var cursorPos = hab_edit_getCursor(txtarea);
    if (cursorPos.start == cursorPos.end) {
        var nuCursorPos = cursorPos.start + starttag.length;
        txtarea.value = txtarea.value.substring(0, cursorPos.start) + starttag + endtag + txtarea.value.substr(cursorPos.start);
        hab_edit_setCursor(txtarea, nuCursorPos, nuCursorPos);
    }
    else {
        var txt_pre = txtarea.value.substring(0, cursorPos.start);
        var txt_sel = txtarea.value.substring(cursorPos.start, cursorPos.end);
        var txt_aft = txtarea.value.substring(cursorPos.end);
        txtarea.value = txt_pre + starttag + txt_sel + endtag + txt_aft;
        var nuCursorPos = String(txt_pre + starttag + txt_sel + endtag).length;
        hab_edit_setCursor(txtarea, nuCursorPos, nuCursorPos);
    }
    if (scrtop)
        txtarea.scrollTop = scrtop;
}

function hab_edit_insert_text_quote(){
    var txtarea = $("htmlarea");
    var cur = hab_edit_getCursor(txtarea);
    if (cur.start != cur.end) {
        hab_edit_insert_tag("<quote>", "</quote>");
    }
    else {
        $("quoteimg").src = quote ? "http://habrahabr.ru/i/ta/raquo.gif" : "http://habrahabr.ru/i/ta/laquo.gif";
        hab_edit_insert_tag("", quote ? "&laquo;" : "&raquo;");
        quote = !quote;
    }
}

function hab_edit_insert_text_mdash(){
    hab_edit_insert_tag("", "&mdash;");
}

function hab_edit_insert_text_blockquote(){
    hab_edit_insert_tag("<blockquote>", "</blockquote>");
}

function hab_edit_insert_text_b(){
    hab_edit_insert_tag("<strong>", "</strong>");
}

function hab_edit_insert_text_img(){
    $("addimgdiv").style.display = "block";
}

function hab_edit_insert_text_img_close(){
    $("addimgdiv").style.display = "none";
}

function hab_edit_insert_text_i(){
    hab_edit_insert_tag("<em>", "</em>");
}

function hab_edit_insert_text_user(){
    var txtarea = $("htmlarea");
    var cur = hab_edit_getCursor(txtarea);
    var username = window.prompt("Кто?", '');
    if (username) {
        if (cur.start != cur.end) {
            hab_edit_insert_tag('<hh user="' + username + '">', '</hh>');
        }
        else {
            hab_edit_insert_tag('', '<hh user="' + username + '" />');
        }
    }
}

function hab_edit_insert_text_u(){
    hab_edit_insert_tag("<u>", "</u>");
}

function hab_edit_insert_text_s(){
    hab_edit_insert_tag("<s>", "</s>");
}

function hab_edit_insert_text_link(){
    var txtarea = $("htmlarea");
    var cur = hab_edit_getCursor(txtarea);
    if (cur.start != cur.end) {
        var hreff = window.prompt("Введите URL ссылки", '');
        var regexx = new RegExp('([A-Za-z][A-Za-z0-9+.-]{1,120}:[A-Za-z0-9/](([A-Za-z0-9$_.+!*,;/?:@&~=-])|%[A-Fa-f0-9]{2}){1,333}(#([a-zA-Z0-9][a-zA-Z0-9$_.+!*,;/?:@&~=%-]{0,1000}))?)');
        if (hreff && hreff.match(regexx)) {
            hab_edit_insert_tag('<a href=\'' + hreff + '\' target=_blank>', "</a>");
        }
        else
            alert("Это не URL");
    }
    else {
        alert("Сначала выделите текст, который вы желаете сделать ссылкой");
    }
}

function hab_edit_resize_mousemove(evt){
    if (!evt)
        evt = this.event;
    if (evt.pageY)
        var newheight = evt.pageY - mouseY;
    else
        var newheight = evt.clientY - mouseY;
    if (newheight >= 50) {
        $("htmlarea").style.height = newheight + "px";
        textarea_height = newheight;
    }
}

function hab_edit_resize_start(evt){
    if (!evt)
        evt = this.event;
    if (!textarea_height)
        textarea_height = 100;
    if (evt.pageY)
        mouseY = evt.pageY - textarea_height;
    else
        mouseY = evt.clientY - textarea_height;
    if (document.addEventListener) {
        document.addEventListener('mousemove', hab_edit_resize_mousemove, false);
    }
    else {
        document.attachEvent('onmousemove', hab_edit_resize_mousemove);
    }
}

function hab_edit_resize_stop(){
    if (document.addEventListener) {
        document.removeEventListener('mousemove', hab_edit_resize_mousemove, false);
    }
    else {
        document.detachEvent('onmousemove', hab_edit_resize_mousemove);
    }
}

if (document.addEventListener) {
    document.addEventListener('mouseup', hab_edit_resize_stop, false);
}
else {
    document.attachEvent('onmouseup', hab_edit_resize_stop);
}
function hab_edit_open_help(){
    var showW = 0;
    if (!dark_panel_on)
        showW = 1;
    dark_on();
    if (showW)
        $("darkdotinner").innerHTML = '<img src=imgs/icon/load.gif>';
    new Ajax.Updater("darkdotinner", "editors/help.php", {
        encoding: "windows-1251",
        asynchronous: true,
        evalScripts: true,
        onFail: function(){
            dark_off();
            alert("непроперло");
        }
    });
}

function hab_edit_showpicuploadform(){
    var showW = 0;
    if (!dark_panel_on)
        showW = 1;
    dark_on();
    if (showW)
        $("darkdotinner").innerHTML = '<img src=imgs/icon/load.gif>';
    new Ajax.Updater("darkdotinner", "editors/upload.php", {
        encoding: "windows-1251",
        asynchronous: true,
        evalScripts: true,
        onFail: function(){
            dark_off();
            alert("непроперло");
        }
    });
}

function hab_edit_insert_text_loc(){
    var showW = 0;
    if (!dark_panel_on)
        showW = 1;
    dark_on();
    if (showW)
        $("darkdotinner").innerHTML = '<img src=imgs/icon/load.gif>';
    new Ajax.Updater("darkdotinner", "editors/locality.php", {
        encoding: "windows-1251",
        asynchronous: true,
        evalScripts: true,
        onFail: function(){
            dark_off();
            alert("непроперло");
        }
    });
}

function hab_edit_videoform(){
    var showW = 0;
    if (!dark_panel_on)
        showW = 1;
    dark_on();
    if (showW)
        $("darkdotinner").innerHTML = '<img src=imgs/icon/load.gif>';
    new Ajax.Updater("darkdotinner", "editors/video.php", {
        encoding: "windows-1251",
        asynchronous: true,
        evalScripts: true,
        onFail: function(){
            dark_off();
            alert("непроперло");
        }
    });
}

function hab_edit_preview(){
    var showW = 0;
    if (!dark_panel_on)
        showW = 1;
    dark_on();
    if (showW)
        $("darkdotinner").innerHTML = '<img src=imgs/icon/load.gif><BR>....Предпросмотр грузиться....';
    new Ajax.Updater("darkdotinner", "editors/preview.php", {
        encoding: "windows-1251",
        asynchronous: true,
        evalScripts: true,
        onFail: function(){
            dark_off();
            alert("непроперло");
        }
    });
}

function hab_edit_get_content(){
    return $("htmlarea").value;
}
