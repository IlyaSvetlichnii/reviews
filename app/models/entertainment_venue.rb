class EntertainmentVenue < ApplicationRecord
	belongs_to :user
	belongs_to :category

	has_many :images
	has_many :reviews

	validates_inclusion_of :accord, in: [true, false]
	
	self.per_page = 10
	
	def self.search(search)
	  where("title LIKE ?", "%#{search}%") 
	  where("description LIKE ?", "%#{search}%")
	end
end
