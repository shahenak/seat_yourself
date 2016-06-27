class ReviewsController < ApplicationController
  before_action :ensure_logged_in, only: [:destroy, :create, :update]
  before_action :load_restaurant
  before_action :find_reservation, only: [:show, :edit, :update, :destroy]


  def new
    @review = Review.new
  end

  def create
    @review = @restaurant.reviews.build(review_params)
    @review.user = current_user
    if @review.save
      flash[:notice] = "Review was successfully created."
      redirect_to restaurant_path(@restaurant.id)
    else
      flash[:alert] = "Review was not created."
      render :new
    end
  end



  def destroy
  end

  private

  def review_params
    params.require(:review).permit(:comment)
  end

  def load_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def find_review
    @reservation = Reservation.find(params[:id])
  end

end
