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
    this.uploader = new SWFUpload({
        // Backend Settings
        upload_url: app.baseUrl + '/photo/upload',
        post_params: {
            "PHPSESSID": "3kbal94vseio0c4h16nirutjp4"
        },

        // File Upload Settings
        file_size_limit : "5 MB",	// 2MB
        file_types : "*.jpg;*.jpeg;",
        file_types_description : "Images",
        file_upload_limit : "0",

        // Event Handler Settings - these functions as defined in Handlers.js
        //  The handlers are not part of SWFUpload but are part of my website and control how
        //  my website reacts to the SWFUpload events.
        file_queue_error_handler : this.onFileQueueError.delegate(this),
        file_dialog_complete_handler : this.onFileDialogComplete.delegate(this),
        file_queued_handler: this.onFileQueued.delegate(this),

        //        суки не делают фикс!!!
        //        upload_progress_handler : this.onUploadProgress.delegate(this),
        upload_error_handler : this.onUploadError.delegate(this),
        upload_success_handler : this.onUploadSuccess.delegate(this),
        upload_complete_handler : this.onUploadComplete.delegate(this),

        // Button Settings
        button_image_url : "images/SmallSpyGlassWithTransperancy_17x18.png",
        button_placeholder_id : "uploadButton",
        button_width: 180,
        button_height: 18,
        button_text : '<span class="button">Добавить фото <span class="buttonSmall">(5 MB Max)</span></span>',
        button_text_style : '.button { font-family: Helvetica, Arial, sans-serif; font-size: 12pt; } .buttonSmall { font-size: 10pt; }',
        button_text_top_padding: 0,
        button_text_left_padding: 18,
        button_window_mode: SWFUpload.WINDOW_MODE.TRANSPARENT,
        button_cursor: SWFUpload.CURSOR.HAND,

        // Flash Settings
        flash_url :  app.baseUrl + "/swfupload/swfupload.swf",

        // Debug Settings
        debug: false
    })
}
photoUpload.prototype.initListeners = function(){
    var self = this;
    
    $('#photoList a').live('click', function(){
        var fileId = $(this).attr('fileId');
        self.uploader.cancelUpload(fileId, false);
        self.removeFile(fileId);
        return false;
    });

    $('.thumbs a').live('mouseover',function(){
        $('button',this).show();
    });

    $('.thumbs a').live('mouseout',function(){
        $('button',this).hide();
    });

    $('.thumbs a button').live('click', function(){
        var parents = $(this).parents();
        
        $(parents[0]).attr('removing', 1);
        $(parents[1]).remove();
    });
}


photoUpload.prototype.removeFile = function (fileId) {
    $('#' + fileId).fadeOut(function(){
        $(this).remove();
    });
}

photoUpload.prototype.onFileQueueError = function (file, errorCode, message) {
    app.popUp('Ошибка очреди ' + file.name + '<br/>' +message);

}

photoUpload.prototype.onFileQueued =  function(file) {
    fb(file);

    $('#photoList').append(
        '<tr id="' + file.id + '">' +
        '<td>' +file.name +'</td><td>' +
        '<div class="fileLoader"><div id="loader_' + file.id + '" style=""></div></div></td><td>' +
        '<a href="" fileId = "' + file.id + '">x</a>' +
        '</tr>');


}
photoUpload.prototype.onFileDialogComplete =  function(numFilesSelected, numFilesQueued) {
    if (numFilesQueued > 0) {
        this.uploadNext();
    }
}

photoUpload.prototype.onUploadProgress = function(file, bytesLoaded) {

    var percent = Math.ceil((bytesLoaded / file.size) * 100);
    fb('file ' + file.id + ' ' + percent);
    $('#loader_'+file.id).width(percent + '%');
}


photoUpload.prototype.onUploadSuccess = function(file, serverData) {

    fb('uploaded ' + file.id);

    var resp = $.parseJSON(serverData);
    if (resp.id) {
        
        var row = $('<li><a href="'+resp.image+'"><img style="display:none" src="'+resp.thumb+'"/><button>-</button></a></li>');
        
        $('img',row).load(function(){
            $(this).fadeIn();
        });

        $('.thumbs').append(row);
        
        this.removeFile(file.id);
    } else {
        $($('#'+file.id).children()[1]).html(serverData);
        app.popUp('Ошибка загрузки ' + file.name + '<br/>' + serverData);
    }


}

photoUpload.prototype.onUploadComplete = function(file) {
    fb('uploaded complete' + file.id);
    /*  I want the next upload to continue automatically so I'll call startUpload here */
    if (this.uploader.getStats().files_queued > 0) {
        this.uploadNext();
    }
}

photoUpload.prototype.onUploadError = function(file, errorCode, message) {
    fb('error ' + file.id);
    var imageName =  "error.gif";
    var progress;
    try {
        switch (errorCode) {
            case SWFUpload.UPLOAD_ERROR.FILE_CANCELLED:
                try {
                //                    progress = new FileProgress(file,  'loader_' + file.id);
                //                    progress.setCancelled();
                //                    progress.setStatus("Cancelled");
                //                    progress.toggleCancel(false);
                }
                catch (ex1) {
                    fb(ex1);
                }
                break;
            case SWFUpload.UPLOAD_ERROR.UPLOAD_STOPPED:
                try {
                //                    progress = new FileProgress(file,  'loader_' + file.id);
                //                    progress.setCancelled();
                //                    progress.setStatus("Stopped");
                //                    progress.toggleCancel(true);
                }
                catch (ex2) {
                    fb(ex2);
                }
            case SWFUpload.UPLOAD_ERROR.UPLOAD_LIMIT_EXCEEDED:
                imageName = "uploadlimit.gif";
                break;
            default:
                alert(message);
                break;
        }

        addImage("images/" + imageName);

    } catch (ex3) {
        fb(ex3);
    }
}
    
photoUpload.prototype.uploadNext = function() {
    var file = this.uploader.getQueueFile(0);
    fb('uploading ' + file.id);

    this.uploader.startResizedUpload(file.id, 800, 600, SWFUpload.RESIZE_ENCODING.JPEG, 95);
    this.onUploadProgress(file,file.size);
//            this.uploader.startUpload();
}
