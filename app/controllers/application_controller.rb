class ApplicationController < ActionController::Base
	include DeviseWhitelist
	include SetSource #gets location where user came from and shows it on all pages --> can be seen on app layouts page
	include CurrentUserConcern
	include DefaultPageContent #creates title and search engine optimization keywords
	
	
end


