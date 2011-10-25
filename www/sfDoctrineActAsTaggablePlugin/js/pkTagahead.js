// You need to bring in jQuery first in order for this to work
//
// Call it like this:
// pkTagahead(<?php echo json_encode(url_for("taggableComplete/complete")) ?>);
//
// Or similar. Now all of your input elements with the input-tag class
// automatically gain the typeahead suggestion feature.
//
// If you're not using Symfony and sfDoctrineActAsTaggablePlugin, 
// pass your own URL that returns a <ul> containing <li>s with the
// FULL TEXT of what the ENTIRE tag string will be if the user takes
// that suggestion, with the new tag you're suggesting an <a> link
// to #. Then use CSS to hide (visibility: none) the part of the 
// <li> that is not in the <a>. Don't introduce any extra whitespace.

function pkTagahead(tagaheadUrl)
{
  $(function() {
    function getKey(event)
    {
      // Portable keycodes sigh
      return event.keyCode ? event.keyCode : event.which;
    }
    function setClick(target)
    {
      $(target).find('li').click(function(event)
      {
        // span contains ul contains li contains a
        var span = this.parentNode.parentNode;
        var input = $(span).data("tag-peer");
        // Get text from the li
        var tags = $('.left',this).html()+$('a',this).html()+$('.right',this).html();
        $('input.tag-input').data('tag-last',tags);
        $('li',target).remove();
        
        $(input).val(tags);
        $(input).focus();
        return false;
      }).hover(function(){
          $(this).addClass('selected');
      },function(){
           $('li.selected',$("input.tag-input").data('tag-peer')).removeClass('selected');
      });
    }
    // Add suggestions span (you'll need to style that)
    $('input.tag-input').after("<div class='tag-suggestions'></div>");
    // Each tag field remembers its suggestions span...
    $('input.tag-input').each(function() 
    {
      $(this).data("tag-peer", $(this).next()[0]);
    });
    // And vice versa
    $('div.tag-suggestions').each(function() 
    {
      $(this).data("tag-peer", $(this).prev()[0]);
    });
    // Now we can really throw down
    $('input.tag-input').keyup(function(event) 
    {
      var key = getKey(event);
      // Tab key 
      if (key == 13)
      {
          $('li.selected',$("input.tag-input").data('tag-peer')).trigger('click');
//        var peer = $(this).data("tag-peer");
//        var suggestions = $(peer).find("li"); 
//        if (suggestions.length)
//        {
//          $(this).val($(suggestions[0]).text());
//          $(this).focus();
//        }
        // In any case don't insert the tab
        return false;
      }
      else
      {
        // Trigger ajax update of suggestions
      } 
    });
    $('input.tag-input').keypress(function(event) 
    {
      var lis = $('li',$("input.tag-input").data('tag-peer'));
      var selected =  $('li.selected',$("input.tag-input").data('tag-peer'));
      var key = getKey(event);
        //up
        if(key==38){
            if(!selected.length){
                lis.last().addClass('selected');
            }else if(selected.prev()){
                selected.removeClass('selected');
                selected.prev().addClass('selected');
            }
        }
        //down
        if(key==40){
            if(!selected.length){
                lis.first().addClass('selected');
            }else if(selected.next()){
                selected.removeClass('selected');
                selected.next().addClass('selected');
            }
        }
      // Firefox 2.0 mac is stubborn and only allows cancel here
      // (we will still get the keyup and do the real work there)
      //tab or enter
      if (key == 9 || key==13)
      {
        return false;
      }
    });
    var lastValues = {};
    setInterval(function() 
    {
      // AJAX query for suggestions only when changes have taken place
      $('input.tag-input').each(function() 
      {
        var last = $(this).data('tag-last');  
        var value = $(this).val();
        var peer = $(this).data('tag-peer');
        var query = $(this).val();        
        if (last !== value && query.split(",").pop().length > 1)
        {
          $(this).data('tag-last', value);
          $.post(
            tagaheadUrl, 
            { 
              current: query 
            },
            function(data, textStatus) 
            {
              $(peer).html(data);       
              setClick(peer);
            }
          );
        }
      });
    }, 200);
  });
}

