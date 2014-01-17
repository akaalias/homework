# load libraries and DSL
require "spec_helper"

# what we're expecting this thing to do
describe "Let People Sign Up For My Newsletter", :type => :feature, :js => true do

  # first off, we expect there to be a page 
  # with a form and a button that says "Sign up"
  it "Shows me the newsletter form" do
    # there should be a webserver running
    # and a homepage configured
    visit '/'
    # there should be a link to a page
    click_link 'Newsletter'
    # and when navigated to that page
    # there should be a form
    within("form") do 
      # that has a button with the prompt "Sign up"
      expect(page).to have_content "Sign up"
    end
  end    

  # secondly, when submitting the newsletter form
  # it should be suscessful
  it "Lets me subscribe to the newsletter" do
    # there should be a webserver running
    # and a homepage configured
    visit '/'
    # there should be a link to a page
    click_link 'Newsletter'
    # and when navigated to that page
    # there should be a form
    # I should be able to fill in my email     
    fill_in 'Email', with: "alexis.rondeau@gmail.com"
    # click the button
    click_button 'Sign up'    
    # and see a success message
    expect(page).to have_content('Successfully signed up!')
  end
end
