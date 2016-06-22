class Restaurant < ActiveRecord::Base
  has_many :reservations
  has_many :users, through: :reservations
  # belongs to owner 
end