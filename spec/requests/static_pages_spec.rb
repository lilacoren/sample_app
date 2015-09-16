require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Sample App'" do
      visit '/home'
      page.should have_content('Sample App')
    end
    
    # it "should have the right title 'Home'" do
    #   visit '/home'
    #   page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | Home")
    # end
  end
  
  describe "Help page" do
    it "should have the content 'help'" do
      visit '/help'
      page.should have_content('Help')
    end
    
    it "should have the h1 'Help'" do
      visit '/help'
      page.should have_selector('h1', :text => "Help")
    end
    
    # it "should have the right title 'Help'" do
    #   visit '/help'
    #   page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | Help")
    # end
  end 
  
  describe "About page" do
    it "should have the content 'About Us'" do
      visit '/about'
      page.should have_content('About Us')
    end
    
    it "should have the h1 'About Us'" do
      visit '/about'
      page.should have_selector('h1', :text => "About Us")
    end
    
    # it "should have the right title 'About'" do
    #   visit '/about'
    #   page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | About")
    # end
  end
end
