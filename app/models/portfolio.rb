class Portfolio < ApplicationRecord
	has_many :technologies
	
	include Placeholder #calls module Placeholder and allows its methods to be used 

	#data validation --> requires these elements to be added when creating new portfolio
	validates_presence_of :title, :body, :main_image, :thumb_image

	#custom scope
	def self.angular
		where(subtitle: 'Angular')
	end

	#created custom scope
	#scope :ruby_on_rails_portfolio_items, -> (where(subtitle: 'Ruby on Rails'))

	#setting defaults for portfolio
	after_initialize :set_defaults

	def set_defaults		#uses method from Placeholder to skip use of writing link in
		self.main_image ||= Placeholder.image_generator(height:650,width:400)
		self.thumb_image ||= Placeholder.image_generator(height:350,width:200)
	end
end
