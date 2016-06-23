class ReservationsController < ApplicationController


def new
  @reservation = Reservation.new
end

def create
  @reservation = Reservation.new(reservation_params)
  if @reservation.save
    flash[:notice] = "Reservation was successfully created."
    redirect_to reservations_path
  else
    flash[:alert] = "Reservation was not successfully created."
    render :new
  end
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
