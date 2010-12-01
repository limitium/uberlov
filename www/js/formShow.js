function formShow(){
    this.inputs = [];
}
formShow.name = 'formShow';
ModuleManager.add(formShow);


formShow.prototype.afterInit = function(){
    fb('initing... formShow' )
    this.initListeners();
    this.moveLabels();
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
            }else{

                input.label = label.html();
                                
                input.focus(function(){
                    if(input.val() == input.label){
                        input.val('');
                        input.removeClass('labeled');
                    }
                });

                input.blur(function(){
                    if(input.val() == ''){
                        input.val(input.label);
                        input.addClass('labeled');
                    }
                }).trigger('blur');
            }
        });
    }).remove();
}
