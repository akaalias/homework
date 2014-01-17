# load libraries and DSL
require "spec_helper"

# configure which host to call up on
Capybara.app_host = "http://alexisrondeau.com"

# what we're expecting this thing to do
describe "This Is My Homepage", :type => :feature, :js => true do

  it "Shows me the home page copy" do
    visit '/'
    expect(page).to have_content 'Alexis'
  end

  it "Lets me view the blog archive" do 
    visit '/'
    click_link 'Blog'
    within("h2") do
      expect(page).to have_content 'Recent Articles'
    end
  end

  it "Lets me subscribe to the newsletter" do
    visit '/'
    click_link 'Newsletter'
    within(".centered") do 
      expect(page).to have_content "Sex"
    end
  end
end
