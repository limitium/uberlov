function profitAdd(){
}

profitAdd.name = 'profitAdd';
ModuleManager.add(profitAdd);


profitAdd.prototype.afterInit = function(){
    this.initListeners();
}

profitAdd.prototype.initListeners = function(){

    var date = $('#profit_date');
    date.DatePicker({
        format:'d.m.Y',
        date: date.val(),
        current: date.val(),
        starts: 1,
        position: 'r',
        onChange: function(formated, dates){
            date.val(formated);
            date.DatePickerHide();
        }
    });

    var self = this;
    $('#addProfitDetail').click(function(){
        var fish = $('#profit_fishes option:selected');
        var style = $('#profit_styles option:selected');
        var qty = parseFloat($('#profit_qty').val());
        var added = false;

        if(!fish.val()>0){
            $.growlUI('Непонятно', 'Кого???');
            return;
        }
        if(!style.val()>0){
            $.growlUI('Непонятно', 'Как???');
            return;
        }
        if(!qty>0){
            $.growlUI('Непонятно', 'Сколько???');
            return;
        }

        $('.profitDetails tbody tr').each(function(){
            var tr = $(this);
            if(tr.attr('fish') ==  fish.val() && tr.attr('styles') == style.val()){
                $($('td',tr)[2]).html(qty +parseFloat(tr.attr('qty')));
                tr.attr('qty',qty + parseFloat(tr.attr('qty')));
                added = true;
            }
        });
        if(!added){
            $('.profitDetails tbody').append('<tr fish="'+fish.val()+'" styles="'+style.val()+'" qty="'+qty+'"><td>'+fish.text()+'</td><td>'+ style.text()+'</td><td>'+qty+'</td><td><input type="button" value="&nbsp;-&nbsp;" class="button removeProfitDetail"></td></tr>');
        }
        self.countDetailQty();
        return false;
    });
    
    $('.removeProfitDetail').live('click', function(){
        $($(this).parents()[1]).remove();
        self.countDetailQty();
        return false;
    });
}

profitAdd.prototype.countDetailQty = function(){
    var qty = 0;
    $('.profitDetails tbody tr').each(function(){
        qty += parseFloat(this.getAttribute('qty'));
    });
    $('#detailTotal').html(qty);
}