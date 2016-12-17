class AddAttachmentAvatarToEntertainmentVenues < ActiveRecord::Migration
  def self.up
    change_table :entertainment_venues do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :entertainment_venues, :avatar
  end
end
