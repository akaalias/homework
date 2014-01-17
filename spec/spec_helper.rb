require "capybara/rspec"
require "capybara/mechanize"
 
Capybara.default_driver = :mechanize

# configure which host to call up on
Capybara.app_host = "http://localhost:3000"

begin
  include Capybara::DSL
rescue
  include Capybara
end
