class Review < ApplicationRecord
	belongs_to :entertainment_venue, polymorphic: true
end
