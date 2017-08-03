require_relative 'matches_homepage.rb'
require_relative 'matches_login.rb'
class Matches
	def initialize
		@browser = Watir::Browser.new :chrome
	end 

	def homepage
		MatchesHomepage.new
	end

	def login 
		MatchesLogin.new
	end
end