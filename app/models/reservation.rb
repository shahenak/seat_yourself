class Reservation < ActiveRecord::Base
  belongs_to :restaurant
  belongs_to :user

  # validate :seats_taken
  #validates_inclusion_of :size, in: 0..100
  # validates size, :inclusion => { :in => r, :min => 1, :max => 10} }
  # lambda { |foo| foo.allowed_types }
  #validates_inclusion_of :size, in: lambda { |reservation| 1..reservation.restaurant.capacity }
  validates :time, :size, presence: true
  validate :restaurant_has_space

  def restaurant_has_space
    if self.size.between?(1,restaurant.seats_remaining(time))
    else
      errors.add(:size, "There is not enough space in the restaurant.")
    end
  end


# def seats_taken
#   var = @reservations.select{|element| element[:restaurant_id] == params[:restaurant_id] && element[:time] == params[:time]}
#   var.map(&:size).reduce(:+)
# end


# def  seats_taken
#   if size > 10
#     errors.add(:size)
#   end
# end

end
