class Reservation < ActiveRecord::Base
  belongs_to :restaurant
  belongs_to :user

  # validate :seats_taken
  #validates_inclusion_of :size, in: 0..100
  # validates size, :inclusion => { :in => r, :min => 1, :max => 10} }
  # lambda { |foo| foo.allowed_types }
  #validates_inclusion_of :size, in: lambda { |reservation| 1..reservation.restaurant.capacity }
  validates_inclusion_of :size, in: lambda { |reservation| 1..reservation.restaurant.seats_remaining }

  validates :time, :size, presence: true

def seats_taken
  var = @reservations.select{|element| element[:restaurant_id] == params[:restaurant_id] && element[:time] == params[:time]}
  var.map(&:size).reduce(:+)
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
