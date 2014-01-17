# load libraries and DSL
require "spec_helper"

# what we're expecting this thing to do
describe "Let People View a Product and Buy It", :type => :feature, :js => true do

  # first off, we expect there to be a page 
  # with a form and a button that says "Sign up"
  it "Shows me the newsletter form" do
    # there should be a webserver running
    # and a homepage configured
    visit '/'
    # there should be a link to a page
    click_link 'Widget'
    # and when navigated to that page
    # there should be a form

    within(".price") do
      expect(page).to have_content "$20"
    end	

    within("form") do 
      # that has a button with the prompt "Buy"
      expect(page).to have_content "Buy"
    end

    click_button 'Sign up'    

    within ("form") do
	    expect(page).to have_content "Credit card"
	    expect(page).to have_content "CVC"
	    # etc...
	end
  end    
end