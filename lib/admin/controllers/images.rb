Admin.controllers :images do
  
  post :create do
    
    uploader = Uploader.new
    uploader.store! params[:upload]
    
    "<script>window.parent.CKEDITOR.tools.callFunction('#{params['CKEditorFuncNum']}','#{uploader.url}','Your file has been uploaded successfully.');</script>"
  end
  
end
