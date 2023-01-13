module CurrentUserConcern
	extend ActiveSupport::Concern
	def current_user
		# if user is logged in treat it normal || otherwise test with right hand side
		super || guest_user
	end

	def guest_user
		OpenStruct.new(name: "Guest User",
					   first_name: "Guest",
					   last_name: "User", 
					   email: "Guest@example.com")
	end
end