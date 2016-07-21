class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end


    def show
      @restaurant = Restaurant.find(params[:id])
      @reservation = @restaurant.reservations.build
      @review = @restaurant.reviews.build
      @nearby_restaurants = @restaurant.nearbys
    end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.owner = current_user
    if @restaurant.save
      flash[:notice] = "Restaurant was successfully created."
      redirect_to restaurants_path
    else
      flash[:alert] = "Restaurant was not created."
      render :new
    end
  end

  def edit
    @restaurant  = Restaurant.find(params[:id])
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    if @restaurant.update_attributes(restaurant_params)
      flash[:notice] = "Restaurant was successfully updated."
      redirect_to restaurant_path(@restaurant)
    else
      flash[:alert] = "Restaurant not successfully updated."
      render :edit
    end
  end


  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    redirect_to restaurants_path
  end

  private
  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone, :capacity, :user_id)
  end
end
