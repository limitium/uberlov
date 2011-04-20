function formShow(){
    this.inputs = [];
    this.initListeners();
    this.moveLabels();
    throw "depricated!!!";
}
formShow.name = 'formShow';
ModuleManager.add(formShow);


formShow.prototype.afterInit = function(){
    $('textarea').tinymce({
    });
}

formShow.prototype.initListeners = function(){
    var self = this;
    $('form',  this.comment).submit(function(){
        $.each(self.inputs, function(){
            if(this.val() == this.label){
                this.val('');
            }
        });
    });
}
formShow.prototype.moveLabels= function(){
    var self = this;
    $('table.form th label').each(function(){
        var label = $(this);
        
        $('#'+label.attr('for')).each(function(){
            var input = $(this);
            self.inputs.push(input);

            if(label.attr('for').indexOf('_date')>-1){
                input.DatePicker({
                    format:'d.m.Y',
                    date: input.val(),
                    current: input.val(),
                    starts: 1,
                    position: 'r',
                    onChange: function(formated, dates){
                        input.removeClass('labeled');
                        input.val(formated);
                        input.DatePickerHide();
                    },
                    onBeforeShow: function(formated, dates){
                        if(input.val() == input.label){
                            input.val('');
                        }
                    }
                });
            }
            
            if(input.attr('type') == 'checkbox'){
                $(input.parents()[0]).append('<span>'+label.html()+'</span>');
            }else if(input.attr('type') == 'file'){
                var td = input.parent();
                input.remove();
                td.append('<div class="blocker" /><input type="file" id="'+input.attr('id')+'" name="'+input.attr('name')+'" class="customFile" /><div class="fakeButton" >'+label.html()+'</div><div class="fileName" />');
                
                var newInput = $('input',td);
                var fileName = $('.fileName',td);
                var button = $('.fakeButton',td);
                
                var actTog = function(){
                    button.toggleClass('active');
                };
                
                newInput.hover(actTog, actTog);                
                button.hover(actTog, actTog);
                
                newInput.change(function(){
                    var fileTitle = newInput.val();
                    //                    var fileTitle = file.replace(/.*(.*)/, "$1"); //выдираем название файла для windows
                    //                    fileTitle = fileTitle.replace(/.*/(.*)/, "$1"); //выдираем название файла для unix-систем
                    fileName.html(fileTitle);

                    var ext = fileTitle.substr(fileTitle.indexOf('.')+1);
                    var pos;
                    if (ext) {
                        switch (ext.toLowerCase()) {
                            case 'doc':
                                pos = '0';
                                break;
                            case 'bmp':
                                pos = '16';
                                break; 
                            case 'jpg':
                                pos = '32';
                                break;
                            case 'jpeg':
                                pos = '32';
                                break;
                            case 'png':
                                pos = '48';
                                break;
                            case 'gif':
                                pos = '64';
                                break;
                            case 'psd':
                                pos = '80';
                                break;
                            case 'mp3':
                                pos = '96';
                                break;
                            case 'wav':
                                pos = '96';
                                break;
                            case 'ogg':
                                pos = '96';
                                break;
                            case 'avi':
                                pos = '112';
                                break;
                            case 'wmv':
                                pos = '112';
                                break;
                            case 'flv':
                                pos = '112';
                                break;
                            case 'pdf':
                                pos = '128';
                                break;
                            case 'exe':
                                pos = '144';
                                break;
                            case 'txt':
                                pos = '160';
                                break;
                            default:
                                pos = '176';
                                break;
                        };
                        fileName.css({
                            display: 'block',
                            background:'url(' + app.url('/images/form/icons.png') + ') no-repeat 0 -'+pos+'px'
                        });
                    }
                });
                
            }else{

                input.label = label.html();
                                
                input.focus(function(){
                    if(input.val() == input.label){
                        input.val('');
                        input.removeClass('labeled');
                    }
                });

                input.blur(function(){
                    if(input.val() == '' || input.val() == input.label){
                        input.val(input.label);
                        input.addClass('labeled');
                    }
                }).trigger('blur');
            }
        });
    }).remove();
}
