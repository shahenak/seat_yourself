class Reservation < ActiveRecord::Base
  belongs_to :restaurant
  belongs_to :user

def seats_taken
  var = @reservations.select{|element| element[:restaurant_id] == params[:restaurant_id] && element[:time] == params[:time]}
  var.map(&:size).reduce(:+)
end

def seats_remaining
  100 - seats_taken
end

end
