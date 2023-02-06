module CurrentUserConcern
	extend ActiveSupport::Concern
	
	def current_user
		# if user is logged in treat it normal || otherwise test with right hand side
		super || guest_user
	end

	def guest_user
		guest = GuestUser.new
		guest.name = "Guest User"
		guest.first_name = "Guest"
		guest.last_name = "User"
		guest.email = 'guest@user.com'
		guest 
		#needs to be here because this prints it out
	end
end