class User < ActiveRecord::Base
  has_many :reservations
  has_many :reserved_restaurants, through: :reservations, source: :restaurant

  has_many :owned_restaurants, class_name: "Restaurant"

  has_many :reviews
  has_many :reviewed_restaunrants, through: :reviews, source: :restaurant

  has_secure_password

  validates :name, :email, :password, presence: true

end
