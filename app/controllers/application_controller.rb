class ApplicationController < ActionController::Base
	include DeviseWhitelist

	before_action :set_source

	def set_source 
		# 
		session[:source] = params[:q] if params[:q]
					# sets params if params exist
	end
end


