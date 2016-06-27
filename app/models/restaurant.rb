class Restaurant < ActiveRecord::Base
  has_many :reservations
  has_many :users, through: :reservations
  belongs_to :owner, class_name: "User", foreign_key: :user_id

  has_many :reviews
  has_many :users, through: :reviews

  validates :name, :address, :phone, :capacity, presence: true


def seats_remaining
  100 - reservations.sum(:size)
end


end
