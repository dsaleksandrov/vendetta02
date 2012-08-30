function onClickTableCell(id) {
window.location = "/adverts/"+id;
}


  $(function() {


 $('#show-preview-link').click(function(e) {
    $("#new_advert").attr("action", "/adverts/preview");
    $("#new_advert").submit();
 return false;
});



 $('#save-link').click(function(e) {



return false;
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
  