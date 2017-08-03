require'spec_helper'

describe Matches do
	
	before(:all) do 
		@matches = Matches.new
		@matches.homepage.go_to_homepage
	end 

	it "Should go to the homepage" do
		@matches.homepage.go_to_homepage
		expect(@matches.homepage.find_url).to eq 'http://matchesfashion.com'
	end

	it "Should have a login button" do
		expect(@matches.sign_in_button.exists?).to eq true
	end
end
