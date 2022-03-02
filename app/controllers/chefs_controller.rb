class ChefsController < ApplicationController
  #Refer to User model NOT chefs

  def index
    # @users = User.where(type: 'Chef').reverse
    if params[:query].present?
      @users = User.where(typeofuser: 'Chef').and(User.where(name: params[:query]))
    else
      @users = User.where(typeofuser: 'Chef').reverse
    end
  end

  def show
    @user = User.find(params[:id])
  end
end
