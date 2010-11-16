function photoUpload(){

}

photoUpload.name = 'photoUpload';
ModuleManager.add(photoUpload);


photoUpload.prototype.afterInit = function(){
    fb('initing... photoUpload' )
    this.initUploader();
    this.initListeners();
}

photoUpload.prototype.initUploader = function(){
    this.uploader = new plupload.Uploader({
        runtimes : 'flash,gears,silverlight,browserplus,html5,html4',
        //        runtimes : 'html5,html4',
        max_file_size : '10mb',
        unique_names : true,
        multipart: true,
        chunk_size: '10kb',
        url : app.baseUrl + '/photo/upload',
        browse_button : 'pickfiles',
        container : 'container',
        flash_swf_url : app.baseUrl + '/plupload/js/plupload.flash.swf',
        silverlight_xap_url : app.baseUrl + '/plupload/js/plupload.silverlight.xap',
        // Specify what files to browse for
        filters : [{
            title : "Image files",
            extensions : "jpg,jpeg,gif,png"
        }],
        resize : {
            width : 320,
            height : 240,
            quality : 90
        }
    });

    this.uploader.bind('Init', this.onInit.delegate(this));

    this.uploader.init();

    this.uploader.bind('FilesAdded',this.onAdd.delegate(this));
    
    this.uploader.bind('FilesRemoved',this.onRemove.delegate(this));

    this.uploader.bind('UploadProgress', this.onProgress.delegate(this));

    this.uploader.bind('Error', this.onError.delegate(this));

    this.uploader.bind('FileUploaded', this.onUploaded.delegate(this));
}

photoUpload.prototype.initListeners= function() {
    var self = this;
    $('#uploadfiles').click(function(e) {
        self.uploader.start();
        e.preventDefault();
    });

    $('#photoList a').live('click', function(){
        var file = self.uploader.getFile($(this).attr('fileId'));
        self.uploader.removeFile(file);
        return false;
    });
}

photoUpload.prototype.onInit = function(up, params) {
    $('#photoList').html("<tr><td>Current runtime: " + params.runtime + "</td></tr>");
}

photoUpload.prototype.onAdd = function(up, files){
    $.each(files, function(i, file) {
        $('#photoList').append(
            '<tr id="' + file.id + '">' +
            '<td>' +file.name +'</td><td>' +
            '<td><div class="fileLoader"><div id="loader_' + file.id + '" style=""></div></div></td><td>' +
            '' + plupload.formatSize(file.size) + '</td><td>'+
            '<a href="" fileId = "' + file.id + '">x</a>' +
            '</tr>');
    });

    up.refresh(); // Reposition Flash/Silverlight
}

photoUpload.prototype.onRemove = function(up, files){
    $.each(files, function(i, file) {
        $('#' + file.id).remove();
    });

    up.refresh(); // Reposition Flash/Silverlight
}

photoUpload.prototype.onProgress= function(up, file) {
    $('#loader_' + file.id).width(file.percent + '%');
    
    fb('uploading ' + file.id)
    fb('percent ' + file.percent)
    fb( file);
}

photoUpload.prototype.onError= function(up, err) {
    $('#photoList').append("<div>Error: " + err.code +
        ", Message: " + err.message +
        (err.file ? ", File: " + err.file.name : "") +
        "</div>"
        );

    up.refresh(); // Reposition Flash/Silverlight
}

photoUpload.prototype.onUploaded= function(up, file) {
    $($('#loader_'+ file.id).parents()[1]).html('готово')
    fb('uploaded ' )
    fb( file);
}
