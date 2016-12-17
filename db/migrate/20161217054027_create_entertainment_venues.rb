class CreateEntertainmentVenues < ActiveRecord::Migration[5.0]
  def change
    create_table :entertainment_venues do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
