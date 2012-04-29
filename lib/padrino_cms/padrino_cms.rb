class PadrinoCms < Thor::Group

  include Thor::Actions

  template_path = File.expand_path('../cms_template.rb', __FILE__)

  if ARGV.empty?
    puts "Please provide a name for this cms project."
  else
    begin
      cms_project_name = ARGV[0]
      Padrino::Generators.load_components!
      Padrino::Generators::Project.start([cms_project_name, "--root=.", "--template=#{template_path}", "--debug=true"])
    rescue Exception => e
      puts e.backtrace
    end
  end
end
