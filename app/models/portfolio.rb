class Portfolio < ApplicationRecord
	#allows for nesting of technologies
	has_many :technologies

	# allows for parent class to save several attributes of the nested attributes 
	accepts_nested_attributes_for :technologies,#lower code essentially says do not accept if attrs is blank 
									reject_if: lambda{|attrs|attrs['name'].blank?}
	
	#calls module Placeholder and allows its methods to be used 
	include Placeholder 
	
	#data validation --> requires these elements to be added when creating new portfolio
	validates_presence_of :title, :body, :main_image, :thumb_image

	#custom scope
	def self.angular
		where(subtitle: 'Angular')
	end

	#created custom scope
	scope :ruby_on_rails_portfolio_items, -> {where(subtitle: 'Ruby on Rails')}

	#setting defaults for portfolio
	after_initialize :set_defaults

	def set_defaults		#uses method from Placeholder to skip use of writing link in
		self.main_image ||= Placeholder.image_generator(height:650,width:400)
		self.thumb_image ||= Placeholder.image_generator(height:350,width:200)
	end
end
