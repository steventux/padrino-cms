module Padrino
  module Generators
  
    class Cms < Thor::Group
  
      # Add this generator to our padrino-gen
      Padrino::Generators.add_generator(:cms, self)

      # Define the source template root
      def self.source_root; File.expand_path(File.dirname(__FILE__)); end
      # Defines the banner for this CLI generator
      def self.banner; "padrino-gen cms [project_path]"; end

      # Include related modules
      include Thor::Actions
      include Padrino::Generators::Actions
      include Padrino::Generators::Runner
      include Padrino::Generators::Components::Actions
    
      desc "Description:\n\n\tpadrino-gen cms generates a new Padrino cms inside your padrino project"
      
      argument :project_path, :desc => "The path to your padrino project"
      
      # Show help if no argv given
      require_arguments!

    end
    
  end
end
