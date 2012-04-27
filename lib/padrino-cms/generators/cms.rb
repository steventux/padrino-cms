module Padrino
  class Cms < Thor::Group

    # Include related modules
#    include Thor::Actions
#    include Padrino::Generators
#    include Padrino::Generators::Actions
#    include Padrino::Generators::Runner
#    include Padrino::Generators::Components::Actions
#    class_option :root, :desc => "The root destination", :aliases => '-r', :default => ".", :type => :string
#    class_option :help, :type => :boolean, :desc => "Show help usage"
     
     puts ARGV
#    generate(:project, 'sample_project', "--template=#{@template_path}", "--root=#{@apptmp}")

  end
end
