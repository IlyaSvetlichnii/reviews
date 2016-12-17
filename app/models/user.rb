class User < ApplicationRecord
  has_many :entertainment_venues
  has_many :reviews
  has_many :images

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def active_for_authentication?
    super && status == "active"
  end

  def inactive_message
    if status == "notactive"
      :not_approved
    else
      super
    end
  end
end
