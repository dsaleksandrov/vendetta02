
  $(function() {
  $("#search").keyup(function() {
    
    $.get($("#adverts_search").attr("action"), $("#adverts_search").serialize(), null, "script");
    return false;
  });
  });
