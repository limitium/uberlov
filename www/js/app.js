if(typeof(console)!='undefined'){
    fb =  console.log;
}else{
    fb = function(){}
}

Function.prototype.delegate = function(){
    var arg = $.makeArray(arguments);
    var scope = arg.shift();

    var fun = this;
    return function(){
        return fun.apply(scope,$.makeArray(arguments).concat(arg));
    };
}
// Some extension of jQuery
$.extend({
    /* The opposiite of jQuery's native $.param() method.
     * Deserialises a parameter string to an object:
     */
    unparam: function(params) {
        var obj = new Object();
        $.each(params.split('&'), function() {
            var param = this.split('=');
            var key = decodeURIComponent(param[0]);
            var value = decodeURIComponent(param[1]);
            obj[key] = value;
        });
        return obj;
    }
});
app = {
    baseUrl:'/ht/www',
    baseUrl:'',
    csrf: {},
    modules: {},
    
    run: function(){
        this.$ = $(this);
        ModuleManager.initModules();
        this.$.trigger('inited');
    },
    getContentMenu:function(){
        return $('#content_menu').get(0);
    },
    getModule:function(module){
        return app.modules[module];
    },
    formatHtml:function(html){
        return $('<div class="baloon">' + html + '</div>').get(0);
    },
    getForm:function(url,handler){
        $.ajax({
            type: 'get',
            url: this.url(url),
            dataType: 'html',
            success: function(form){
                handler(app.formatHtml(form));
            },
            error: function(request, error, exception){
                $.blockUI({
                    message: request.responseText,
                    centerY: 0,
                    css: {
                        top: '10px',
                        left: '10px'
                    }
                });
                $('.blockOverlay').click($.unblockUI);
            //                $.growlUI(request.statusText,request.status);
            }
        });
    },
    sendData: function(data){
        $.ajax({
            type: 'post',
            url: data.url,
            dataType: 'json',
            data: data.data,
            success: function(resp){
                data.handler(resp);
            },
            error: function(request, error, exception){
                $.blockUI({
                    message: request.responseText,
                    centerY: 0,
                    css: {
                        top: '10px',
                        left: '10px'
                    }
                });
                $('.blockOverlay').click($.unblockUI);
            }
        });
    },
    sendForm:function(form,handler){
        var url=$('form', form).attr('action');
        var data = {};
        $('*[name]', form).each(function(){
            data[$(this).attr('name')] = $(this).val();
        })
        $.ajax({
            type: 'post',
            url: url,
            dataType: 'html',
            data: data,
            success: function(form){
                handler(form);
            },
            error: function(request, error, exception){
                $.blockUI({
                    message: request.responseText,
                    centerY: 0,
                    css: {
                        top: '10px',
                        left: '10px'
                    }
                });
                $('.blockOverlay').click($.unblockUI);
            //                $.growlUI(request.statusText,request.status);
            }
        });
    },
    formSubmiter: function(opt){
        $('form', opt.form).submit(function(){
            $(opt.form).block({
                message: app.loaderTag() ,
                overlayCSS: {
                    backgroundColor: '#eee'
                },
                css: {
                    border:		'0px',
                    opacity:        '0.5',
                    backgroundColor:'#eee'
                }
            });
            app.sendForm(opt.form, function(newForm){
                $(opt.form).unblock();
                
                opt.response(newForm);                
            });
            return false;
        });    
    },
    getJSON:function(url,handler){
        $.ajax({
            type: 'get',
            url: this.url(url),
            dataType: 'json',
            success: function(data){
                handler(data);
            },
            error: function(request, error, exception){
                $.blockUI({
                    message: request.responseText,
                    centerY: 0,
                    css: {
                        top: '10px',
                        left: '10px'
                    }
                });
                $('.blockOverlay').click($.unblockUI);
            //                $.growlUI(request.statusText,request.status);
            }
        });
    },
    popUp: function(msg){
        $.blockUI({
            message: msg,
            fadeIn: 700,
            fadeOut: 700,
            timeout: 2000,
            showOverlay: false,
            css: {
                width: '350px',
                top: '10px',
                left: '',
                right: '10px',
                border: 'none',
                padding: '5px',
                backgroundColor: '#000',
                '-webkit-border-radius': '10px',
                '-moz-border-radius': '10px',
                opacity: .6,
                color: '#fff'
            }
        })
    },
    url: function(url){
        return this.baseUrl+url;
    },
    loaderTag: function(){
        return "<img src='" + this.url('/images/loader-small.gif') + "'/>";
    }
    
}


$(document).ready(function(){
    app.run();
});
