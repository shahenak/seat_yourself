class OwnersController < ApplicationController
  def new
    @owner = Owner.new
  end

  def show
    @owner = Owner.find(params[:id])
  end

  def edit
  end

  def create
    @owner = Owner.new(owner_params)
    if @owner.save
      redirect_to restaurants_url, notice: "Signed Up!"
    else
      render "new"
    end
  end

  def destroy
    @owner = Owner.find(params[:id])
  end

  def update
    @owner = Owner.find(params[:id])
    if @owner.update_attributes(owner_params)
      flash[:notice] = "Your information has been updated."
      redirect_to restaurants_url
    else
      flash[:alert] = "Your information was not updated."
      render :edit
    end
  end

  private
    def user_params
      params.require(:owner).permit(:restaurant_name, :name, :phone, :email, :password, :password_confirmation)
    end
end
