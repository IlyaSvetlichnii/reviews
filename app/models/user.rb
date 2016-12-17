class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :entertainment_venues, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :images, dependent: :destroy

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  ratyrate_rater

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
