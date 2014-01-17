# load libraries and DSL
require "spec_helper"

# what we're expecting this thing to do
describe "This Is My Homepage", :type => :feature, :js => true do

  it "Shows me the home page copy" do
    visit '/'
    within("h1") do
      expect(page).to have_content 'Welcome'
    end
  end

  it "Lets me view the blog archive" do 
    visit '/'
    click_link 'Writing'
    within("h2") do
      expect(page).to have_content 'Recent Articles'
    end
  end
end
