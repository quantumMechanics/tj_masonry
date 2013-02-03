require 'spec_helper'

describe "Static pages" do

  let(:base_title) { "McBride Masonry" }
  
  describe "Home page" do
    it "should have title 'Home' "  do
      visit root_path
 	  page.should have_selector('title', :text => "#{base_title} | Home")
    end
  end
end
