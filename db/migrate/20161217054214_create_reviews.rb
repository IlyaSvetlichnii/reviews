class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.string :comment
      t.integer :food
      t.integer :service
      t.integer :interior

      t.timestamps
    end
  end
end
