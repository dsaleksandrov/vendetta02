
  $(function() {
  $("#search").keyup(function() {
    
    $.get($("#adverts_search").attr("action"), $("#adverts_search").serialize(), null, "script");
    return false;
  });

   $("#logo_upload").change(function() {
     if ($("#logo_upload").val()!=null){
    	alert("val = "+$("#logo_upload").val());
    	var img = new Image();
  
  // wrap our new image in jQuery, then:
	  $(img)
    // once the image has loaded, execute this code
    	.load(function () {
      // set the image hidden by default    
      		$(this).hide();
    
      // with the holding div #loader, apply:
      $('#loader')
        // remove the loading class (so no background spinner), 
        .removeClass('loading')
        // then insert our image
        .append(this);
    
      // fade our image in to create a nice effect
      $(this).fadeIn();
    })
    
    // if there was an error loading the image, react accordingly
    .error(function () {
      // notify the user that the image could not be loaded
    })
    
    // *finally*, set the src attribute of the new image to our image
    .attr('src', $("#logo_upload").val());
  }
     return false;
  });
 
  });
  