class EntertainmentVenue < ApplicationRecord
	belongs_to :user
	belongs_to :category

	has_many :images
	has_many :reviews

	searchkick match: :word_start, searchable: [:title, :description]
end
