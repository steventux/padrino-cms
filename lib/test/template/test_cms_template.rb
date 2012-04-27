require File.expand_path(File.dirname(__FILE__) + '/../helper.rb')
require File.dirname(__FILE__) + '/../../file_paths.rb'

describe "CmsTemplate" do

  def setup
    @template_path = File.dirname(__FILE__) + '/../../cms_template.rb'
    @uuid = UUID.new.generate.gsub("-", "")
    @apptmp = "#{Dir.tmpdir}/padrino_tests/#{@uuid}"
    `mkdir -p #{@apptmp}`
    @generated = false
  end
  
  def teardown
    `rm -rf #{@apptmp}`
  end
  
  describe "when generating a new project" do
  
    it "should generate a project from the cms_template" do
      
      err, out = capture_io { generate(:project, 'sample_project', "--template=#{@template_path}", "--root=#{@apptmp}") }
      
      # Components
      #
      assert_match_in_file(":orm: activerecord",   "#{@apptmp}/sample_project/.components")
      assert_match_in_file(":test: minitest",      "#{@apptmp}/sample_project/.components")
      assert_match_in_file(":script: jquery",      "#{@apptmp}/sample_project/.components")
      assert_match_in_file(":renderer: erb",       "#{@apptmp}/sample_project/.components")
      assert_match_in_file(":admin_renderer: erb", "#{@apptmp}/sample_project/.components")
      
      # Gemfile additions
      #
      assert_match_in_file("carrierwave", "#{@apptmp}/sample_project/Gemfile")
      assert_match_in_file("fog",         "#{@apptmp}/sample_project/Gemfile")
      assert_match_in_file("mini_magick", "#{@apptmp}/sample_project/Gemfile")
    
      # Admin app
      #
      assert_file_exists("#{@apptmp}/sample_project/db/migrate/001_create_accounts.rb")
      assert_file_exists("#{@apptmp}/sample_project/admin")
      
      # Content model
      #
      assert_file_exists("#{@apptmp}/sample_project/db/migrate/002_create_contents.rb")
      assert_file_exists("#{@apptmp}/sample_project/models/content.rb")
    
      # Custom libs and templates
      #
      TEMPLATE_FILE_PATHS.each do |path|
        assert_file_exists("#{@apptmp}/sample_project/#{path}")
      end
      
    end
    
  end

end
