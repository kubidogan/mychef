class ChefsController < ApplicationController
  #Refer to User model NOT chefs
  before_action :set_user, only: [:follow, :unfollow]

  def index
    # @users = User.where(type: 'Chef').reverse
    if params[:query].present?
      @users = User.where(typeofuser: true).and(User.where("name ILIKE ?", "%#{params[:query]}%"))
    else
      @users = User.where(typeofuser: true).reverse
    end
  end

  def follow
    if current_user.follow(@user.id)
      respond_to do |format|
        format.html { redirect_to chef_path }
        format.js
      end
    end
  end

  def unfollow
    if current_user.unfollow(@user.id)
      respond_to do |format|
        format.html { redirect_to root_path }
        format.js { render action: :follow }
      end
    end
  end

  def show
    @user = User.find(params[:id])
    @booking = Booking.new
    # @events = Event.all
    # @reviews = Review.all
  end

private

  def set_user
    @user = User.find(params[:id])
  end
end
