jQuery(function($){
  
  $('#signin_username').parents('form').validate({
    rules: {"signin[username]":{"required":true,"maxlength":16,"minlength":4},"signin[password]":{"required":true,"maxlength":128,"minlength":6}},
    messages: {"signin[username]":{"required":"\u041e\u0431\u044f\u0437\u0430\u0442\u0435\u043b\u044c\u043d\u043e.","maxlength":function(a, elem){ return '\\\"' + $(elem).val() + '\\\" \u0441\u043b\u0438\u0448\u043a\u043e\u043c \u0434\u043b\u0438\u043d\u043d\u043e\u0435 \u043c\u0430\u043a\u0441\u0438\u043c\u0443\u043c 16.';},"minlength":"\u042d\u0442\u043e\u0442 \u043b\u043e\u0433\u0438\u043d \u0441\u043b\u0438\u0448\u043a\u043e\u043c \u043a\u043e\u0440\u043e\u0442\u043a\u0438\u0439 \u043c\u0438\u043d\u0438\u043c\u0443\u043c 4 \u0437\u043d\u0430\u043a\u0430"},"signin[password]":{"required":"\u041e\u0431\u044f\u0437\u0430\u0442\u0435\u043b\u044c\u043d\u043e.","maxlength":function(a, elem){ return '\\\"' + $(elem).val() + '\\\" \u0441\u043b\u0438\u0448\u043a\u043e\u043c \u0434\u043b\u0438\u043d\u043d\u043e\u0435 \u043c\u0430\u043a\u0441\u0438\u043c\u0443\u043c 128.';},"minlength":"\u042d\u0442\u043e\u0442 \u043f\u0430\u0440\u043e\u043b\u044c \u043e\u0447\u0435\u043d\u044c \u043a\u043e\u0440\u043e\u0442\u043a\u0438\u0439. \u041e\u043d \u0434\u043e\u043b\u0436\u0435\u043d \u0441\u043e\u0434\u0435\u0440\u0436\u0430\u0442\u044c \u043d\u0435 \u043c\u0435\u043d\u0435\u0435 6 \u0441\u0438\u043c\u0432\u043e\u043b\u043e\u0432."}},
    onkeyup: false,
    wrapper: 'ul class=error_list',
    errorElement: 'li',
    errorPlacement: function(error, element) 
    {
     error.hide();
     if(element.parents('.radio_list').is('*') || element.parents('.checkbox_list').is('*'))
     {
       error.prependTo( element.parent().parent().parent() );
     }
     else
     {
       error.prependTo( element.parent() );
     }
     if(error.children().html().length){
        error.slideDown();     
        }
   },
   success: function(error){
    
    var ul = error.parent();
    if(error.hasClass('error_list')){
        ul = error;
    }
    if(ul.hasClass('error_list')){
        ul.slideUp(500,function(){
        ul.remove();
        });
    }    
   }
  });
  
  
});

/* for some reason the jQuery Validate plugin does not incluce a generic regex method */
jQuery.validator.addMethod(
  "regex",
  function(value, element, regexp) {
      if (regexp.constructor != RegExp)
          regexp = new RegExp(regexp);
      else if (regexp.global)
          regexp.lastIndex = 0;
      return this.optional(element) || regexp.test(value);
  },
  "Invalid."
);