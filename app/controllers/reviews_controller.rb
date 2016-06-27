class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    if @review.save
      flash[:notice] = "Review was successfully created."
      redirect_to restaurants_url
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


end
