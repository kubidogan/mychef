class ChefsController < ApplicationController
  #Refer to User model NOT chefs

  def index
    # @users = User.where(type: 'Chef').reverse
    if params[:query].present?
      @users = User.where(typeofuser: true).and(User.where("name ILIKE ?", "%#{params[:query]}%"))
    else
      @users = User.where(typeofuser: true).reverse
    end
  end

  def show
    @user = User.find(params[:id])
    # @events = Event.all
    # @reviews = Review.all
  end
end
