module Placeholder
	extend ActiveSupport::Concern

	#simple helper method
	def self.image_generator(height:, width:)
	"https://via.placeholder.com/#{height}x#{width}/O%20https://placeholder.com/"
	end
end