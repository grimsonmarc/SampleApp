require 'spec_helper'

describe "Welcome" do
  describe "Home Page" do
    it "Get the home page" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/welcome/home'
      expect(page).to have_content('Welcome')
    end
    
    it "Should have the right title" do
      visit '/welcome/home'
      expect(page).to have_title('Giroud\'s Nipple | Home')
    end
  end
  
  describe "Help Page" do
    it "Get the help page" do
      visit '/welcome/help'
      expect(page).to have_content('Help')
    end
    
    it "Should have the right title" do
      visit '/welcome/help'
      expect(page).to have_title('Giroud\'s Nipple | Help')
    end
  end
  
  describe "About Page" do
    it "Get the about page" do
      visit '/welcome/about'
      expect(page).to have_content('About Us')
    end
    
    it "Should have the right title" do
      visit '/welcome/about'
      expect(page).to have_title('Giroud\'s Nipple | About Us')
    end
  end
end
