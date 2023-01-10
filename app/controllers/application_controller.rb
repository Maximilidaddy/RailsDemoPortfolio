class ApplicationController < ActionController::Base

	#allows parameters to be added or removed for devise model
	before_action :configure_permitted_parameters, if: :devise_controller?

	def configure_permitted_parameters
		#allows name parameter to be accepted in sign up feature, below does the same for edit
		devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
		devise_parameter_sanitizer.permit(:account_update, keys: [:name])
	end
end


