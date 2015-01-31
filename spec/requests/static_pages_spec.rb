require 'spec_helper'

describe "StaticPages" do

  subject {page}

  let(:base_title) {"Rails Tutorial Sampler App"}

  describe "Home Page" do
  
  before { visit root_path }

   it {should have_content('Sampler App')}
   it {should have_title("#{base_title}")}
   it {should_not have_title('| Home')}
  end

  describe "Help Page" do

before { visit help_path }

   it {should have_content('Help')}
   it {should have_title("#{base_title} | Help")}
  end

  describe "About Page" do

before {visit about_path}


    it {should have_content('About Us')}
    it {should have_title("#{base_title} | About Us")}
  end

  describe "Contact Us" do

before {visit contact_path}

    it {should have_content('Contact Us')}
    it {should have_title("#{base_title} | Contact")}
  end
end
