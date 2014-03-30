require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    it "should have the h1 'deb'" do
visit '/static_pages/home'
page.should have_selector('h1', :text => 'deb')
    end

  it "should have title 'Home'" do
visit '/static_pages/home'
page.should have_selector('title', :text => "Deb Instruction App | Home")
end
end

describe "Help page" do
it "should show content h1 'Help'" do
visit '/static_pages/help'
page.should have_selector('h1', :text => 'Help')
end
it "should have title 'deb Writer|Help'"do
visit '/static_pages/help'
page.should have_selector('title', :text => "Deb Instruction App | Help")
end
end

describe "About page" do
it "Should show the h1 'About the Company'" do
visit '/static_pages/about_the_company'
page.should have_selector('h1', :text => 'About the Company')
end

it "should have title 'deb Writer|About'" do
visit '/static_pages/about_the_company'
page.should have_selector('title', :text => "Deb Instruction App | About")
end
end
end
