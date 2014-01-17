describe "the signin process", :type => :feature do
  it "shows me the home page copy" do
    visit '/'
    expect(page).to have_content 'Hello'
  end
end
