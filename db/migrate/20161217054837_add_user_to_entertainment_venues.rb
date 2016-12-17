class AddUserToEntertainmentVenues < ActiveRecord::Migration[5.0]
  def change
    add_reference :entertainment_venues, :user, foreign_key: true
  end
end
