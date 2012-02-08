jQuery(function($){
  
  $('#sfApplyApply_username').parents('form').validate({
    rules: {"sfApplyApply[username]":{"required":true,"maxlength":16,"minlength":4,"regex":"^\\w+$","remote":"\/frontend_dev.php\/sfJqueryFormVal\/remote\/FRegistrationForm\/sfValidatorDoctrineUnique?column=username"},"sfApplyApply[password]":{"required":true,"maxlength":128,"minlength":6},"sfApplyApply[email]":{"required":true,"email":true,"remote":"\/frontend_dev.php\/sfJqueryFormVal\/remote\/FRegistrationForm\/sfValidatorDoctrineUnique?column=email"},"sfApplyApply[email2]":{"required":true,"email":true}},
    messages: {"sfApplyApply[username]":{"remote":"\u042d\u0442\u043e\u0442 \u043b\u043e\u0433\u0438\u043d \u0443\u0436\u0435 \u0438\u0441\u043f\u043e\u043b\u044c\u0437\u0443\u0435\u0442\u0441\u044f. \u0412\u044b\u0431\u0435\u0440\u0435\u0442\u0435 \u0434\u0440\u0443\u0433\u043e\u0439.","required":"\u041e\u0431\u044f\u0437\u0430\u0442\u0435\u043b\u044c\u043d\u043e.","maxlength":function(a, elem){ return '\\\"' + $(elem).val() + '\\\" \u0441\u043b\u0438\u0448\u043a\u043e\u043c \u0434\u043b\u0438\u043d\u043d\u043e\u0435 \u043c\u0430\u043a\u0441\u0438\u043c\u0443\u043c 16.';},"minlength":"\u042d\u0442\u043e\u0442 \u043b\u043e\u0433\u0438\u043d \u0441\u043b\u0438\u0448\u043a\u043e\u043c \u043a\u043e\u0440\u043e\u0442\u043a\u0438\u0439 \u043c\u0438\u043d\u0438\u043c\u0443\u043c 4 \u0437\u043d\u0430\u043a\u0430","regex":"\u041b\u043e\u0433\u0438\u043d \u0434\u043e\u043b\u0436\u0435\u043d \u0441\u043e\u0434\u0435\u0440\u0436\u0430\u0442\u044c \u0442\u043e\u043b\u044c\u043a\u043e \u0431\u0443\u043a\u0432\u044b, \u0446\u0438\u0444\u0440\u044b \u0438 \u0441\u0438\u043c\u0432\u043e\u043b \u043f\u043e\u0434\u0447\u0435\u0440\u043a\u0438\u0432\u0430\u043d\u0438\u044f."},"sfApplyApply[password]":{"required":"\u041e\u0431\u044f\u0437\u0430\u0442\u0435\u043b\u044c\u043d\u043e.","maxlength":function(a, elem){ return '\\\"' + $(elem).val() + '\\\" \u0441\u043b\u0438\u0448\u043a\u043e\u043c \u0434\u043b\u0438\u043d\u043d\u043e\u0435 \u043c\u0430\u043a\u0441\u0438\u043c\u0443\u043c 128.';},"minlength":"\u042d\u0442\u043e\u0442 \u043f\u0430\u0440\u043e\u043b\u044c \u043e\u0447\u0435\u043d\u044c \u043a\u043e\u0440\u043e\u0442\u043a\u0438\u0439. \u041e\u043d \u0434\u043e\u043b\u0436\u0435\u043d \u0441\u043e\u0434\u0435\u0440\u0436\u0430\u0442\u044c \u043d\u0435 \u043c\u0435\u043d\u0435\u0435 6 \u0441\u0438\u043c\u0432\u043e\u043b\u043e\u0432."},"sfApplyApply[email]":{"remote":"\u0410\u043a\u043a\u0430\u0443\u043d\u0442 \u0441 \u044d\u0442\u0438\u043c email \u0443\u0436\u0435 \u0441\u0443\u0449\u0435\u0441\u0442\u0432\u0443\u0435\u0442. \u0415\u0441\u043b\u0438 \u0432\u044b \u043f\u0440\u043e\u0441\u0442\u043e \u0437\u0430\u0431\u044b\u043b\u0438 \u043f\u0430\u0440\u043e\u043b\u044c \u043d\u0430\u0436\u043c\u0438\u0442\u0435 \"\u0443\u0436\u0435 \u0437\u0430\u0440\u0435\u0433\u0438\u0441\u0442\u0440\u0438\u0440\u043e\u0432\u0430\u043d?\", \u0430 \u043f\u043e\u0442\u043e\u043c \"\u0412\u043e\u0441\u0442\u0430\u043d\u043e\u0432\u0438\u0442\u044c \u043f\u0430\u0440\u043e\u043b\u044c\"","required":"\u041e\u0431\u044f\u0437\u0430\u0442\u0435\u043b\u044c\u043d\u043e.","email":"\u041d\u0435\u0432\u0435\u0440\u043d\u044b\u0439 E-mail."},"sfApplyApply[email2]":{"required":"\u041e\u0431\u044f\u0437\u0430\u0442\u0435\u043b\u044c\u043d\u043e.","email":"\u041d\u0435\u0432\u0435\u0440\u043d\u044b\u0439 E-mail."}},
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
  
        $('#sfApplyApply_email2').rules('add', {"equalTo":"#sfApplyApply_email","messages":{"equalTo":"Email \u043d\u0435 \u0441\u043e\u0432\u043f\u0430\u0434\u0430\u044e\u0442."}});
  
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