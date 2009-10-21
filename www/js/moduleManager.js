function ModuleManager(){
    
}

ModuleManager.modules = {};
ModuleManager.add = function(module){
    module.prototype = new ModuleManager();
    module.prototype.constructor = module;
    module.parent = ModuleManager.prototype;
    ModuleManager.modules[module.name] = module;
}
ModuleManager.initModules = function(){
    for(module in ModuleManager.modules){
        app.modules[module] = new ModuleManager.modules[module]();
    }
}