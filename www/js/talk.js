function talk(){
}
talk.name = 'talk';
ModuleManager.add(talk);


talk.prototype.afterInit = function(){
    var sections  = $('.sectionMenu>ul');
    $('.section_min').click(function(){
        sections.slideUp();
        return false;
    });
    $('.section_max').click(function(){
        sections.slideDown();
        return false;
    });
}
