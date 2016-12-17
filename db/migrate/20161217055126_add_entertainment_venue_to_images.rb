class AddEntertainmentVenueToImages < ActiveRecord::Migration[5.0]
  def change
    add_reference :images, :entertainment_venue, foreign_key: true
  end
end
