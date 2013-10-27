require 'spec_helper'

describe "Welcome" do
  describe "Home Page" do
    it "Get the home page" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit root_path
      expect(page).to have_content('Welcome')
    end
    
    it "Should have the right title" do
      visit root_path
      expect(page).to have_title('Sample App')
    end
  end
  
  describe "Help Page" do
    it "Get the help page" do
      visit help_path
      expect(page).to have_content('Help')
    end
    
    it "Should have the right title" do
      visit help_path
      expect(page).to have_title('Sample App | Help')
    end
  end
  
  describe "About Page" do
    it "Get the about page" do
      visit about_path
      expect(page).to have_content('About Us')
    end
    
    it "Should have the right title" do
      visit about_path
      expect(page).to have_title('Sample App | About Us')
    end
  end
end
