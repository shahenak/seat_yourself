class User < ActiveRecord::Base
  has_many :reservations
  has_many :restaurants, through: :reservations
  # owner has resturants 
end
