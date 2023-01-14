module DefaultPageContent
extend ActiveSupport::Concern

	included do 
		before_action :set_page_defaults
	end

	def set_page_defaults
		@page_title = "DevCamp Portfolio | My Rails Website"
		@seo_keywords ="ML Portfolio"
	end
	
end