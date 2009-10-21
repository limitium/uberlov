
fb =  console.log;

app = {
    modules: {},
    
    run: function(){
        ModuleManager.initModules();
    }
}


$(document).ready(function(){
    app.run();
});
