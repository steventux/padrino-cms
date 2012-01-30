require 'padrino-core/version'
require 'securerandom' unless defined?(SecureRandom)

module Padrino
  module Generators
    ##
    # Responsible for generating new Padrino projects based on the specified project components.
    #
    class CmsProject < Project

      # Add this generator to our padrino-gen
      Padrino::Generators.add_generator(:cms, self)

      # Define the source template root
      def self.source_root; File.expand_path(File.dirname(__FILE__)); end
      # Defines the banner for this CLI generator
      def self.banner; "padrino-gen cms [name] [options]"; end

      # Include related modules
      include Thor::Actions
      include Padrino::Generators::Actions
      include Padrino::Generators::Runner
      include Padrino::Generators::Components::Actions

      desc "Description:\n\n\tpadrino-gen cms-project generates a new Padrino cms-project"
      
      # Show help if no argv given
      require_arguments!
      
      options[:orm] = :activerecord
      options[:test] = :minitest
      options[:renderer] = :haml
      options[:js] = :jquery
      options[:stylesheet] = :less

      # Copies over the Padrino base application App
      #
      # @api private
      def setup_project
        #super
        puts "foo"
      end
    
    end
  end
end
