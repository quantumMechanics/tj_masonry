require 'spec_helper'

describe "Static pages" do

	let(:base_title) { "McBride Masonry" }
	let(:home_page_title) { "#{base_title} | Home" }
	let(:services_page_title) { "#{base_title} | Services" }


	subject { page }

	shared_examples_for "all static pages" do
		it { should have_selector('title', text: current_page_title) }
		it { should have_selector('header') }
		it { should have_selector('footer') } 	
		it { should have_link "Home", href: root_path }
		it { should have_link "Services", href: services_path }
		it { should have_link "Samples", href: samples_path }
		it { should have_link "Contact Us", href: contact_path }
	end




	describe "Home page" do

		before { visit root_path }
		let(:current_page_title) { "#{base_title} | Home" }

		it_should_behave_like "all static pages"

		it { should have_selector('div', class: "carousel") } # class should contain carousel
		it { should have_selector('div > img') }

 	end

 	describe "Services page" do
 		before { visit services_path }
 		let(:current_page_title) { "#{base_title} | Services" }

 		it { should have_selector('div', class: 'accordion') }
		it { should have_selector ('h1') } 		
 		it_should_behave_like "all static pages"
 		
 	end

 	describe "Samples page" do
 		before { visit samples_path }
 		let(:current_page_title) { "#{base_title} | Samples" }

 		it_should_behave_like "all static pages"
 	end

 	describe "Contact page" do
 		before { visit contact_path}
 		let (:current_page_title) { "#{base_title} | Contact Us" }

 		it_should_behave_like "all static pages"
 	end

 	
end
