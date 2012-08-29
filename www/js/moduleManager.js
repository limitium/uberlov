function baseModule() {
}
baseModule.prototype.afterInit = function () {
}

function ModuleManager() {
}

ModuleManager.modules = {};
ModuleManager.add = function (module) {
    fb('add module ' + module.name);
    module.prototype = new baseModule();
    module.prototype.constructor = module;
    module.parent = baseModule.prototype;
    ModuleManager.modules[module.name] = module;
}
ModuleManager.createModules = function () {
    for (module in ModuleManager.modules) {
        try {
            fb('cretate module ' + module);
            app.modules[module] = new ModuleManager.modules[module]();
        } catch (e) {
            fb('error while creating module ' + module);
            fb(e)
        }
    }
}
ModuleManager.afterCreate = function () {
    for (module in ModuleManager.modules) {
        try {
            if (typeof app.modules[module].afterCreate == "function") {
                app.modules[module].afterCreate();
            }
        } catch (e) {
            fb('error while create ' + module);
            fb(e);
        }
    }
}
ModuleManager.afterInit = function () {
    for (module in ModuleManager.modules) {
        try {
            app.modules[module].afterInit();
        } catch (e) {
            fb('error while initing ' + module);
            fb(e);
        }
    }
}