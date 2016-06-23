class User < ActiveRecord::Base
  has_many :reservations
  has_many :reserved_restaurants, through: :reservations, source: :restaurant
  has_many :owned_restaurants, class_name: "Restaurant"

  has_secure_password

end
