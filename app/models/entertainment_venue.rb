class EntertainmentVenue < ApplicationRecord
	belongs_to :user
	belongs_to :category

	has_many :images, dependent: :destroy
	has_many :reviews, dependent: :destroy

	validates_inclusion_of :accord, in: [true, false]


  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
	
	self.per_page = 10
	
	def self.search(search)
	  where("title LIKE ?", "%#{search}%") 
	  where("description LIKE ?", "%#{search}%")
	end


end
