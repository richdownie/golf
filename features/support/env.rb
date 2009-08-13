# Sets up the Rails environment for Cucumber
ENV["RAILS_ENV"] = "cucumber"
require File.expand_path(File.dirname(__FILE__) + '/../../config/environment')
require 'cucumber/rails/world'
Cucumber::Rails.use_transactional_fixtures

#Seed the DB
Fixtures.reset_cache  
fixtures_folder = File.join(RAILS_ROOT, 'spec', 'fixtures')
fixtures = Dir[File.join(fixtures_folder, '*.yml')].map {|f| File.basename(f, '.yml') }
Fixtures.create_fixtures(fixtures_folder, fixtures)



require 'test/unit/assertions'
include Test::Unit::Assertions
 
if ENV['FIREWATIR']
  require 'firewatir'
  Browser = FireWatir::Firefox
else
  case RUBY_PLATFORM
  when /darwin/
    require 'safariwatir'
    Browser = Watir::Safari
  when /win32|mingw/
    require 'watir'
    Browser = Watir::IE
  when /java/
    require 'celerity'
    Browser = Celerity::Browser
  else
    raise "This platform is not supported (#{PLATFORM})"
  end
end
 
 
 # "before all"
 browser = Browser.new
 
 Before do
   # puts "Posts count: #{Post.count}"
   # #Seed the DB
   # Fixtures.reset_cache  
   # fixtures_folder = File.join(RAILS_ROOT, 'spec', 'fixtures')
   # fixtures = Dir[File.join(fixtures_folder, '*.yml')].map {|f| File.basename(f, '.yml') }
   # Fixtures.create_fixtures(fixtures_folder, fixtures)
   # puts "Posts count: #{Post.count}"


   @browser = browser
   @environment = "http://localhost:3000"
   # @browser.set_fast_speed
 end
 
 # "after all"
 at_exit do
   # @browser.close
 end

