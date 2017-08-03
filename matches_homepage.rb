require 'watir'
class MatchesHomepage

	def initialize
		@browser = Watir::Browser.new :chrome
	end 

	def go_to_homepage
		@browser.goto 'http://www.matchesfashion.com'
	end

	def find_url
		@browser.url
	end

	def sign_in_button
		@browser.element(id: 'loginLinks')		
	end


end


homepage = MatchesHomepage.new

homepage.go_to_homepage
homepage.sign_in_button.click