class AddEntertainmentVenueToReviews < ActiveRecord::Migration[5.0]
  def change
    add_reference :reviews, :entertainment_venue, foreign_key: true
  end
end
