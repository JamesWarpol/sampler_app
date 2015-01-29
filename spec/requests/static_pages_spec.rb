require 'spec_helper'

describe "StaticPages" do

  describe "Home Page" do
  
   it "should have the content 'Sampler App'"do
    visit '/static_pages/home'
    expect(page).to have_content('Sampler App')
   end

   it "should have the title 'Home'" do
  		visit '/static_pages/home'
  		expect(page).to have_title("Sampler App | Home")
  	end
  end

  describe "Help Page" do

   it "should have the header 'Help'" do
    visit '/static_pages/help'
    expect(page).to have_content('Help')
   end

   it "should have the title 'Help'" do
  		visit '/static_pages/help'
  		expect(page).to have_title("Sampler App | Help")
  	end
  end

  describe "About Page" do

  	it "should have the content 'About Us'" do
  	  visit '/static_pages/about'
  	  expect(page).to have_content('About Us')
  	end

  	it "should have the title 'About Us'" do
  		visit '/static_pages/about'
  		expect(page).to have_title("Sampler App | About Us")
  	end
  end
end
