class Category < ApplicationRecord
 has_many :entertainment_venues, dependent: :destroy
end

