$(function() {
  if ($('textarea').length > 0){       
    var data = $('textarea');
    $.each(data, function(i){
      CKEDITOR.replace(data[i].id, {
        // File upload properties
        // filebrowserBrowseUrl : '/browser/browse/type/all',
        filebrowserUploadUrl : '/admin/images/create',
        filebrowserWindowWidth  : 650,
        filebrowserWindowHeight : 400
      });
    });     
  }  
});
