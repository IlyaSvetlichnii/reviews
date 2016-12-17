class User < ApplicationRecord
  has_many :entertainment_venues
  has_many :reviews
  has_many :images

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
