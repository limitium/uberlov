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
    baseUrl:'/frontend_dev.php',
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
        var jForm = $(html);

        var cont = jQuery('<div class="baloon" />');
        $.each(jForm,function(){
            cont.append(this);
        })
        
        return cont.get(0)
    },
    getForm:function(url,handler){
        $.ajax({
            type: 'get',
            url: this.baseUrl+url,
            dataType: 'html',
            success: function(form){
                handler(app.formatHtml(form));
            },
            error: function(request, error, exception){
                $.growlUI(request.statusText,request.status);
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
                $.growlUI(request.statusText,request.status);
            }
        });
    },
    getJSON:function(url,handler){
        $.ajax({
            type: 'get',
            url: this.baseUrl+url,
            dataType: 'json',
            success: function(data){
                handler(data);
            },
            error: function(request, error, exception){                
                $.growlUI(request.statusText,request.status);
            }
        });
    }
}


$(document).ready(function(){
    app.run();
});
