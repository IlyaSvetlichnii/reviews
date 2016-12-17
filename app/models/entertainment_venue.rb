class EntertainmentVenue < ApplicationRecord
	belongs_to :user
	belongs_to :category

	has_many :images
	has_many :reviews

	def self.search(search)
	  where("title LIKE ?", "%#{search}%") 
	  where("description LIKE ?", "%#{search}%")
	end
end
