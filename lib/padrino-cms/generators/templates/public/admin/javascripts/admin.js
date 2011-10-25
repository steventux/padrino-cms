$(function() {
  if ($('textarea').length > 0){       
    var data = $('textarea');
    $.each(data, function(i){CKEDITOR.replace(data[i].id);});     
  }  
});
