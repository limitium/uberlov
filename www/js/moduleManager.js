ModuleManager = {
    modules:{},
    add:function (module) {
        fb('add module ' + module.name);
        ModuleManager.modules[module.name] = module;
    },
    createModules:function () {
        for (module in ModuleManager.modules) {
            try {
                fb('cretate module ' + module);
                app.modules[module] = new ModuleManager.modules[module]();
            } catch (e) {
                fb('error while creating module ' + module);
                fb(e)
            }
        }
    },
    afterInit:function () {
        for (module in ModuleManager.modules) {
            try {
                if (typeof app.modules[module].afterInit == "function") {
                    app.modules[module].afterInit();
                }
            } catch (e) {
                fb('error while initing ' + module);
                fb(e);
            }
        }
    },
    afterCreate:function () {
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
}
