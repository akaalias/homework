require "capybara/rspec"
require "capybara/mechanize"
 
Capybara.default_driver = :mechanize

begin
  include Capybara::DSL
rescue
  include Capybara
end
