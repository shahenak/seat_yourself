class ReservationsController < ApplicationController
before_action :ensure_logged_in, only: [:destroy, :create, :update]
before_action :load_restaurant
before_action :find_reservation, only: [:show, :edit, :update, :destroy]

def show
end

def destroy
  @reservation.destroy
  redirect_to restaurant_path(@reservation.restaurant_id)
end

def edit
end

def create
  @reservation = @restaurant.reservations.build(reservation_params)
  @reservation.user = current_user
  if @reservation.save
    flash[:notice] = "Reservation was successfully created."
    redirect_to restaurant_path(@restaurant.id)
  else
    flash[:alert] = "Reservation was not successfully created."
    render 'restaurants/show'
  end
end


def update
  if @reservation.update_attributes(reservation_params)
    flash[:notice] = "The reservation has been updated."
    redirect_to user_path
  else
    flash[:alert] = "The reservation was not updated successfully"
    render :edit
  end
end

private
def reservation_params
  params.require(:reservation).permit(:time, :size, :restaurant_id, :user_id)
end

def load_restaurant
  @restaurant = Restaurant.find(params[:restaurant_id])
end

def find_reservation
  @reservation = Reservation.find(params[:id])
end

end
