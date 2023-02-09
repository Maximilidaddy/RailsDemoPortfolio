module ApplicationHelper
	def login_helper style
		#showing user and login info
	    if current_user.is_a?(GuestUser)
	    	(link_to "Register", new_user_registration_path , class: style)	+
		  	" ".html_safe +
	  		(link_to "Login", new_user_session_path, class: style)
	    else
	  		link_to "Logout", destroy_user_session_path, method: :delete, class: style
	    end
	end

	#def source_helper(layoutName)
	#	if session[:source]
	#		greeting = "Thanks for visiting me from #{session[:source]} and you are on the #{layoutName} layout" 
	#		content_tag =(:p, greeting, class: "source-greeting")
	#	end
	#end

	def copyright_generator
		DevCampViewTool::Renderer.copyright "Big Mac", "All rights reserved."
	end
end
