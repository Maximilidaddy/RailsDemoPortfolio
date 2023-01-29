module ApplicationHelper
	def login_helper
		#showing user and login info
	    if current_user.is_a?(User)
	    	link_to "Logout", destroy_user_session_path, method: :delete 
	    else
	  		(link_to "Register", new_user_registration_path )  + "\n"+
	  		(link_to "Login", new_user_session_path)
	    end
	end

	def copyright_generator
		DevCampViewTool::Renderer.copyright "Big Mac", "All rights reserved."
	end
end
