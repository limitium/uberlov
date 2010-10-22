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
        app.modules[module] = new ModuleManager.modules[module]();
        fb('created module ' + module);
        app.$.bind('inited',app.modules[module].afterInit.delegate(app.modules[module]));
    }
}