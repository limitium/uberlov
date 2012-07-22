function photoModule() {

}

photoModule.name = 'photoModule';
ModuleManager.add(photoModule);


photoModule.prototype.afterInit = function () {
    fb('initing... photoModule')
    this.initListeners();
}

photoModule.prototype.initListeners = function () {
    $(".thumbs a.location_photo").colorbox({
        rel:".location_photo",
        current: "Фото {current} из {total}",
        maxWidth:"1024px",
        maxHeight:"600px",
        fixed:true,
        scalePhotos:true
    });
    return;
    $('.thumbs a').live('click', function () {
        fb('a click')
        var a = $(this);

        if (a.attr('removing')) {
            return false;
        }

        a.addClass('loaded');
        var photos = $(this).parents()[2];
        var imageHolder = $('.image', photos);
        var oldImage = $('.image img', photos);

        oldImage.attr('src', app.url('/images/progress_bar.gif')).addClass('loading');

        var img = $(new Image());
        img.load(
            function () {
                oldImage.fadeOut();
                oldImage.remove();

                img.hide();
                imageHolder.append(img);
                img.fadeIn();
            }).attr('src', a.attr('href'));
        return false;
    });

}