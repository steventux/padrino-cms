TEMPLATE_FILE_PATHS = %w( lib/cms_utils.rb 
    lib/uploader.rb
    app/views/layouts/application.erb 
    app/views/main.erb
    app/views/sitemap.erb
    app/views/sitemap.xml.erb
    app/views/contents/show.erb
    app/views/contents/index.erb
    admin/views/layouts/application.erb
    admin/controllers/images.rb
    public/stylesheets/application.css
    public/admin/stylesheets/base.css
    public/admin/javascripts
    public/admin/images
  ) unless defined? TEMPLATE_FILE_PATHS
