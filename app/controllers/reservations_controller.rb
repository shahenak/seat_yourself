class ReservationsController < ApplicationController


def new
  @reservation = Reservation.new
end

def create
  @reservation = @restaurant.reservations.build(reservation_params)
  if @reservation.save
    flash[:notice] = "Reservation was successfully created."
    redirect_to reservations_path
  else
    flash[:alert] = "Reservation was not successfully created."
    render :new
  end
end

def show
  @reservations = Reservation.all
end

def delete
  @reservation = Reservation.find(params[:id])
  @reservation.destroy
  redirect_to reservations_path
end

def edit
  @reservation = Reservation.find(params[:id])
end

def update
  @reservation = Reservation.find(params[:id])
  if @reservation.update_attributes(reservation_params)
    flash[:notice] = "The reservation has been updated."
    redirect_to reservations_path
  else
    flash[:alert] = "The reservation was not updated successfully"
    render :edit
  end
end

private
def reservation_params
  params.require(:reservation).permit(:time, :size, :restaurant_id, :user_id)
end

end
