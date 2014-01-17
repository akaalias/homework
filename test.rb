require 'rubygems'
require 'capybara'
require 'capybara/dsl'
require 'rspec'
require 'capybara/mechanize'

Capybara.run_server = false
Capybara.current_driver = :mechanize
Capybara.app_host = 'http://www.google.com'

module MyCapybaraTest
  class Test
    include Capybara
    def test_google
      visit('/')
    end
  end
end

t = MyCapybaraTest::Test.new
t.test_google
