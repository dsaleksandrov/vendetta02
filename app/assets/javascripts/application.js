function onClickTableCell(id) {
window.location = "/adverts/"+id;
}


  $(function() {

 




 $('#show-preview-link').click(function(e) {
     validateFalse=true;
    if (!validateInputField("advert_work_category")){
       validateFalse= false;
    }
    if (!validateInputField("advert_town_country")){
       validateFalse= false;
    }

    if (!validateInputField("advert_Company")){
       validateFalse= false;
    }

     if (!validateInputField("advert_email")){
       validateFalse= false;
    }

     if (!validateInputField("aboutVacancy")){
       validateFalse= false;
    }




    if (!validateFalse){return false;}

    $("#new_advert").attr("action", "/adverts/preview");
    $("#new_advert").submit();
 return false;
});



$('#save-link').click(function(e) {
return false;
});





 function validateInputField(field_name){
   if( !$("#"+field_name).val() ) {
    $("#"+field_name).addClass("error");
      return false;
      }
      else{
        $("#"+field_name).removeClass("error");
        return true;
    }
 }



$("#aboutVacancy").keyup(function() {
      $("#aboutVacancy").removeClass("error");
     return false;
  });
$("#aboutVacancy").click(function() {
      $("#aboutVacancy").removeClass("error");
     return false;
})


$("#advert_email").keyup(function() {
      $("#advert_email").removeClass("error");
     return false;
  });
$("#advert_email").click(function() {
      $("#advert_email").removeClass("error");
     return false;
})


$("#advert_Company").keyup(function() {
      $("#advert_Company").removeClass("error");
     return false;
  });
$("#advert_Company").click(function() {
      $("#advert_Company").removeClass("error");
     return false;
});



$("#advert_work_category").keyup(function() {
      $("#advert_work_category").removeClass("error");
     return false;
  });
$("#advert_work_category").click(function() {
      $("#advert_work_category").removeClass("error");
     return false;
});


$("#advert_town_country").keyup(function() {
      $("#advert_town_country").removeClass("error");
     return false;
  });
$("#advert_town_country").click(function() {
      $("#advert_town_country").removeClass("error");
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
  