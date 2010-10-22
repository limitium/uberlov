function profitAdd(){
}

profitAdd.name = 'profitAdd';
ModuleManager.add(profitAdd);


profitAdd.prototype.afterInit = function(){
    this.initDate();
    this.initListeners();
    this.loadDetails();
}

profitAdd.prototype.initDate= function(){
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
}

profitAdd.prototype.initListeners = function(){

    $('#addProfitDetail').click(this.onAdd.delegate(this));
    $('.removeProfitDetail').live('click',this.onRemove.delegate(this));
    $('.profitNew form').submit(this.onSubmit.delegate(this));

}

profitAdd.prototype.loadDetails = function(){
    var self = this;
    $.each($.JSON.decode($('#profit_details').val()), function(){
        self.addRow({
            fish: {
                val: this.fish_id,
                text: $('#profit_fishes option[value='+this.fish_id+']').html()
            },
            style: {
                val: this.style_id,
                text: $('#profit_styles option[value='+this.style_id+']').html()
            },
            qty: this.qty
        });
    });
    this.countDetailQty();
}

profitAdd.prototype.onAdd = function(){
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
        this.addRow({
            fish: {
                val: fish.val(),
                text: fish.text()
            },
            style: {
                val: style.val(),
                text: style.text()
            },
            qty: qty
        });
    }

    this.countDetailQty();
    return false;
}

profitAdd.prototype.addRow = function(data){
    $('.profitDetails tbody').append('<tr fish="'+data.fish.val+'" styles="'+data.style.val+'" qty="'+data.qty+'"><td>'+data.fish.text+'</td><td>'+ data.style.text+'</td><td>'+data.qty+'</td><td><input type="button" value="&nbsp;-&nbsp;" class="button removeProfitDetail"></td></tr>');
}

profitAdd.prototype.onRemove = function(e){
    $($(e.target).parents()[1]).remove();
    this.countDetailQty();
    return false;
}

profitAdd.prototype.onSubmit = function(){
    var details = [];

    $('.profitDetails tbody tr').each(function(){
        details.push({
            qty: parseFloat(this.getAttribute('qty')),
            style_id: parseFloat(this.getAttribute('styles')),
            fish_id: parseFloat(this.getAttribute('fish'))
        });
    });

    $('#profit_details').val($.JSON.encode(details));
}

profitAdd.prototype.countDetailQty = function(){
    var qty = 0;
    $('.profitDetails tbody tr').each(function(){
        qty += parseFloat(this.getAttribute('qty'));
    });
    $('#detailTotal').html(qty);
}