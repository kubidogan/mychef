class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.reviewee = current_user
    @review.reviewer = User.find(params[:user_id])
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
