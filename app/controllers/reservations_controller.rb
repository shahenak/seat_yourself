class ReservationsController < ApplicationController


def new
  @reservation = Reservation.new
end

def create
  @reservation = Reservation.new(reservation_params)
end

def show
end

def delete
end

def edit
end

def update
end

private
def reservation_params
  params.require(:reservation).permit(:time, :size, :restaurant_id, :user_id)
end

end
