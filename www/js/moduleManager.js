function baseModule(){}
baseModule.prototype.afterInit = function(){}

function ModuleManager(){}

ModuleManager.modules = {};
ModuleManager.add = function(module){
    fb('add module ' + module.name);
    module.prototype = new baseModule();
    module.prototype.constructor = module;
    module.parent = baseModule.prototype;
    ModuleManager.modules[module.name] = module;
}
ModuleManager.initModules = function(){
    for(module in ModuleManager.modules){
        try{
            app.modules[module] = new ModuleManager.modules[module]();
            fb('created module ' + module);
            app.$.bind('inited',function(module){
                return function(){
                    try{
                        app.modules[module].afterInit();
                    }catch (e){
                        fb('error while initing ' + module);
                        fb(e);
                    }
                }
            }(module));
        }catch(e){
            fb('error while creating module ' + module);
            fb(e)
        }
    }
}