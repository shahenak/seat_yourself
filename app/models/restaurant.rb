class Restaurant < ActiveRecord::Base
  has_many :reservations
  has_many :users, through: :reservations
  belongs_to :owner, class_name: "User", foreign_key: :user_id

  has_many :reviews
  has_many :users, through: :reviews

  validates :name, :address, :phone, :capacity, presence: true
  geocoded_by :address
  after_validation :geocode

  def seats_remaining(time)
    100 - reservations.where(time: time).sum(:size)
  end

  def display_distance_to(other_restaurant)
    self.distance_to(other_restaurant, :km).round(3)
  end

end
