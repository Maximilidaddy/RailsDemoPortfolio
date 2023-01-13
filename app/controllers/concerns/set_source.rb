module SetSource
	extend ActiveSupport::Concern

	included do
		before_action :set_source
	end

	def set_source 
		# gets source for dynamic source links of the session
		session[:source] = params[:q] if params[:q]
					# sets params if params exist
	end
end