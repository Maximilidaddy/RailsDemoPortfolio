class Blog < ApplicationRecord
	#creates enum	
	 enum status: {draft: 0, published: 1}
	 #integrates slug 
	 extend FriendlyId
  friendly_id :title, use: :slugged

  validates_presence_of :title, :body
end
