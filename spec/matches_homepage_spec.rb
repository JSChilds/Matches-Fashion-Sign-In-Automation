require'spec_helper'

describe Matches do
	
	before(:all) do 
		@matches = Matches.new
		@matches.homepage.go_to_homepage
	end 

	it "Should go to the homepage" do
		expect(@matches.find_browser).to eq 'http://www.matchesfashion.com'
	end
end
