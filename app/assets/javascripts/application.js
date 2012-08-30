function onClickTableCell(id) {
window.location = "/adverts/"+id;
}


  $(function() {


 $('#show-preview-link').click(function(e) {

 
    var url = $(this).attr('href');
    var dialog_form = $('<div id="dialog-form">Loading form...</div>').dialog({
      autoOpen: false,
      width: 520,
      modal: true,
      open: function() {
        return $(this).load(url + ' #preview-content');
      },
      close: function() {
        $('#dialog-form').remove();
      }
    });
    dialog_form.dialog('open');
    e.preventDefault();
  

return false;

  });




 $('#new_advert').submit(function() {  
    var valuesToSubmit = $(this).serialize();
    $.ajax({
        url: $(this).attr('action'), //sumbits it to the given url of the form
        data: valuesToSubmit,
        dataType: "JSON" // you want a difference between normal and ajax-calls, and json is standard
    }).success(function(json){
 
    });
    

  var url = $(this).attr('href');
    var dialog_form = $('<div id="dialog-form">Loading form...</div>').dialog({
      autoOpen: false,
      width: 520,
      modal: true,
      open: function() {
        return $(this).load(url + ' #preview-content');
      },
      close: function() {
        $('#dialog-form').remove();
      }
    });
    dialog_form.dialog('open');
    e.preventDefault();
  

    return false; // prevents normal behaviour

    });


 



  
  $("#fulltime").change(function() {
    $.get($("#adverts_search").attr("action"), $("#adverts_search").serialize(), null, "script");
    return false;
  });


  $("#parttime").change(function() {
    $.get($("#adverts_search").attr("action"), $("#adverts_search").serialize(), null, "script");
    return false;
  });



  $("#remote").change(function() {
    $.get($("#adverts_search").attr("action"), $("#adverts_search").serialize(), null, "script");
    return false;
  });

  
  $("#forone").change(function() {
    $.get($("#adverts_search").attr("action"), $("#adverts_search").serialize(), null, "script");
    return false;
  });



  $("#search").keyup(function() {
    
    $.get($("#adverts_search").attr("action"), $("#adverts_search").serialize(), null, "script");
    return false;
  });




$("#town").keyup(function() {
    
    $.get($("#adverts_search").attr("action"), $("#adverts_search").serialize(), null, "script");
    return false;
  });


 

  
 
 
  });
  