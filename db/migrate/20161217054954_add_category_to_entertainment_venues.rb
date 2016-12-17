class AddCategoryToEntertainmentVenues < ActiveRecord::Migration[5.0]
  def change
    add_reference :entertainment_venues, :category, foreign_key: true
  end
end
