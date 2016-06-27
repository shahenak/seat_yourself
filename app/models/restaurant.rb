class Restaurant < ActiveRecord::Base
  has_many :reservations
  has_many :users, through: :reservations
  belongs_to :owner, class_name: "User", foreign_key: :user_id

  validates :name, :address, :phone, :capacity, presence: true


def seats_remaining(time)
  100 - reservations.where(time: time).sum(:size)
end


end
