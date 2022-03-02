class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @user = User.find(params[:chef_id])
  end

  def create
    @review = Review.new(review_params)
    @review.reviewee = User.find(params[:chef_id])
    @review.reviewer = current_user
    if @review.save
      redirect_to chef_path(@user)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment, :reviewer_id, :reviewee_id)
  end
end
